module StringValidationContract
  include Core

  def is_string (value, key, message = nil)
    if !value.instance_of?(String)
      add_notification key, message || produce_message(:is_string)
    end
    self
  end

  def has_min_len(value, minimum, key, message)
    if value.size < minimum
      add_notification key, message || produce_message(:has_min_len, minimum)
    end
    self
  end

end
