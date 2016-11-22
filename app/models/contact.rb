class Contact < ApplicationRecord
  belongs_to :company
  belongs_to :user
  has_many :referred_jobs, class_name: "Job", foreign_key: 'referrer_id'

  enum connection_degree: ["First", "Second", "Third"]
  enum connection_strength: ['Weak', 'Moderate', 'Strong']
end
