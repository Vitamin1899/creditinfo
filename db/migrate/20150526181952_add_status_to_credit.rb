class AddStatusToCredit < ActiveRecord::Migration
  def change
    add_column :credits, :status, :string, default: 'Pending'
  end
end
