class ProcessStep < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name        :string
    supplier    :string
    input       :string
    description :string
    output      :string
    customer    :string
    timestamps
  end
  attr_accessible :name, :supplier, :input, :description, :output, :customer
  
  belongs_to :business_process

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
