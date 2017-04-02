class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD
  has_many :pins
  has_many :startups
  has_many :person
  
  belongs_to :user
=======
>>>>>>> b9d9ba8724cb59d93bc1e30b3b667ae0d85969b7
end
