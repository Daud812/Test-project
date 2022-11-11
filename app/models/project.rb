class Project < ApplicationRecord
    has_many :bugs
    has_many :companies, dependent: :destroy
    has_many :users, through: :companies
end
