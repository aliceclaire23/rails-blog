class Author < ApplicationRecord
  has_many(:blog_posts)
  validates(:name, presence: true)
  validates(
    :email,
    format: { with: URI::MailTo::EMAIL_REGEXP },
    presence: true,
    uniqueness: true
  )
end
