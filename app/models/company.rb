class Company < ApplicationRecord
  has_many :contacts
  has_many :jobs
  belongs_to :user

  enum size: ["Small", "Medium", "Large"]
end
