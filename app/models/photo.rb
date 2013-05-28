class Photo < ActiveRecord::Base
  belongs_to :business
  attr_accessible :name, :image
  has_attached_file :image, 
  :styles => {
    :mini => "50x50#",
    :thumb => "150x150#",
    :small => "300x300",
    :large => "600x600"
  }
  
end
