class String
  define_method(:beats?) do |weapon|
    wins = { "rock" => "scissors" , "paper" => "rock" , "scissors" => "paper" }
    if wins.include?(self)
      true
    else
      false
    end
  end
end
