class Business < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :category
  geocoded_by :address
  
  attr_accessible :about, :address, :email, :latitude, :longitude, :name, :phone, :url,:zoom, :category_id
  
  def distance(latitude,longitude)
    
    ((self.distance_from([latitude.to_f,longitude.to_f],:km )*100).to_i).to_f/100 
    
  end
end
