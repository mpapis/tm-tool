class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :number
      t.string :location
      t.string :email
      t.string :site
      t.string :telephone

      t.timestamps null: false
    end
  end
end
