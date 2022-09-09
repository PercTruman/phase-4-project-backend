class Teacher < ApplicationRecord
    has_secure_password 
    has_many :assignments
    has_many :students, through: :assignments

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true, uniqueness: :true, format: {with: /(.+)@(.+)/, message: "Email invalid"  }
           
    validates :password, presence: true,  length: { minimum: 4, maximum: 10}
end
