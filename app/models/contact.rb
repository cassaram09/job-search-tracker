class Contact < ApplicationRecord
  belongs_to :company
  belongs_to :user

  enum connection_degree: ["First", "Second", "Third"]
  enum connection_strength: ['Weak', 'Moderate', 'Strong']
end
