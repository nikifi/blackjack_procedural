def deal

  h = Hash.new
  h = { "Acea" => 1,"Aceb" => 1,"Acec" => 1,"Aced" => 1,
    "2a" => 2, "2b" => 2, "2c"=> 2, "2d" => 2, "3a" => 3, "3b" => 3, "3c" => 3, 
    "3d" => 3, "4a" => 4, "4b" => 4, "4c" => 4, "4d" => 4, "5a" => 5, "5b" => 5, 
    "5c" => 5, "5d" => 5, "6a" =>6, "6b" =>6, "6c" =>6, "6d" =>6, "7a" => 7, 
    "7b" => 7, "7c" => 7, "7d" => 7, "8a" => 8, "8b" => 8, "8c" => 8, "8d" => 8, 
    "9a" => 9, "9b" => 9, "9c" => 9, "9d" => 9, "10a" => 10, "10b" => 10, 
    "10c" => 10, "10d" => 10, "Jacka" => 10, "Jackb" => 10, "Jackc" => 10, 
    "Jackd" => 10, "Queena" => 10, "Queenb" => 10, "Queenc" => 10, 
    "Queend" => 10, "Kinga" => 10, "Kingb" => 10, "Kingc" => 10, "Kingd" => 10}

card_key = h.keys[rand(51)]
card_key2 = card_key.slice(0..-2)


return card_key, card_key2

end


puts deal
