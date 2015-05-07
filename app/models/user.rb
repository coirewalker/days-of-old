class User < ActiveRecord::Base
	has_many :articles
	has_many :comments
	validates_uniqueness_of :email
	validates_presence_of :name, :email, :password,
end
