module Domain
  module Commands
    class CreateCreditCardSubscriptionCommand < Shared::ICommand
      include Notifiable
      # Student
      attr_accessor :first_name,
                    :last_name,
                    :document,
                    :email

      # Payment CreditCard variables
      attr_accessor :card_holder_number,
                    :card_number,
                    :last_transaction_number,
                    :number,
                    :paid_date,
                    :expire_date,
                    :total,
                    :total_paid,
                    :payer,
                    :document,
                    :address,
                    :email,
                    :expire_date

      # Address
      attr_reader :street, :number, :neighborhood, :city, :state, :country, :zip_code


      def validate
        puts "Validando Credit Cards"
      end
    end
  end
end