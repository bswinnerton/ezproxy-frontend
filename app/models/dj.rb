class Dj < ActiveRecord::Base
  attr_accessible :dj, :resource_id
  belongs_to :resource
end
