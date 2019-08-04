class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tasks
  has_many :projects, through: :tasks

  Roles = [ :admin , :default ]

  def is?( requested_role )
    self.role == requested_role.to_s
  end


end
