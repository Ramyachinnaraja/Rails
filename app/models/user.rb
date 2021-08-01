class User < ApplicationRecord	
	# validates :username, length: { minimum: 5 }
 #  	validates :email_id, length: { maximum: 15 }
 #  	validates :password, length: { in: 6..20 }
 validates :email_id, uniqueness: true, presence: true
end
