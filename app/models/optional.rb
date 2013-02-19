class Optional < ActiveRecord::Base
  attr_accessible :resource_id, :value
  belongs_to :resource
end
