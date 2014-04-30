class Everything < ActiveRecord::Base
	belongs_to :guest

	validates :guest_id, presence: true
end
