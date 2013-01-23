class Option < ActiveRecord::Base
  attr_accessible :option, :resource_id
  belongs_to :resource
end
