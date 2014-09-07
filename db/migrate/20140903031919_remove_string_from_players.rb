class RemoveStringFromPlayers < ActiveRecord::Migration
  def change
    change_table :players do |t|
      t.remove :string
    end
  end
end
