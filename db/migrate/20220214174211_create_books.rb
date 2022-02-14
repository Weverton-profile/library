class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :book_name
      t.string :description
      t.string :url_image
      t.integer :rating

      t.timestamps
    end
  end
end
