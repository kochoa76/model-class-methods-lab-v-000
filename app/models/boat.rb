class Boat < ActiveRecord::Base
  belongs_to  :captain
  has_many    :boat_classifications
  has_many    :classifications, through: :boat_classifications

  def self.first_five
    b = Boat.find_or_create(created_at: created_at)
    return b.created_at[0,5]
  end
end
