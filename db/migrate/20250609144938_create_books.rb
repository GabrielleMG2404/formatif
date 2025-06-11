class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :titre
      t.date :date_de_sortie
      t.string :author_id
      t.string :pages
      t.text :genre_id
      t.string :editor_id 

      t.timestamps
    end
  end
end
