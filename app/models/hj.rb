class Hj < ActiveRecord::Base
  attr_accessible :hj, :resource_id
  belongs_to :resource
end
