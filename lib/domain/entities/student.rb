module Domain
  module Entities
    class Student
      attr_reader :name, :document, :email

      def initialize(name, document, email)
        @name = name
        @document = document
        @email = email
        @subscriptions = []
      end

      def add_subscription(subscription)
        @subscriptions << subscription
      end
    end
  end
end
