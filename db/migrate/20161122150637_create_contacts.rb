class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :linkedin
      t.string :twitter
      t.string :website
      t.string :job_title
      t.string :job_description
      t.integer :connection_degree
      t.integer :connection_strength
      t.belongs_to :company
      t.timestamps
    end
  end
end
