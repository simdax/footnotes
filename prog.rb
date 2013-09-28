#!/usr/bin/ruby
# -*- coding: utf-8 -*-

#petit test


require "rubygems"
require "colorize"

file=File.open("0", "r")
texte=Array.new
file.each(".") do |i|
  texte << i
end
phraseDebut=0
texte.each_with_index do |item, index|
  if item.start_with?('@')
    phraseDebut=index
  end
end


def get_char
  state = `stty -g`
  `stty raw -echo -icanon isig`
  STDIN.getc.chr
ensure
  `stty #{state}`
end

puts `clear`
puts "\\\\\\\\\\\\\\\\\\\\\\\\\      FOOTNOTES    \\\\\\\\\\\\\\\\\\\\"
puts "Bienvenue dans une triple histoire interactive. Vous devez parcourir un texte composé de trois parties distinctes et en même temps complémentaires. Ces dernières sont reliées entre elles par certaines phrases faisant office de pont.".yellow
puts "Elles sont en rouge et sont des passerelles entre les histoires".red
puts "Chaque histoire a un début et une fin. Il y a un sens de lecture : Cliquez 'c' pour avancer ou 's' pour reculer dans l'histoire".yellow
puts "Tapez sur n'importe quelle touche quand vous êtes prêts pour commencer".yellow
puts "Chapitre premier : "

def imprimer(phrase)
    puts phrase.gsub("@", '').gsub("#", '').gsub("\n", ' ')
end

endroitTexte=phraseDebut
imprimer(texte[endroitTexte])
userInput=get_char

while (userInput != 'q') do

  case userInput
  when ('c') 
    endroitTexte+=1
  when ('s')
    endroitTexte-=1
  end
  
  if(endroitTexte==texte.length) then
    puts "fin de l'histoire, revenez en arrière".blue
    endroitTexte-=1
    puts texte[endroitTexte].gsub("@", '').gsub("#", '').gsub("\n", ' ')
  elsif(endroitTexte==-1) then
    puts "début de l'histoire, avancez".green
    endroitTexte+=1
    puts texte[endroitTexte].gsub("@", '').gsub("#", '').gsub("\n", ' ')

  elsif(texte[endroitTexte].start_with?("^")) then
    puts texte[endroitTexte][2, texte[endroitTexte].length-2].gsub("@", '').gsub("#", '').gsub("\n", ' ').red
  symbole=texte[endroitTexte][-2,1]
  file=File.open(texte[endroitTexte][1,1].to_s, "r")
    texte = Array.new
    file.each(".") do |i|
      texte << i
    end
    texte.each_with_index do |item, index|
      if item.start_with?(symbole)
        phraseDebut=index
      end
    end
    endroitTexte=phraseDebut
    puts texte[endroitTexte].gsub("@", '').gsub("#", '').gsub("\n", ' ')
  
  else
    puts texte[endroitTexte].gsub("@", '').gsub("#", '').gsub("\n", ' ')
  end
  
##  puts endroitTexte.to_s.yellow
  userInput=get_char
  
end

