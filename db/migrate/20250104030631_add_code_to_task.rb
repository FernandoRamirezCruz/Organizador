class AddCodeToTask < ActiveRecord::Migration[8.0]
  def change
    add_column :tasks, :code, :string
  end
end