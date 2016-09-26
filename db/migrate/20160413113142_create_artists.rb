class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name, null: false, default: ""
      t.date :chosen_date, null: false
      t.text :description, null: false, default: ""
      t.string :website, null: false, default: ""
      t.string :facebook, null: false, default: ""
      t.string :twitter, null: false, default: ""
      t.string :spotify, null: false, default: ""
      t.string :videos, array: true, default: []
      t.has_attached_file :avatar
      t.has_attached_file :photo


      t.timestamps null: false
    end
  end
end
