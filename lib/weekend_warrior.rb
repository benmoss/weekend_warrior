module Weekend
  def weekend?
    # time.wday => Returns an integer representing the 
    # day of the week, 0..6, with Sunday == 0. 
    wday == 6 or wday == 0
  end
end

Date.instance_eval { include(Weekend) }
Time.instance_eval { include(Weekend) }

class Time
  def self.next_weekday(original_time = Time.now)
    weekdays = 1..5
    result = original_time
    result += 1.day until result > original_time && weekdays.member?(result.wday)
    result
  end
  
  def self.weekday(original_time = Time.now)
    weekdays = 1..5
    result = original_time
    result += 1.day until result >= original_time && weekdays.member?(result.wday)
    result
  end
  
  def self.previous_weekday(original_date = Time.now)
    weekdays = 1..5
    result = original_date
    result -= 1.day until result < original_date && weekdays.member?(result.wday)
    result    
  end
  
  def go_forward_by_weekdays(num_days)
    
    future = self.dup
    
    num_days.times do
      future = self.class.next_weekday(future)
    end
    
    future
  end
  
  def go_back_by_weekdays(num_days)
    
    past = self.dup
    
    num_days.times do
      past = self.class.previous_weekday(past)
    end
    
    past
  end
end

class Date
  def self.next_weekday(original_date = Date.today)
    weekdays = 1..5
    result = original_date
    result += 1 until result > original_date && weekdays.member?(result.wday)
    result
  end
  
  def self.weekday(original_date = Date.today)
    weekdays = 1..5
    result = original_date
    result += 1 until result >= original_date && weekdays.member?(result.wday)
    result
  end
  
  def self.previous_weekday(original_date = Date.today)
    weekdays = 1..5
    result = original_date
    result -= 1 until result < original_date && weekdays.member?(result.wday)
    result    
  end
  
  def go_forward_by_weekdays(num_days)
    
    future = self.dup
    
    num_days.times do
      future = self.class.next_weekday(future)
    end
    
    future
  end
  
  def go_back_by_weekdays(num_days)
    
    past = self.dup
    
    num_days.times do
      past = self.class.previous_weekday(past)
    end
    
    past
  end
end

