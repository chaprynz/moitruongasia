class Khachhang < ActiveRecord::Base
    extend FriendlyId
	friendly_id :slug, use: [:slugged, :finders]
    
    has_attached_file :image, :styles => { :medium => "680x300>", :thumb => "170x75>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
