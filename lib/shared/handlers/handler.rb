module Shared
  class IHandler < Notifiable
    def initialize
      super
    end

    def handle(command)
      if command.kind_of?(ICommand)
        throw :not_implement
      end
      command.validate()
    end
  end
end