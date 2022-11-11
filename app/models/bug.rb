class Bug < ApplicationRecord
    belongs_to :creator,class_name: "User"
    belongs_to :developer,class_name: "User"

    belongs_to :project
    validates :titel, presence: true, uniqueness: { scope: :project_id }
enum bugtype: {bug: 0 ,feature: 1}
enum status: {new: 0 ,started: 1, resolved: 2, completed: 3},_prefix: :status
end
