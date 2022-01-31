module Shared
  class ICommand
    def validate
      throw :not_implement
    end
  end
end