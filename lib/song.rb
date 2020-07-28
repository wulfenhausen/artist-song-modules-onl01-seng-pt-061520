require 'pry'

class Song
  
  extend "./concerns/memorable.rb"
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  
  def self.all
    @@songs
  end

   def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
