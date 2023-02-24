class BlogPost < ApplicationRecord
  belongs_to(:author)
  validates(:title, :content, presence: true)

  scope :published, -> { where("published_at < '#{Time.now}'") }


  end
end
