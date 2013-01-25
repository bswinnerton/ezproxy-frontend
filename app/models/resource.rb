class Resource < ActiveRecord::Base
  attr_accessible :domain, :host, :title, :url, :is_deleted
  default_scope where(:is_deleted => false)
end
