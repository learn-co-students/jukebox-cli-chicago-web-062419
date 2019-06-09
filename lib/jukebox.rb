require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]



def help
  puts "I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program"
end



def play(songs)
	puts "Please enter a song name or number:"

	song_name = gets.chomp
	song_number = [1, 2, 3, 4, 5, 6, 7, 8, 9]

	songs.each do |song|
		if song_name == song
			puts "Playing #{song_name}"
		elsif song_number.include?(song_name.to_i)
			puts "Playing #{songs[song_name.to_i - 1]}"
		else
			puts "Invalid input, please try again"
		end
	end
end



def list(array)
	
	array.each_with_index do |song_info, index|
		puts "#{index + 1}. #{song_info}"
	end	
end



def exit_jukebox
	puts "Goodbye"
end



def run(songs)
	binding.pry
	help
	
	puts "Please enter a command:"
	
	command = gets.chomp
	available_commands = ["list", "play", "help", "exit"]

	if command == "list"
		list
	elsif command == "play"
		play
	elsif command == "help"
		help
	elsif command == "exit"
		exit_jukebox
		# break
	# elsif available_commands.each do |ind_command|
	# 	command != ind_command
	# 	puts ""
	end
end


# http://pryrepl.org/