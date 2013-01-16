class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.string :host
      t.string :url
      t.string :domain

      t.timestamps
    end
  end
end
