class AddZoomToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :zoom, :integer
  end
end
