class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :business
      t.string :name

      t.timestamps
    end
    add_index :photos, :business_id
  end
end
