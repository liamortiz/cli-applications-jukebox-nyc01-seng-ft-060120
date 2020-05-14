# Add your code here

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  
  if songs.include?(user_input)
    puts "Playing #{user_input}"
  else
    user_input = user_input.to_i
    if user_input.between(1, songs.size)
      puts "Playing #{songs[user_input - 1]}"
    else
      puts ""
    end
  end
end

def exit_jukebox
end

def run
end