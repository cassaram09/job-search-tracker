class CreateJobActions < ActiveRecord::Migration[5.0]
  def change
    create_table :job_actions do |t|
      t.integer :action
      t.belongs_to :company
      t.belongs_to :contact
      t.belongs_to :user
      t.belongs_to :job

      t.timestamps
    end
  end
end
