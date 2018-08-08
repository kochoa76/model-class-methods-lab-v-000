class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    self.boats.map do |boat|
      boat.classification.name == "catamaran"
  end
end 


end
