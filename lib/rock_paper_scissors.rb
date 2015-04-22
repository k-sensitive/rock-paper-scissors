class String
  define_method(:beats?) do |weapon|
    if (self == 'rock') && (weapon == 'scissors')
      true
    end
  end
end
