class Books < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :book_name
      t.string :book_writer
      t.string :book_publisher
      t.string :book_description
    end
  end
end
