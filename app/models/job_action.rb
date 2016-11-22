class JobAction < ApplicationRecord
  belongs_to :company
  belongs_to :contact
  enum action: ['networking', 'job application', 'git commits', 'blog post']
  belongs_to :job
  belongs_to :user
end
