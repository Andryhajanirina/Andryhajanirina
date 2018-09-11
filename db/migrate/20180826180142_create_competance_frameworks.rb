class CreateCompetanceFrameworks < ActiveRecord::Migration[5.2]
  def change
    create_table :competance_frameworks do |t|
      t.string :framework
      t.string :level

      t.timestamps
    end
  end
end
