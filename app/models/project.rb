class Project < ApplicationRecord
    has_many :bugs,dependent: :delete_all
end
