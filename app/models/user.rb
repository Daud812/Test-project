class User < ApplicationRecord
  has_many :creator_bugs,  class_name: 'Bug',foreign_key: "creator_id" 
  has_many :developer_bugs, class_name: 'Bug', foreign_key: "developer_id"

  has_many :companies, dependent: :destroy
  has_many :projects, through: :companies
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable,:trackable

  enum user_type: {manager: 0, qa: 1, developer: 2}
  scope :developer, -> { where(user_type: "developer")}

end
