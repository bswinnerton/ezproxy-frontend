class CreateDjs < ActiveRecord::Migration
  def change
    create_table :djs do |t|
      t.integer :resource_id
      t.string :dj

      t.timestamps
    end
    add_index :djs, :resource_id
  end
end
