module Core
  DEFAULT_MESSAGES = {
    :requires => "Campo obrigatório",
    :are_equal => "O valor deve ser igual",
    :has_min_length => "Deve ter nom minímo :sub Caracteres",
    :is_string => "O Campo deve ser uma string",
    :is_nil => "O Campo deve nulo",

    :num_is_greather_than => "O valor deve ser maior que :sub",
    :num_is_greather_or_equals_than => "O valor deve ser maior que ou igual a :sub",
    :num_are_equals => "O valor deve ser igual a :sub",
    :num_are_not_equals => "O valor deve ser diferente que :sub"
  }

  def produce_message(key, value_to_replace = nil)
    "No Message Founded" if !DEFAULT_MESSAGES.key?(key)

    if value_to_replace != nil && !value_to_replace.empty?
      return DEFAULT_MESSAGES[key].sub(:sub, value_to_replace)
    end

    DEFAULT_MESSAGES[key.to_sym]
  end
end