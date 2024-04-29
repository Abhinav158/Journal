class Entry < ApplicationRecord
    validates :weight, presence: true
    validates :highlight, presence: true, length: { minimum: 5 }
end
