class Objective < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    what      :string
    is        :string
    timestamps
  end
  
  belongs_to :owner, :class_name => "User", :creator => true
  belongs_to :assertion, :class_name => "Assertion"
  
  def name
    return "" + what + " " + is
  end


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
