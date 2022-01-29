require_relative "../../../lib/core/notifiable.rb"
require_relative "../../../lib/core/validations/contract.rb"
require_relative "../../../lib/shared/values_objects/value_object.rb"
require_relative "../../../lib/domain/values_objects/name.rb"

describe Domain::ValueObjects::Name do
  it "should return false when fist_name is empty and last_name not empty" do
    sut = Domain::ValueObjects::Name.new("", "any_last_name")

    expect(sut.is_valid?).to eq false
  end

  it "should return false when fist_name is empty and last_name is empty" do
    sut = Domain::ValueObjects::Name.new("", "")

    expect(sut.is_valid?).to eq false
  end

  it "should return false when fist_name is not empty and last_name is empty" do
    sut = Domain::ValueObjects::Name.new("any_first_name", "")

    expect(sut.is_valid?).to eq false
  end

  it "should return true when fist_name is not empty and last is not empty" do
    sut = Domain::ValueObjects::Name.new("any_first_name", "any_last_name")

    expect(sut.is_valid?).to eq true
  end
end
