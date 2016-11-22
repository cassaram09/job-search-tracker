# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@matt = User.create(name: "Matt", username: "cassaram09", password: "hello123", email: "matt@matt.com")

@joe = Contact.create(name: "Joe Pisciotta", email: "joe@redhat.com", job_title: "Platform Consultant", job_description: "does OS and platfomr things",
                connection_degree: "First", connection_strength: "Moderate", user: @matt )

@redhat = Company.create(name: "Redhat", industry: "Cloud Hosting", size: "Large", website: "http://www.redhat.com", user: @matt, contacts: [@joe])

@web_developer = Job.create(job_title: "Web Developer", job_description: "front end web developer", company: @redhat, referrer: @joe, user: @matt)

@meet = JobAction.create()



