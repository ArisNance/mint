class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 
  has_many :pins
  has_many :startups
  has_many :person
  has_many :poems
  has_many :stories
  has_many :events
  
 
  
end
