class Fortune < ActiveRecord::Base
  #mount_uploader :cover, CoverUploader
  attr_accessible :avatar , :source, :quotation, :author, :isbn, :price_pln, :title, :tag_list, :crop_x, :crop_y, :crop_w, :crop_h


  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
