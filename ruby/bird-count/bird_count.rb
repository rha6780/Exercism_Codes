class BirdCount
  def self.last_week
    arr = [0,2,5,3,7,8,4]
  end

  def initialize(birds_per_day)
    @days = birds_per_day 
  end

  def yesterday
    @days[-2]
  end

  def total
    sum = 0
    @days.each do |day|
      sum += day
    end
    sum
  end

  def busy_days
    count = 0
    @days.each do |day|
      if day >= 5
        count += 1
      end
    end
    count
  end

  def day_without_birds?
    @days.any? { |day| day == 0 }
  end
end
