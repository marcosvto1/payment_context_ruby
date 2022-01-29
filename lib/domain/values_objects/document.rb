module Domain
  module ValueObjects
    class Document < Shared::ValueObjects::ValueObject
      attr_reader :number, :type

      def initialize(number, type)
        super()
        @number = number
        @type = type

        puts "DOcument #{notifications.class}"

        add_notification_contract Contract.new
                                    .requires(@number, "Document.number")
                                    .requires(@type, "Document.type")
                                    .is_true(validate_document(), "Document.number", "CPF Inválido")
      end

      private

      def validate_document
        return true if @number.size == 11 && @type == "CPF"
        return true if @number.size == 14 && @type == "CNPJ"
        false
      end
    end
  end
end
