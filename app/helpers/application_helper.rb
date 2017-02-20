module ApplicationHelper
  def display_stars(score)
    stars = ''
    score = (score || 0) / 2.0
    remaining = 5 - score.floor
    score.floor.times { stars += icon('star') }
    remainder = score - score.floor
    if remainder > 0.24
      stars += icon('star-half-o')
      remaining -= 1
    end
    remaining.floor.times { stars += icon('star-o') }

    stars
  end
end
