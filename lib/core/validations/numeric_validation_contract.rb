module NumericValidationContract
  include Core

  def num_is_greather_than(value, comparer, key, message = nil)
    if value <= comparer
      add_notification key, message || produce_message(:num_is_greather_than, comparer)
    end
    self
  end

  def num_is_greater_or_equals_than(value, comparer, message = nil)
    if value < comparer
      add_notification key, message || produce_message(:num_is_greather_or_equals_than, comparer)
    end
    self
  end

  def num_is_lower_than(value, comparer, message = nil)
    if value >= comparer
      add_notification key, message || produce_message(:num_is_lower_than, comparer)
    end
  end

  def num_is_lower_or_equals_than(value, comparer, message = nil)
    if value > comparer
      add_notification key, message || produce_message(:num_is_lower_than, comparer)
    end
  end

  def num_are_equals(value, comparer, key, message = nil)
    if value != comparer
      add_notification key, message || produce_message(:num_are_equals, comparer)
    end
    self
  end

  def num_are_not_equals(value, comparer, key, message = nil)
    if value == comparer
      add_notification key, message || produce_message(:num_are_equals, comparer)
    end
    self
  end
end