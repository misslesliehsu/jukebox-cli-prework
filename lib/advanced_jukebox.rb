
  def help
    puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
  end

  
  def list(my_songs)
    my_songs.each do |song, location|
      puts "song"
    end
    #this method is different! Collect the keys of the my_songs hash and 
    #list the songs by name
  end
  
  
  def play(my_songs)
    puts "Please enter a song name"
    song_to_play = gets.chomp
    if !my_songs.keys.include?(song_to_play)
      puts "Invalid input, please try again"
    else
      puts "Now playing #{song_to_play}"
      system 'open ' << my_songs[song_to_play]
    end
    #this method is slightly different!
    #you should still ask the user for input and collect their song choice
    #this time, only allow user's to input a song name
    #check to see if the name they give is in fact a key of the my_songs hash
    #if it isn't, tell them their choice is invalid
    #if it is, play the song using the system 'open <file path>' syntax
    #get the file path of the song by looking it up in the my_songs hash
    
  end
  
  def exit_jukebox
    puts "Goodbye"
    #this method is the same as in jukebox.rb
  end
  
  def run(my_songs)
    help
 -
    input = ""
    while input
      puts "Please enter a command:"
      input = gets.downcase.strip
      case input
      when 'list'
        list(my_songs)
      when 'play'
        list(my_songs)
        play(my_songs)
      when 'help'
        help
      when 'exit'
        exit_jukebox
        break
      else
        help
      end
    end
    #this method is the same as in jukebox.rb
  end