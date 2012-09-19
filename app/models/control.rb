class Control < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name      :string
    who       :string
    as        :string
    what      :string
    how       :string
    exception :string
    evidence  :string
    timestamps
  end

  belongs_to :owner, :class_name => "User", :creator => true

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
