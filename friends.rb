def get_name(person)
  return person[:name]
end

def get_show(person)
  return person[:favourites][:tv_show]
end

def test_food(person, food)
  if person[:favourites][:things_to_eat].include?(food)
    return true
  end
  return false
end

def add_friend(person, friend)
  person[:friends].push(friend)
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def find_money(people)
  total_monies = 0
  for person in people
     total_monies += person[:monies]
  end
  return total_monies
end

def loan_money(lender, lendee, amount)
 lender[:monies] -= amount
 lendee[:monies] += amount
end

def favourite_foods(people)
  foods = []
  for person in people
    foods.concat(person[:favourites][:things_to_eat])
  end
  return foods
end

def no_friends(people)
  result = []
  for person in people
    if person[:friends].length == 0
      result.push(person[:name])
    end
  end
  return result
end

# puts @person5
# def same_tv_show(people)
#   tv_shows = {}
#   result = {}
#
#   for person in people
#     show = person[:favourites][:tv_shows]
#       if tv_shows[shows]
#         tv_shows[show].push(person[:name]
#       else
#         tv_shows[show] = [person[:name]]
#       end
#
#   for show in tv_shows.keys
#       if tv_shows[show].size > 1
#           result[show] = tv_shows[show].reverse
#       end
#     end
#
# end
