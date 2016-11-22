class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.string :job_description
      t.string :link
      t.belongs_to :company
      t.belongs_to :contact
      t.string :status
      t.belongs_to :user
      t.integer :referrer_id

      t.timestamps
    end
  end
end
