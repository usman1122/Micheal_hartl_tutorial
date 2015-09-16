class User < ActiveRecord::Base
	
	 validates :name,  presence: true, length: { maximum: 42 }

# email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 42 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
                   before_save {self.email=email.downcase}  #email call back before save
        

# password
     has_secure_password
     validates :password, presence: true, length: {minimum: 6}


end
