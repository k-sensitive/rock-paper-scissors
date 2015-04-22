class String
  define_method(:beats?) do |weapon|
    wins = { "rock" => "scissors" , "paper" => "rock" , "scissors" => "paper" }
    if wins.fetch(self) == weapon
      true
    else
      false
    end
  end
end
