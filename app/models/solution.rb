class Solution < ActiveRecord::Base
  attr_accessible :name, :notes
  
  belongs_to :problem
end
