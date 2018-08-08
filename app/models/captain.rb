class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    includes(:boats :classifications).where('classifications.name = ?', 'catamaran').references(:classifications)
  end
end


end
