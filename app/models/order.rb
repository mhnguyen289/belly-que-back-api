class Order < ApplicationRecord
	has_many :items

	validates_presence_of :phone_number, :name
end
