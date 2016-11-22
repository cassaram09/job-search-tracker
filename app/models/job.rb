class Job < ApplicationRecord
  belongs_to :company
  belongs_to :referrer, class_name: "Contact"

  enum status: ['Send Resume and Cover Letter',
      'Initial Response/Contact from Company',
      'First Interview Scheduled (phone)',
      'First Interview Scheduled (in-person)',
      'First Interview Completed (phone)',
      'First Interview Completed (in-person)',
      'Second Interview Scheduled (technical)',
      'Second Interview Scheduled (in-person)',
      'Second Interview Completed (technical)',
      'Second Interview Completed (in-person)',
      'Third Interview Scheduled (technical)',
      'Third Interview Scheduled (in-person)',
      'Third Interview Completed (technical)',
      'Third Interview Completed (in-person)',
      'Code Challenge Sent from Company',
      'Code Challenge Completed and Submitted',
      'Offer Extended',
      'Rejection',
      'Offer Accepted',
      'Other']

end
