class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  validates :username, :email, presence: true
  
  before_validation :ensure_username_has_a_value
  
  has_many :meals, :foreign_key => :user_id
  
  protected
  def ensure_username_has_a_value
    if username.nil?
      self.username = email.split("@").first unless email.blank?
    end 
  end
end
