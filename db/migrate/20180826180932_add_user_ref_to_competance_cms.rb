class AddUserRefToCompetanceCms < ActiveRecord::Migration[5.2]
  def change
    add_reference :competance_cms, :user, foreign_key: true
  end
end
