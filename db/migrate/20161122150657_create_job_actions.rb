class CreateJobActions < ActiveRecord::Migration[5.0]
  def change
    create_table :job_actions do |t|

      t.timestamps
    end
  end
end
