require_relative "../../../lib/core/core"
require_relative "../../../lib/core/notifiable.rb"

require_relative "../../../lib/core/validations/string_validation_contract.rb"
require_relative "../../../lib/core/validations/bool_validation_contract.rb"
require_relative "../../../lib/core/validations/numeric_validation_contract.rb"
require_relative "../../../lib/core/validations/contract.rb"

require_relative "../../../lib/shared/values_objects/value_object.rb"
require_relative "../../../lib/shared/entities/entity.rb"

require_relative "../../../lib/domain/values_objects/name.rb"
require_relative "../../../lib/domain/values_objects/email.rb"
require_relative "../../../lib/domain/values_objects/document.rb"
require_relative "../../../lib/domain/values_objects/address.rb"

require_relative "../../../lib/domain/entities/payment.rb"
require_relative "../../../lib/domain/entities/credit_card_payment.rb"
require_relative "../../../lib/domain/entities/subscription.rb"
require_relative "../../../lib/domain/entities/student.rb"

#161C2D

describe Domain::Entities::Student do
  it "Should Return Error When Has Active Subscription" do
    name = Domain::ValueObjects::Name.new("Bruce", "Wyne")
    email = Domain::ValueObjects::Email.new("bruce@dc.com")
    document = Domain::ValueObjects::Document.new("04234564566", "CPF")
    address = Domain::ValueObjects::Address.new(
      'Rua A',
      '150',
    'Bairro A',
      'Cidade A',
      'Estado A',
      'A',
      '7855744'
    )
    payment = Domain::Entities::CreditCardPayment.new(
      Time.now,
      Time.now,
      10,
      10,
      "Marcos",
      document,
      address,
      email,
      'Marcos',
      '123456789789',
      Time.now
    )
    subscription = Domain::Entities::Subscription.new(nil)
    subscription.add_payment(payment)

    student = Domain::Entities::Student.new(name, document, email)
    student.add_subscription subscription

    expect(student.is_valid?).to be_falsy
    expect(student.notifications[0]).to have_key("Student.Subscription")
  end
end
