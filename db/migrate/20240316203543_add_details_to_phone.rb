class AddDetailsToPhone < ActiveRecord::Migration[7.1]
  def change
    add_column :phones, :phone_number, :integer
    add_column :phones, :location, :string
    add_column :phones, :message, :string
    add_column :phones, :access, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
