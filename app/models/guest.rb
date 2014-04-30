class Guest < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates :first_name, presence: true

  validates :last_name, presence:true

  validates :email, presence:true,
                    uniqueness: true

  has_one :everything

  def full_name
  	first_name + " " + last_name	
  end
end
