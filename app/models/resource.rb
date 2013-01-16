class Resource < ActiveRecord::Base
  attr_accessible :domain, :host, :title, :url
end
