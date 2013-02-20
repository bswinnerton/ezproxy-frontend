class Optional < ActiveRecord::Base
  attr_accessible :resource_id, :name, :value
  belongs_to :resource
end
