def select_books_titles_and_years_in_first_series_order_by_year
  "
  SELECT books.title, books.year
  FROM books
  INNER JOIN series
  ON series.id = books.series_id
  WHERE series_id = 1
  "
end

def select_name_and_motto_of_char_with_longest_motto
  "
  SELECT characters.name, characters.motto
  FROM characters
  ORDER BY length(motto) DESC
  LIMIT 1
  "
end


def select_value_and_count_of_most_prolific_species
  "
  SELECT species, COUNT(species)
  FROM characters
  GROUP BY species
  ORDER BY COUNT(species) DESC
  LIMIT 1;
  "
end

def select_name_and_series_subgenres_of_authors
  "
  SELECT authors.name, subgenres.name
  FROM series
  INNER JOIN authors, subgenres
  ON series.author_id = authors.id AND series.subgenre_id = subgenres.id
  "
end

def select_series_title_with_most_human_characters
  "
  SELECT series.title
  FROM characters
  INNER JOIN series
  ON series.id = characters.series_id
  WHERE characters.species = 'human'
  GROUP BY series.title
  ORDER BY COUNT(series.title) DESC LIMIT 1
  "
end

def select_character_names_and_number_of_books_they_are_in
  "
  SELECT characters.name, COUNT(character_books.id)
  FROM character_books
  INNER JOIN  characters
  ON character_books.character_id = characters.id
  GROUP BY characters.id
  ORDER BY COUNT(character_books.id) DESC, characters.name 
  "
end
