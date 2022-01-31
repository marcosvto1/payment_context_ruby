require_relative 'lib/core/core'

require_relative "lib/core/notifiable.rb"
require_relative 'lib/core/validations/string_validation_contract'
require_relative 'lib/core/validations/bool_validation_contract'
require_relative 'lib/core/validations/numeric_validation_contract'
require_relative "lib/core/validations/contract.rb"

require_relative "lib/shared/values_objects/value_object.rb"
require_relative "lib/domain/values_objects/name.rb"
require_relative "lib/domain/values_objects/email.rb"
require_relative "lib/domain/values_objects/document.rb"

require_relative "lib/shared/entities/entity"
require_relative "lib/domain/entities/student.rb"
require_relative "lib/domain/entities/subscription.rb"

module T1
  def ex1
    puts "ts"
  end

  # module T2
  #   include T1
  #   def ex2
  #     ex1
  #   end
  # end
end
class ClassInterface
  def validate
    throw :not_implement
  end
end

class ClassMethod < ClassInterface
  include T1

  def exec
    ex1
  end

  def validate
    puts "estou validando"
  end
end

item = ClassMethod.new
item.validate
# nome = Domain::ValueObjects::Name.new("", "")
# documet = Domain::ValueObjects::Document.new("", "")
# puts nome.notifications
#
#
# puts nome.is_valid?

# email = Domain::ValueObjects::Email.new("marcosvto1@gmail.com")
# document = Domain::ValueObjects::Document.new("04234564566", "CPF")
# student = Domain::Entities::Student.new(nome, document, email)
# subscription = Domain::Entities::Subscription.new(nil)
# student.add_subscription subscription
# puts "Subscription: Ultima atualizacao #{student.get_subscription_current.last_update_date.strftime("%d/%m/%Y %R")}"
