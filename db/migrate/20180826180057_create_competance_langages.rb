class CreateCompetanceLangages < ActiveRecord::Migration[5.2]
  def change
    create_table :competance_langages do |t|
      t.string :langage
      t.string :level

      t.timestamps
    end
  end
end
