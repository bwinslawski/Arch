class Fortune < ActiveRecord::Base
  attr_accessible :avatar , :source, :quotation 
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
