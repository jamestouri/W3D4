def what_was_that_one_with(those_actors)
  # Find the movies starring all `those_actors` (an array of actor names).
  # Show each movie's title and id.
  Movie.select(:title, :id)
    .joins(:actors)
    .where(actors: {name: those_actors})
    .group(:id)
    .having('COUNT(*) >= ?',those_actors.length)
    
    # .having(actors: {name: those_actors})
    # .where(actors: {name: those_actors})
    
    
end

def golden_age
  # Find the decade with the highest average movie score.
  Movie.select(:yr, 'AVG(score) AS avg_score')
  .group_by(&:decade)
  .order('AVG(score) DESC')
  .limit(1)
  
end

def costars(name)
  # List the names of the actors that the named actor has ever
  # appeared with.
  # Hint: use a subquery
  actor_movies = Movie.joins(:actors)
    .where('actors.name = ?', name).pluck(:title)
    
  Actor.joins(:movies)
    .where(movies: {title: actor_movies})
    .where.not(name: name)
    .pluck(:name).uniq

end

def actor_out_of_work
  # Find the number of actors in the database who have not appeared in a movie
  Actor.select(:name)
  .left_outer_joins(:castings)
  .where('castings.actor_id IS NULL').length

end

def starring(whazzername)
  # Find the movies with an actor who had a name like `whazzername`.
  # A name is like whazzername if the actor's name contains all of the
  # letters in whazzername, ignoring case, in order.

  # ex. "Sylvester Stallone" is like "sylvester" and "lester stone" but
  # not like "stallone sylvester" or "zylvester ztallone"
  thing = whazzername.downcase.split("").join("%")
  
   # starring('lester stone') }  'Sylvester Stallone').
  # '%l%e%s%t%e%r%s%t%%n%e%'
  Movie.select(:title)
    .joins(:actors)
    .where("LOWER(actors.name) LIKE ?", thing)

end

def longest_career
  # Find the 3 actors who had the longest careers
  # (the greatest time between first and last movie).
  # Order by actor names. Show each actor's id, name, and the length of
  # their career.
  
end