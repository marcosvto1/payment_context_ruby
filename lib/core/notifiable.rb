module Core
  class Notifiable
    attr_reader :notications

    def initialize
      @notifications = []
    end

    def add_notification(key, value)
      @notifications.push({ key: value })
    end

    def has_error?
      @notifications.count > 0
    end
  end
end
