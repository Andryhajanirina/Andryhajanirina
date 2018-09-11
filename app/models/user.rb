class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	
	has_many :experiences
	has_many :formations
	has_many :competance_langues
	has_many :competance_langages
	has_many :competance_frameworks
	has_many :competance_sgbds
	has_many :competance_cms
end
