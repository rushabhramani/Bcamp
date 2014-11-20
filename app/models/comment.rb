class Comment < ActiveRecord::Base
	belongs_to :user, :discussion
end
