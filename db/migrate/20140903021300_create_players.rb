class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :nickname, :email, :string
      t.integer :money

      t.timestamps
    end
  end
end
