class CreateJobs < ActiveRecord::Migration
  def up
    create_table :jobs do |t|
    	t.string :title
    	t.text :description
      t.timestamps null: false
    end
  end
    def down
    	drop_table :jobs
    end
end
