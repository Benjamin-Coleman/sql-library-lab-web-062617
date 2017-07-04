def select_books_titles_and_years_in_first_series_order_by_year
	"SELECT books.title, books.year
	FROM books
	JOIN series
	ON books.series_id = series.id
	ORDER BY books.year ASC LIMIT 3
	"
end

def select_name_and_motto_of_char_with_longest_motto
	"SELECT characters.name, characters.motto
	FROM characters
	GROUP BY length(characters.motto)
	ORDER BY length(characters.motto) DESC LIMIT 1
	"
end

def select_value_and_count_of_most_prolific_species
	"SELECT characters.species, COUNT(characters.species)
	FROM characters
	GROUP BY characters.species
	ORDER BY COUNT(characters.species) DESC LIMIT 1
	"
end

def select_name_and_series_subgenres_of_authors
	"SELECT authors.name, subgenres.name
	FROM series
	JOIN subgenres ON series.subgenre_id = subgenres.id
	JOIN authors ON series.author_id = authors.id
	"
end

def select_series_title_with_most_human_characters
	"SELECT series.title
	FROM series
	JOIN characters ON characters.series_id = series.id
	JOIN books ON books.series_id = series.id
	JOIN character_books ON character_books.character_id = characters.id
	WHERE characters.species = 'human'
	GROUP BY series.title
	ORDER BY COUNT(*) DESC LIMIT 1
	"
end

def select_character_names_and_number_of_books_they_are_in
	"SELECT characters.name, COUNT(*)
	FROM character_books
	JOIN characters ON characters.id = character_books.character_id
	GROUP BY characters.name
	ORDER BY COUNT(*) DESC
	"
end
