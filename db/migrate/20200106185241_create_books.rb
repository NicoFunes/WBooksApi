class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :Title, null: false, default: ''
      t.string :Author, null: false, default: ''
      t.string :Image, null: false, default: ''
      t.string :Genre, null: false, default: ''
      t.string :Publisher, null: false, default: ''
      t.string :Year, null: false, default: ''
    end
  end
end
