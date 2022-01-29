require_relative "../../../lib/core/notifiable.rb"
require_relative "../../../lib/core/validations/contract.rb"
require_relative "../../../lib/core/validations/string_validation_contract.rb"
require_relative "../../../lib/core/validations/bool_validation_contract.rb"
require_relative "../../../lib/core/validations/numeric_validation_contract.rb"


require_relative "../../../lib/shared/values_objects/value_object.rb"
require_relative "../../../lib/domain/values_objects/document.rb"

describe Domain::ValueObjects::Document do
  it "Should return error when cpnj is invalid" do
    sut = Domain::ValueObjects::Document.new "123", ""
    puts sut.notifications
    expect(sut.is_valid?).to eq false
  end
end
