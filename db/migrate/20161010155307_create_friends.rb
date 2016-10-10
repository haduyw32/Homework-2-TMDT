class CreateFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :friends do |t|
      t.string :ower
      t.string :friend
      t.timestamps
    end
  end
end
