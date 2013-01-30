class Options < ActiveRecord::Base
  attr_accessible :option, :resource_id
  has_one :resource
end
