class AddAppidAndPlaytime2weeks < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :appid, :integer
    add_column :games, :playtime_2weeks, :string
  end
end
