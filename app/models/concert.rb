class Concert < ApplicationRecord
	validates :name, presence: {message: "obligatoire"}, length: { maximum: 30 }
	validates :address, presence: {message: "obligatoire"}
	validates :tickets_available, presence: {message: "obligatoire"}
	validates :concert_hall, presence: {message: "obligatoire"}
	validates :description, length: {maximum: 255}
	validates :price, presence: {message: "obligatoire"}
end
