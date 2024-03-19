class ChangePhoneToString < ActiveRecord::Migration[7.1]
  def change
    change_column :phones, :phone_number, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
