module Domain
  module ValueObjects
    class Document < Shared::ValueObjects::ValueObject
      attr_reader :number, :type

      def initialize(number, type)
        super()
        @number = number
        @type = type
        validate
      end

      private

      def validate
        add_notification :number, "CPF inválido" if @number.size < 11 && @type == "CPF"
        add_notification :number, "CNPJ inválido" if @number.size < 20 && @type == "CNPJ"
      end
    end
  end
end
