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
  
  belongs_to :owner, :class_name => "User", :creator => true
  belongs_to :business_process

  # --- Permissions --- #

  def create_permitted?
    acting_user.signed_up?
  end

  def update_permitted?
    acting_user.administrator? || owner_is?(acting_user)
  end

  def destroy_permitted?
    acting_user.administrator? || owner_is?(acting_user)
  end

  def view_permitted?(field)
    true
  end

end
