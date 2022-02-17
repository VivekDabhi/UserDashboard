class CreateBooksCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :books_categories do |t|
      t.integer :book_id
      t.integer :category_id

      t.timestamps
    end
  end
end
