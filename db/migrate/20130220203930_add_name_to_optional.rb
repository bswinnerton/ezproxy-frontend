class AddNameToOptional < ActiveRecord::Migration
  def change
    add_column :optionals, :name, :string
  end
end
