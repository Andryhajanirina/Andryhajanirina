class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :intitule
      t.string :societe
      t.datetime :debut
      t.datetime :fin
      t.text :description

      t.timestamps
    end
  end
end
