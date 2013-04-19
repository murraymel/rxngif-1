class CreatePictures < ActiveRecord::Migration
  def up
    create_table :pictures do |t|
      t.string :source
      t.text :caption
      t.boolean :favorite
    end
  end

  def down
  end
end
