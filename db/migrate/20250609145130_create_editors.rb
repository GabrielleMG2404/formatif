class CreateEditors < ActiveRecord::Migration[8.0]
  def change
    create_table :editors do |t|
      t.string :nom

      t.timestamps
    end
  end
end
