class Problem < ActiveRecord::Base
  attr_accessible :name, :description, :category_id
  
  has_many :solutions
end
