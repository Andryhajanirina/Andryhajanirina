class CreateCompetanceLangues < ActiveRecord::Migration[5.2]
  def change
    create_table :competance_langues do |t|
      t.string :langue
      t.string :level

      t.timestamps
    end
  end
end
