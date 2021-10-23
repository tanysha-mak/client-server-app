class Document < ApplicationRecord
    belongs_to :user
    belongs_to :type
    belongs_to :departament

    has_one_attached :file

    validates_associated :user
    validates_presence_of :user
    validates :name, :deadline, presence: true
    validates_inclusion_of :status, in: [true, false]

end