module BoolValidationContract
  include Core

  def is_true(value, key, message = nil)
    valid value
    if value == false
      add_notification key, message || produce_message(:is_true)
    end
    self
  end

  def is_false(value, key, message = nil)
    valid value
    if value == false
      add_notification key, message || produce_message(:is_true)
    end
    self
  end

  def is_nil (value, key, message = nil)
    if value != nil
      add_notification key, message || produce_message(:is_nil)
    end
  end

  def is_not_nil (value, key, message = nil)
    if value != nil
      add_notification key, message || produce_message(:is_nil)
    end
  end

  protected

  def valid(value)
    self if !value.instance_of?(TrueClass)
  end
end