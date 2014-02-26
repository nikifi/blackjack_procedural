# Program Creator: Nicola Hall
# Simple blackjack game using procedural Ruby Programming


# deal method that will deal the cards
# suite does not matter 

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
return card_key.slice(0..-2), h[card_key]

end

# if the card is Ace ask the user what value he or she would like
def deal_with_ace
  dealcard = deal
  card = dealcard[0]
  card_value = dealcard[1]
  if (card == "Ace")
    puts "You have an Ace, do you want it be a 1 or 11?"
    one_or_eleven = gets.chomp.to_i
    while (one_or_eleven != 1 and one_or_eleven != 11)
      puts "Please enter either 1 or 11"
      one_or_eleven = gets.chomp.to_i
    end
    return card, one_or_eleven
  end

  return card, card_value
end

# This method is where most of the game play is happening
def playgame

puts "What is your name"
user = gets.chomp
dealer = ""
userscore = 0
dealerscore = 0

# user Deald and two cards are drawn from the pile
puts "Hello #{user}, to deal your initial hand type 'D' "
answer = gets.chomp

if answer == "D"
  first = deal_with_ace
  first_card = first[0]
  first_card_value = first[1]
  second = deal_with_ace
  second_card = second[0]
  second_card_value = second[1]

  userscore = first_card_value + second_card_value

  puts "Your cards are #{first_card},#{second_card}"
  puts "Your total value is: #{userscore}"
  if userscore == 21
    puts "You win early #{user}"
  elsif userscore > 21
    puts "Bust already with a score of #{userscore}" 
  else
      decision = "D"
      while decision == "D"
        puts "D - Deal or S - Stay"

        decision = gets.chomp
        if decision == "D"
          newcard = deal_with_ace
           puts "card = #{newcard[0]}"
          userscore = userscore + newcard[1]
          if userscore > 21
            puts "You got #{newcard[0]}, now your total value is #{userscore}"
            puts "Bust"
            break
          end #end userscore > 21
          if userscore == 21
            puts "Your latest card is #{newcard[0]}, you win on your first try"
            break
          end #end userscore == 21

        elsif decision == "S"

          dealerfirst = deal
          dealersecond = deal
          dealerscore = dealerfirst[1] + dealersecond[1]

            while true #(dealerscore) < 17

               if dealerscore < 17 
                newdealercard = deal_with_ace
                dealerscore = dealerscore + newdealercard[1]
               end


                if dealerscore >= 17 and dealerscore < 21
                    if dealerscore > userscore
                      puts "Dealer wins with a score of #{dealerscore}, #{user} loses with a score of #{userscore}"
                      break
                    elsif dealerscore == userscore
                      puts "Its a tie!! You both have #{dealerscore}"
                      break  
                     else
                      puts "#{user} wins with #{userscore}, dealer loses with a score of #{dealerscore}"
                      break
                    end # end dealerscore > userscore
                end # end dealerscore >= 17 and dealerscore < 21
                if dealerscore > 21
                  puts "Dealer Bust with #{dealerscore}, #{user} wins with #{userscore}"
                  break
                end #end dealerscore > 21

                if dealerscore == 21
                  puts "Dealer wins with a score of #{dealerscore}, #{user} loses with a score of #{userscore}"
                  break
                end # end dealerscore == 21
          
            end #end dealer while
          else
            puts "You've entered an invalid selection"
            break
        end #end decision

      end #end while

    end # end first userscore == 21
else
  abort("You did not enter D so the game exited")
end

puts "Do you want to play again? 'Y' or 'N' "
playagain = gets.chomp

  if playagain == "Y"

  playgame

  end

end #end playgame

playgame 








