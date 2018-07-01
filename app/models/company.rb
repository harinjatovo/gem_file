class Company < ApplicationRecord
    has_many :users
    has_and_belongs_to_many :roles
end
