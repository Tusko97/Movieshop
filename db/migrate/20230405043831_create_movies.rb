class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.string :genre
      t.string :image_url
      t.string :director

      t.timestamps
    end
  end
end
