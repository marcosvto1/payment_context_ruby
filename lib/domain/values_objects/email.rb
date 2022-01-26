module Domain
  module ValueObjects
    class Email < Shared::ValueObjects::ValueObject
      attr_reader :address_email

      def initialize(address_email)
        super()
        @address_email = address_email
      end
    end
  end
end
