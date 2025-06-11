class CreateAuthors < ActiveRecord::Migration[8.0]
  def change
    create_table :authors do |t|
      t.string :nom
      t.date :date_naissance
      t.string :pays

      t.timestamps
    end
  end
end
