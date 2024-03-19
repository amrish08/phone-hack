class AddApps < ActiveRecord::Migration[7.1]
  def change
    add_column :phones, :apps_install, :string
  end
end
