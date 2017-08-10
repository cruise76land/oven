class CreateEmails < ActiveRecord::Migration[5.1]
  	def up
    	create_table :emails do |t|
    		t.string "email_id", :limit => 30, :null => false
	      	t.timestamps
	    end
    end

    def down
    	drop_table :emails
  	end
end