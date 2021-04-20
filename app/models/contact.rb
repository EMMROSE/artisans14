class Contact < ApplicationRecord
  validates :message, presence: true
  validates :name, presence: true
  validates :email,
      :presence => :true,
      :format => {
        :with => /\S+@\S+\.\S+/i,
        :message => "le format de l'adresse e-mail doit être correct."
      }
  validates :phone, presence: true
end
