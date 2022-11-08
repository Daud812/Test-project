class Project < ApplicationRecord
    has_many :bugs,dependent: :destroy
    has_many :companies, dependent: :destroy
    has_many :users, through: :companies
end
