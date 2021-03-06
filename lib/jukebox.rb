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


def list(song_array)
  song_array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(song_array)
  puts "Please enter a song name or number:"
  request = gets.chomp #number or song title
  if song_array.include?(request)
    puts "Playing #{request}"
  elsif request.to_i.between?(1, song_array.count)
    puts "Playing #{song_array[request.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
  puts "Please enter a command:"
  command = gets.chomp
  case command
  when "help"
    help
  when "play"
    play(songs)
  when "list"
    list(songs)
  when "exit"
    exit_jukebox
    break
  end
end
end
#why can't, instead of using a loop, set "run" as the second command in each case, except for last one?  throws an error
