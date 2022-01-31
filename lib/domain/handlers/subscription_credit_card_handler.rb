module Domain
  module Handlers
    class SubscriptionCreditCardHandler < Shared::IHandler
      attr_reader :student_repository

      def initialize(student_repository)
        @student_repository = student_repository
      end

      def handle(command)
        super command
        # fail fast validation
        # verificar se o document já existe
        if @student_repository.document_exists?(command.document)
          add_notification_contract(command)
          return CommandResult.new(false, "Documento já esta em uso")
        end
        # verificar se o email já existe
        @
        # Gerar VOs
        # Gerar as Entidades
        # Aplicar Relacinamentos
        # Agrupar a Aplicar Validações
        # Savar Dados
        # Retorna Dados
      end
    end
  end
end