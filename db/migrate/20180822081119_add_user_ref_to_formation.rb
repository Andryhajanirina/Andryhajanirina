class AddUserRefToFormation < ActiveRecord::Migration[5.2]
  def change
    add_reference :formations, :user, foreign_key: true
  end
end
