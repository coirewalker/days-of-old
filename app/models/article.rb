class Article < ActiveRecord::Base
	belongs to :user
	has_many :comments
end
