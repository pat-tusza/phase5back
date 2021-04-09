class CreateWatcheds < ActiveRecord::Migration[6.1]
  def change
    create_table :watcheds do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :member, null: false, foreign_key: true
      t.string :comments

      t.timestamps
    end
  end
end
