require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Findable, Memorable::ClassMethods
  include Memorable::InstanceMethods, Paramable

  @@all = []

  def initialize
    self.clas.all << self
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

end
