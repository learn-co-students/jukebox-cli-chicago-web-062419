
#!/usr/bin/env ruby

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

# Method 1
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

# Method 2
def play(songs)
  choice = nil
  puts "Please enter a song name or number:"
  input = gets.chomp()
  songs.each_with_index do |song, index|
		if input == song || input == (index + 1).to_s
			choice = song
    elsif choice == nil
		  puts "Invalid input, please try again"
	  else
		  puts "Playing #{choice}"
	end
end
end

# Method 3
def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

# Method 4
def exit_jukebox
  puts "Goodbye"
end

# Method 5
def run(songs)
  help
  choice = nil
  if choice != "exit"
    puts "Please enter a command: "
    choice = gets.chomp
  elsif choice == "help"
    help()
  elsif choice == "list"
    list(songs)
  elsif choice == "play"
    play(songs)
  elsif choice == "exit"
    exit_jukebox()
  else
    puts "Invalid input, please try again."
    help()
  end

exit_jukebox()
end
# Method 6
