class AddUserRefToCompetanceSgbd < ActiveRecord::Migration[5.2]
  def change
    add_reference :competance_sgbds, :user, foreign_key: true
  end
end
