class AddUserRefToCompetanceFramework < ActiveRecord::Migration[5.2]
  def change
    add_reference :competance_frameworks, :user, foreign_key: true
  end
end
