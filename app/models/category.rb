class Category < ActiveRecord::Base
    extend FriendlyId
	friendly_id :slug, use: [:slugged, :finders]
    has_many :posts
    has_many :tintucs
end
