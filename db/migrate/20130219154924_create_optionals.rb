class CreateOptionals < ActiveRecord::Migration
  def change
    create_table :optionals do |t|
      t.integer :resource_id
      t.text :value

      t.timestamps
    end
  end
end
