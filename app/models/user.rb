
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
   #devise :token_authenticatable, :confirmable,
   #evise :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
 
  # attr_accessible :title, :body

  
end
