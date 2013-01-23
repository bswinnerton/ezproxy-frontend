class CreateDjs < ActiveRecord::Migration
  def change
    create_table :djs do |t|
      t.integer :resource_id
      t.string :dj

      t.timestamps
    end
  end
end
