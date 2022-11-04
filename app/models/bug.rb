class Bug < ApplicationRecord
enum bugtype: {bug: 0 ,feature: 1}
enum status: {new: 0 ,started: 1, resolved: 2, completed: 3},_prefix: :status
end
