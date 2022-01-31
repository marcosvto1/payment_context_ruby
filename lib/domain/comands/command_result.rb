module Domain
  module Commands
    class CommandResult < ICommandResult
      attr_writer :success, :message

      def initialize(success, message)
        @success = success
        @message
      end

      def self.create_comand_empty
        return CommandResult.new(nil, nil)
      end
    end
  end
end

