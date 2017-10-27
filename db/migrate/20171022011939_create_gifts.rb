class CreateGifts < ActiveRecord::Migration[5.1]
  def change
    create_table :gifts do |t|
      t.string :name
      t.string :comment
      t.string :giver
      t.integer :wanter
      t.boolean :given
      t.string :giveComment
      t.string :link

      t.timestamps
    end
  end
end
