class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :user, :admin
  end
end
