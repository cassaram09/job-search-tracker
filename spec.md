# Specifications

Job Search Tracker helps job seekers track, organize, and manage their job search.

In addition to providing the basic functions of a CRM to manage relationships with 
employers and people in your network, Job Search Tracker also allows you to track
your online "portfolio activity." What does this mean?

It's not enough to just search and apply for jobs. Job seekers are expected to expand 
and leverage their network of connections to find the right job. On top of that, having
a strong, active, and consistent online presence shows that you take your profession
seriously. It also helps you from getting rusty!

  - Track your blog posts
  - Track side project work you're doing with Github (commits)
  - Connect your Twitter account to track and send tweets
  - Connect your LinkedIn account to send out status update
  - Manage potential hiring companies
  - Manage network connections 


# Models, Attributes, Behaviors, and Relationships

  # User
   - name
   - email
   - password

  # Contact
   - name
   - email
   - linkedin profile
   - twitter profile
   - website
   - belongs_to Company
   - job title
   - job description
   - enum relationship [weak, moderate, strong]
   - connection_degree [1st, 2nd, 3rd]
     - if 2nd, through who? 
   - has_many job_referrals (associated jobs as referrer)

  
  # Company
   - name
   - website
   - size [small, medium, large]
   - industry
   - has_many openings

  # Job (Job Openings)
   - job title
   - description
   - link
   - belongs_to Company
   - has_one Referrer (Contact)
   - status enum [Send Resume and Cover Letter,
      Initial Response/Contact from Company,
      First Interview Scheduled (phone),
      First Interview Scheduled (in-person),
      First Interview Completed (phone),
      First Interview Completed (in-person),
      Second Interview Scheduled (technical),
      Second Interview Scheduled (in-person),
      Second Interview Completed (technical),
      Second Interview Completed (in-person),
      Third Interview Scheduled (technical),
      Third Interview Scheduled (in-person),
      Third Interview Completed (technical),
      Third Interview Completed (in-person),
      Code Challenge Sent from Company,
      Code Challenge Completed and Submitted,
      Offer Extended,
      Rejection,
      Offer Accepted,
      Other]

  # JobAction
   - belongs_to :company
   - belongs_to :contact
   - date
   - action enum: [:networking, job application, git commits, blog post]
   - action_details
   - belongs_to :job

    # if networking, select


      [ Networking: Outreach Email,
      Networking: Coffee,
      Networking: Phone Call,
      Networking: Attended a Meet-Up or Conference,
      Networking: Attended a Hackathon]

    # if action is related to a job, we'll need to update the related job status

      [Send Resume and Cover Letter,
      Initial Response/Contact from Company,
      First Interview Scheduled (phone),
      First Interview Scheduled (in-person),
      First Interview Completed (phone),
      First Interview Completed (in-person),
      Second Interview Scheduled (technical),
      Second Interview Scheduled (in-person),
      Second Interview Completed (technical),
      Second Interview Completed (in-person),
      Third Interview Scheduled (technical),
      Third Interview Scheduled (in-person),
      Third Interview Completed (technical),
      Third Interview Completed (in-person),
      Code Challenge Sent from Company,
      Code Challenge Completed and Submitted,
      Offer Extended,
      Rejection,
      Offer Accepted,
      Other ] 

    #GitCommit
     - link to repository
     - number of commits
     - date

     # Link this with the Github API to automatically update when you make a commit and reflect on the user's profile. 

    # Blog Post
    - link to blog post
    - date
    - title

    




