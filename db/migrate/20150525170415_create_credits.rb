class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.integer :sum
      t.integer :period

      t.timestamps null: false
    end
  end
end
