class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2        # восемь цифр в значимой части и две цифры после десятичного знака.

      t.timestamps
    end
  end
end
