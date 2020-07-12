# Add your code here
# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.strip
 
# puts say_hello(users_name)
require 'pry'
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
  puts 'I accept the following commands:'
  puts '- help : displays this help message'
  puts '- list : displays a list of songs you can play'
  puts '- play : lets you choose a song to play'
  puts '- exit : exits this program'
end

def list(songs)
  songs.each_with_index do |song, index|
    index += 1
    puts "#{index}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  
  songs.each_with_index do |name, index|
    index += 1
    if input == index.to_s
      puts "Playing #{name}"
      break
    end
  end
  songs.each do |name|
    if name == input
      puts "Playing #{name}"
      break
    end
    binding.pry
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input = ""
  unless input == "exit"
    puts "Please enter a command:"
    input = gets.strip
    if input == "list"
      list(songs)
    elsif input == "play" 
      play(songs)
    elsif input == "help"
      help
    end
  end
  if input == "exit"
    exit_jukebox
  end
end