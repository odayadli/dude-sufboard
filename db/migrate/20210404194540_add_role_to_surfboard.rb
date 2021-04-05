class AddRoleToSurfboard < ActiveRecord::Migration[6.0]
  def change
    add_column :surfboards, :role, :string
  end
end
