module Domain
  module ValueObjects
    class Name < Shared::ValueObjects::ValueObject
      attr_reader :first_name, :last_name

      def initialize(first_name, last_name)
        super()
        @first_name = first_name
        @last_name = last_name
        validate
      end

      private

      def validate
        self.add_notification :first_name, "Nome invalid" if @first_name.empty?
        self.add_notification :last_name, "Sobre nome invalid" if @last_name.empty?
      end
    end
  end
end
