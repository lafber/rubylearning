=begin

Exercise2. Write a Ruby program that analyzes an MP3 file. Many MP3
files have a 128-byte data structure at the end called an ID3 tag. These 128 bytes are literally packed with information about the song: its name, the artist, which album it's from, and so on. You can parse this data structure by opening an MP3 file and doing a series of reads from a position near the end of the file. According to the ID3 standard, if you start from the 128th-to-last byte of an MP3 file and read three bytes, you should get the string TAG. If you don't, there's no ID3 tag for this MP3 file, and nothing to do. If there is an ID3 tag present, then the 30 bytes after TAG contain the name of the song, the 30 bytes after that contain the name of the artist, and so on. A sample song.mp3 file is available to test your program. Use Symbols, wherever possible.

https://en.wikipedia.org/wiki/ID3_tag
ID3v1: 128 bytes
Field	Length	Description
header	3	"TAG"
title	30	30 characters of the title
artist	30	30 characters of the artist name
album	30	30 characters of the album name
year	4	A four-digit year
comment	28[3] or 30	The comment.
zero-byte[3]	1	If a track number is stored, this byte contains a binary 0.
track[3]	1	The number of the track on the album, or 0. Invalid, if previous byte is not a binary 0.
genre	1	Index in a list of genres, or 255

=end


=begin

Tests file with ruby doctest for ID3 tag reader


doctest: could instanciate a SongId3tag object
     >> my_local_song = SongId3Tag.new('song.mp3')
     >> my_local_song.is_a?(SongId3Tag)
     => true

doctest : detecting or not the Id3 Tags in songs
    >> my_local_song.is_id3_tag?
    => true
    
    >> my_local_song_not_id3tag = SongId3Tag.new('song-not-id3tagged.mp3')
    >> my_local_song_not_id3tag.is_id3_tag?
    => false

doctest : get ID3 tag
    >> my_local_song.get_id3()
    >> my_local_song.id3[:title]
    => 'Dancing Shoes'
    >> my_local_song.id3[:artist]
    => 'Cliff Richard and The Shadows'
    >> my_local_song.id3[:album]
    => '(SUMMER HOLIDAY  1963)'
    >> my_local_song.id3[:comment]
    => '2000#100%-Free-MP3s(Dalnet)  '
    
=end



class SongId3Tag
    
  attr_reader :id3
  
  
  def initialize(song_uri)
    @song_uri = song_uri
    @id3 = Hash.new
  end
  
  # check if id3 tag is present  
  def is_id3_tag?() 
    
    if File::readable?(@song_uri)
      read_end_of_file(128)
      (@id3_data.slice(0,3) == 'TAG') ? true : false
    end
    
  end
  
  
  # get ID3 tag data
  def get_id3()
    
    # ID3v1 
    if @id3.empty? and is_id3_tag? 
      @id3[:title]   = @id3_data.slice(3,30)
      @id3[:artist]  = @id3_data.slice(33,30)
      @id3[:album]   = @id3_data.slice(63,30)
      @id3[:year]    = @id3_data.slice(93,4)
      @id3[:comment] = @id3_data.slice(97,30)
      #@id3[:genre]   = @id3_data.slice(127,1) 
    end
    
    true
    
  end
    
    
  def to_s()
    @id3.each{ |id, value| puts "#{id} : #{value}"}
  end  
    
  protected    
    
    def read_end_of_file(bytes_lenght)
      @song = File.open(@song_uri)
      @song.seek( - bytes_lenght, IO::SEEK_END)
      @id3_data = @song.read
    end
  
end


my_local_song = SongId3Tag.new('song.mp3')
my_local_song.get_id3()
puts my_local_song
