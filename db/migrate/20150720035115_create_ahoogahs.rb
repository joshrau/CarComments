class CreateAhoogahs < ActiveRecord::Migration
  def change
    create_table :ahoogahs do |t|
      t.string :License
      t.string :State
      t.string :Comment
      t.string :Tag1
      t.string :Tag2
      t.string :Tag3

      t.timestamps null: false
    end
  end
end
