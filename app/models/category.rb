class Category < ActiveRecord::Base
    has_many :posts
    has_many :tintuc
end
