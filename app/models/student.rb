class Student < ApplicationRecord
    has_many :assignments
    has_many :teachers, through: :assignments
end
