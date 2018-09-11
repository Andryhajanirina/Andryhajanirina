class CreateFormations < ActiveRecord::Migration[5.2]
  def change
    create_table :formations do |t|
      t.string :intitule
      t.string :diplome
      t.string :etablissement
      t.datetime :debut
      t.datetime :fin
      t.text :description

      t.timestamps
    end
  end
end
