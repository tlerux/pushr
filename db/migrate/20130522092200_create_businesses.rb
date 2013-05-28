class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :email
      t.text :about
      t.string :url

      t.timestamps
    end
  end
end
