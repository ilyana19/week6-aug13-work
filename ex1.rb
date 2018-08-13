ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

# Each hash represents a voting ballot, with three names in 1st, 2nd, and 3rd place. A first place vote is worth 3 points, a 2nd place vote is worth 2 points, and a 3rd place vote is worth 1 point.
#
# For example, the first ballot {1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'} shows that this voter chose Smudge for first place, Tigger for 2nd, and Simba for 3rd. Smudge would be awarded 3 points, Tigger would be awarded 2 points, and Simba would be awarded 1 point.
#
# Tally up all the votes and determine who won.

names = []
score = {}

# save the all name values into an array and then getting only the unique names out
ballots.each do |ballot|
  ballot.values.each do |name|
    names << name
  end
  names.uniq!
end

p names # => list of unique names

# using the new uniq names array and setting default values of each person to 0 in the format of a score hash
names.each do |name|
  score[name] = 0
end

p score # => all 0 for values

# add the score of the "ballot" hash to the "score" hash
ballots.each do |ballot|
  ballot.each do |key, value|
    if key == 1
      score[value] += 3
    elsif key == 2
      score[value] += 2
    elsif key == 3
      score[value] += 1
    end
  end
end

p score # => tallied up scores