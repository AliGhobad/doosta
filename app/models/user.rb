class User < ApplicationRecord
	belongs_to :userlog
	has_many :events
end
