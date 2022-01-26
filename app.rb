require_relative "lib/core/notifiable.rb"
require_relative "lib/shared/values_objects/value_object.rb"
require_relative "lib/domain/values_objects/name.rb"
require_relative "lib/domain/entities/student.rb"
require_relative "lib/domain/entities/subscription.rb"

nome = Domain::ValueObjects::Name.new("Marcos Vincius", "Oliveira")

puts nome.has_error?
# marcos = Domain::Entities::Student.new()
# subscriptoin = Domain::Entities::Subscription.new(nil)
# marcos.add_subscription subscriptoin
