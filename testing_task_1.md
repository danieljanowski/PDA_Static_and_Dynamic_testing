### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card)
    if card.value = 1 # when comparing the value we need to use ==
      return true
    else
      return false
    end
  end

dif highest_card(card1 card2) # dif shouls be replaced with def, coma missing, should be (card1, card2)
  if card1.value > card2.value
    return card # card doesn't exist, it needs to be card1
  else
    return card2
  end
end
end # this end is not needed


def self.cards_total(cards) # I am not sure why this is class method. It still should work, just looks like it is unnecessary.
  total # total needs an initial value, it should be total == 0
  for card in cards
    total += card.value
    return "You have a total of" + total # This line should be 2 lines below after the loop.
  end
end
# end is missing
```
