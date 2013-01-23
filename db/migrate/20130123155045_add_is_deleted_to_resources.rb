class AddIsDeletedToResources < ActiveRecord::Migration
  def change
    add_column :resources, :is_deleted, :boolean, :default => 0
  end
end
