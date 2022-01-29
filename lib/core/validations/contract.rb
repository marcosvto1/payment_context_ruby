class Contract < Notifiable
  include Core
  include StringValidationContract
  include BoolValidationContract
  include NumericValidationContract

  def requires(value, key)
    if value.instance_of?(String) && value.empty?
      add_notification key, produce_message(:requires)
    end
    self
  end
end
