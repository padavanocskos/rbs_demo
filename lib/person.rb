class Person
  attr_reader :name
  attr_reader :contacts

  def initialize(name: )
    @name = name
    @contacts = []
  end

  def guess_country()
    contacts.map do |contact|
      # With case expression, simple type-case is implemented.
      # `contact` has type of `Phone | Email` but in the `when` clause, contact has type of `Phone`.
      case contact
      when Phone
        contact.country
      end
    end.compact.first
  end
end