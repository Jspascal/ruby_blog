class AddForeignKey < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :posts, :users, column: :author
  end
end
