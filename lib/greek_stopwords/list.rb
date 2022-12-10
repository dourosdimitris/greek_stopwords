# frozen_string_literal: true

module GreekStopwords
  class List
    def initialize
      antonymies = "#{File.dirname(__FILE__)}/parts_of_speech/antonymies.txt"
      arithmhtika = "#{File.dirname(__FILE__)}/parts_of_speech/arithmhtika.txt"
      arthra = "#{File.dirname(__FILE__)}/parts_of_speech/arthra.txt"
      epifonhmata = "#{File.dirname(__FILE__)}/parts_of_speech/epifonhmata.txt"
      epirrhmata = "#{File.dirname(__FILE__)}/parts_of_speech/epirrhmata.txt"
      moria = "#{File.dirname(__FILE__)}/parts_of_speech/moria.txt"
      protheseis = "#{File.dirname(__FILE__)}/parts_of_speech/protheseis.txt"
      syndesmoi = "#{File.dirname(__FILE__)}/parts_of_speech/syndesmoi.txt"

      
      @antonymies = File.read(antonymies).split("\n").select{ |item| item unless item.empty? or item.include?("#") }
      @arithmhtika = File.read(arithmhtika).split("\n").select{ |item| item unless item.empty? or item.include?("#") }
      @arthra = File.read(arthra).split("\n").select{ |item| item unless item.empty? or item.include?("#") }
      @epifonhmata = File.read(epifonhmata).split("\n").select{ |item| item unless item.empty? or item.include?("#") }
      @epirrhmata = File.read(epirrhmata).split("\n").select{ |item| item unless item.empty? or item.include?("#") }
      @moria = File.read(moria).split("\n").select{ |item| item unless item.empty? or item.include?("#") }
      @protheseis = File.read(protheseis).split("\n").select{ |item| item unless item.empty? or item.include?("#") }
      @syndesmoi = File.read(syndesmoi).split("\n").select{ |item| item unless item.empty? or item.include?("#") }
    end

    def all
      @all = @antonymies + @arithmhtika + @arthra + @epifonhmata + @epirrhmata + @moria + @protheseis + @syndesmoi
      @all.uniq
    end
  end
end
