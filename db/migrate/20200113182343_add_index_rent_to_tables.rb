class AddIndexRentToTables < ActiveRecord::Migration[5.2]
  def change
    add_reference(:users, :rent, foreign_key: true)
    add_reference(:books, :rent, foreign_key: true)
    add_column(:books, :quantity, :integer)
  end
end
