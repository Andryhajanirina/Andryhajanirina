class CreateCompetanceCms < ActiveRecord::Migration[5.2]
  def change
    create_table :competance_cms do |t|
      t.string :cms
      t.string :level

      t.timestamps
    end
  end
end
