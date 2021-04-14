class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :cid
      t.string :party
      t.string :office
      t.string :gender
      t.string :birthdate
      t.string :first_elected
      t.string :image

      t.timestamps
    end
  end
end
