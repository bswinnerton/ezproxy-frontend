class Resource < ActiveRecord::Base
  attr_accessible :domain, :host, :title, :url, :is_deleted, :optionals_attributes
  default_scope where(:is_deleted => false)
  has_many :optionals
  accepts_nested_attributes_for :optionals, :reject_if => :all_blank, :allow_destroy => true
end
