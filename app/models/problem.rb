class Problem < ActiveRecord::Base
  attr_accessible :name, :description
  
  has_many :solutions
end
