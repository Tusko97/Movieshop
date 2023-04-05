class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.string :genre
      t.string :image_url
      t.string :actor

      t.timestamps
    end
  end
end
