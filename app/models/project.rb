class Project < ActiveRecord::Base
	has_many :discussions
	belongs_to :user
end
