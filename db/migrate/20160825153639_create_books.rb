class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.string :pages
      t.string :rating

      t.timestamps null: false
    end
  end
end
