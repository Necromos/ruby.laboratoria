class CreateAnimes < ActiveRecord::Migration
  def change
    create_table :animes do |t|
      t.string :title
      t.integer :yop
      t.integer :noe

      t.timestamps
    end
  end
end
