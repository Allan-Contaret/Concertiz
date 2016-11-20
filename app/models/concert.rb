class Concert < ApplicationRecord
	validates :name, presence: {message: "obligatoire"}, length: { maximum: 30 }
	validates :address, presence: {message: "obligatoire"}
end
