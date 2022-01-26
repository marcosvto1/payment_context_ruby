module Domain
  module ValueObjects
    class Address < Shared::ValueObjects::ValueObject
      attr_reader :street, :number, :neighborhood, :city, :state, :country, :zip_code

      def initialize(street, number, neighborhood, city, state, country, zip_code)
        super()
        @street = street
        @number = number
        @neighborhood = neighborhood
        @city = city
        @state = state
        @country = country
        @zip_code = zip_code
      end
    end
  end
end
