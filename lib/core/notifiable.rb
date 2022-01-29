class Notifiable
  attr_reader :notifications

  def initialize
    @notifications = []
  end

  def add_notification(key, value)
    @notifications.push({ "#{key}" => value })
  end

  def add_notification_contract(notifiable)
    init_notifications

    if notifiable.notifications.size > 0
      @notifications = @notifications + notifiable.notifications
    end
  end

  def merge_notifications (*notifications)
    init_notifications
    notifications_to_merge = notifications.map(&:notifications)
    if notifications_to_merge.size > 0
      @notifications = @notifications + notifications_to_merge.flatten
    end
  end

  def is_valid?
    @notifications.count == 0
  end

  protected

  def init_notifications
    if (@notifications.instance_of?(NilClass))
      @notifications = []
    end
  end

end
