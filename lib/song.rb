class Song
	attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []

	def initialize(names, artist, genre)
		@name = names
		@artist = artist
		@genre = genre
		@@artists << artist
		@@genres << genre
		@@count += 1
	end


	def self.count
		@@count
	end

	def self.genres
		@@genres.uniq
	end

	def self.artists
		@@artists.uniq
	end

	def self.genre_count
		@@genres.each_with_object(Hash.new(0)) do |genre, amount| amount[genre]+= 1 end
	end

	def self.artist_count
		@@artists.each_with_object(Hash.new(0)) do |artist, amount| amount[artist]+= 1 end
	end

	# def self.genre_count
	# 	@@genres.each_with_object do |genre|
	# 		num_counter = 0
	# 		other_counter = 0
	# 		if genre == Song.genres[other_counter]
	# 		counter+=1
	# 		other_counter+=1
	# 	else
	# 		other_counter+=1
	# 		end
	# 	end

	# end

end
