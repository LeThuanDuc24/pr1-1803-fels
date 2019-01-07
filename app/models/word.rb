class Word < ApplicationRecord
  has_many :lesson_words
  has_many :answers
  belongs_to :category

  scope :learned, -> { where(learned: true) }
  scope :not_learned, -> { where(learned: false) }
  scope :category_id, ->(category_id) {
    where category_id: category_id if category_id.present?
  }
end
