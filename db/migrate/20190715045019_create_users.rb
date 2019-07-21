class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :family_name
      t.string :first_name
      t.string :family_name_kana
      t.string :first_name_kana
      t.integer :age
      t.string :gender
      t.integer :birthday
      t.string :job
      t.string :email
      t.integer :post_code
      t.string :address
      t.string :building
      t.integer :tell_number
      t.text :memo

      t.timestamps
    end
  end
end
