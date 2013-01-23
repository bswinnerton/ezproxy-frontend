class Resource < ActiveRecord::Base
  attr_accessible :domain, :host, :title, :url, :is_deleted
  default_scope where(:is_deleted => false)
  has_many :djs
  has_many :hjs
  has_many :options
end
