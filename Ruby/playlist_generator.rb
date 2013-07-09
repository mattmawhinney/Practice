# music_shuffle method from Chris Pine 

def music_shuffle filenames

# We don't want a perfectly random shuffle, so let's
# instead do a shuffle like card-shuffling. Let's
# shuffle the "deck" twice, then cut it once. That's
# not enough times to make a perfect shuffle, but it
# does mix things up a bit.
# Before we do anything, let's actually *sort* the
# input, since we don't know how shuffled it might
# already be, and we don't want it to be *too* random.

  filenames = filenames.sort
  len = filenames.length

# Now we shuffle twice.
  2.times do
    l_idx = 0 # index of next card in left pile
    r_idx = len/2 # index of next card in right pile
    shuf = []
  
    # NOTE: If we have an odd number of "cards",
    # then the right pile will be larger.
    while shuf.length < len
      if shuf.length%2 == 0
      # take card from right pile
        shuf.push(filenames[r_idx])
        r_idx = r_idx + 1
      else
      # take card from left pile
       shuf.push(filenames[l_idx])
       l_idx = l_idx + 1
      end
    end

  filenames = shuf
  end 


  # And cut the deck.
  arr = []
  cut = rand(len) # index of card to cut at


 # Not sure I understand this bit
 # It's saying take our array of filenames that's been shuffled twice 
 # And
  idx = 0
  while idx < len
    # Very cool bit of code here 
    # Begins pushing at the location of the cut 
    # Once idx+cut equals length, we get filenames[0]
    # Which brings us back to the start of the array, all the way to the element before where we cut 
    arr.push(filenames[(idx+cut)%len])  
    idx = idx + 1
  end
  arr
end




#Dir.chdir 'C:/Users/Fara/Desktop/Playlists'




# Can't use as just an array; need to convert to string 
songs = music_shuffle(Dir['C:/Users/Fara/Music/Amazon MP3/**/**/*.{mp3}'])
trimmed = songs[0..9]
 
File.open 'PlayList1.m3u', 'w' do |f|
  trimmed.each { |x| f.write x+"\n" }
end

puts File.read 'Playlist1.m3u'









