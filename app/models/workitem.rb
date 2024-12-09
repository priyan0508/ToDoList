class Workitem < ApplicationRecord
	validates :title, presence: true
end
