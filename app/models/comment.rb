class Comment < ApplicationRecord
  belongs_to :article
  validates :body, presence: true

  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, :allow_blank => true
end
