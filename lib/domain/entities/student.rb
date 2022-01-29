module Domain
  module Entities
    class Student < Notifiable
      attr_reader :name, :document, :email

      def initialize(name, document, email)
        super()
        @name = name
        @document = document
        @email = email
        @subscriptions = []

        merge_notifications(document, name)

      end

      def add_subscription(subscription)
        has_subscription_active = false
        if @subscriptions.any?
          @subscriptions.each do |sub|
            if sub.active = true
              has_subscription_active = true
            end
          end
        end

        puts notifications.class
        add_notification_contract Contract.new
                                       .is_true(has_subscription_active, "Student.Subscription", "Este Estudante já tem inscrição ativa")
                                               .num_are_equals(subscription.payments.count, 1, 'A Inscrição precisa ter um pagamento associado')
        @subscriptions.push subscription

      end

      def get_subscription_current
        @subscriptions.find { |item| item.active == true }
      end
    end
  end
end
