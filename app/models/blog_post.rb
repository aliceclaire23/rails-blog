class BlogPost < ApplicationRecord
  belongs_to(:author)
  validates(:title, :content, presence: true)

  scope :published, -> { where("published_at < '#{Time.now}'") }

  def time_since_published
    old = published_at
    s = (Time.now - old).round
    m = s/60
    h = m/60
    d = h/24
    w = d/7
    y = w/52.17

    if s < 60
      "#{s.round} seconds"
    elsif m < 60
      "#{m.round} minutes"
    elsif h < 24
      "#{h.round} hours"
    elsif d < 7
      "#{d.round} days"
    elsif w < 52.17
      "#{w.round} weeks"
    else
      "#{y.round} years"
    end
  end
end
