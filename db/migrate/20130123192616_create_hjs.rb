class CreateHjs < ActiveRecord::Migration
  def change
    create_table :hjs do |t|
      t.integer :resource_id
      t.string :hj

      t.timestamps
    end
    add_index :hjs, :resource_id
  end
end
