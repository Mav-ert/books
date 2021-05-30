class Book < ApplicationRecord

    validates :title, presence: true, uniqueness: true
    validates_presence_of :author
    validates_uniqueness_of :title, :case_sensitive => false
end
