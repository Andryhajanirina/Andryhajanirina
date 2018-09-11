class AddUserRefToCompetanceLangage < ActiveRecord::Migration[5.2]
  def change
    add_reference :competance_langages, :user, foreign_key: true
  end
end
