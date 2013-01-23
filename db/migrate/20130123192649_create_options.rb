class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.integer :resource_id
      t.string :option

      t.timestamps
    end
  end
end
