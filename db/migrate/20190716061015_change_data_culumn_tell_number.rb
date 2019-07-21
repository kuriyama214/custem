class ChangeDataCulumnTellNumber < ActiveRecord::Migration[5.2]
  def change
    change_column :users,:tell_number,:string
  end
end
