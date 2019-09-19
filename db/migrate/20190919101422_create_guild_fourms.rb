class CreateGuildFourms < ActiveRecord::Migration[6.0]
  def change
    create_table :guild_fourms do |t|

      t.timestamps
    end
  end
end
