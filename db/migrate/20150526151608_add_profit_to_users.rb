class AddProfitToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profit, :integer
  end
end
