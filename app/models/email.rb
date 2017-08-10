class Email < ApplicationRecord
	validates_length_of :email_id, :maximum => 30
	validates_uniqueness_of :email_id
end
