class CreateCompetanceSgbds < ActiveRecord::Migration[5.2]
  def change
    create_table :competance_sgbds do |t|
      t.string :sgbd
      t.string :level

      t.timestamps
    end
  end
end
