class BlogPost < ApplicationRecord
  belongs_to(:author)
  validates(:title, :content, presence: true)

  scope :published, -> { where("published_at < ?", Time.zone.now) }

  before_create :set_published_at

  private

  def set_published_at
    self.published_at = Time.zone.now if published_at.blank?
  end
end
