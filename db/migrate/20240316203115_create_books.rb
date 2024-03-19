class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.text :author
      t.string :phonenumber
      t.string :number

      t.timestamps
    end
  end
end
