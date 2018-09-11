class AddUserRefToCompetanceLangue < ActiveRecord::Migration[5.2]
  def change
    add_reference :competance_langues, :user, foreign_key: true
  end
end
