class ChangeDataCulumn < ActiveRecord::Migration[5.2]
  def change
    change_column :users,:birthday,:date
  end
end
