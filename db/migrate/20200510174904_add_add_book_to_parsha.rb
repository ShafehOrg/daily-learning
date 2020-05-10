class AddAddBookToParsha < ActiveRecord::Migration[5.2]
  def change
    add_column :parshios, :book_id, :integer
  end
end
