#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require "rubygems"
require "colorize"
#require "rubygame"

##Rubygame.init
##Rubygame::Mixer.open_audio

if ARGV==nil then
  ARGV="./"
end

$texte=Array.new
$endroitTexte=0

def imprimer(phrase)
  puts phrase.gsub("@", '').gsub("#", '').gsub("\n", ' ')
end

def ouvrirFichier(numeroFichier, symboleDebut)
  $texte.clear
  file=File.open(ARGV.to_s+numeroFichier, "r")
  if file.readline.start_with?("|") then
    file.rewind
    nomMusique << file.readline.gsub("|", '')
    file.readline
  else file.rewind
  end
  file.each(".") do |i|
    $texte << i
  end
  $texte.each_with_index do |i, index|
    if i.start_with?(symboleDebut)
      imprimer(i)
      $endroitTexte=index
      break
    end
  end
end


def get_char
  state = `stty -g`
  `stty raw -echo -icanon isig`
  STDIN.getc.chr
 
ensure
  `stty #{state}`

 sleep 0.1

end

puts `clear`
puts "\\\\\\\\\\\\\\\\\\\\\\\\\      FOOTNOTES    \\\\\\\\\\\\\\\\\\\\"
puts "Bienvenue dans une triple histoire interactive. Vous devez parcourir un texte composé de trois parties distinctes et en même temps complémentaires. Ces dernières sont reliées entre elles par certaines phrases faisant office de pont.".yellow
puts "Elles sont en rouge et sont des passerelles entre les histoires".red
puts "Chaque histoire a un début et une fin. Il y a un sens de lecture : Cliquez 'c' pour avancer ou 's' pour reculer dans l'histoire".yellow
puts "Tapez sur n'importe quelle touche quand vous êtes prêts pour commencer".yellow
puts "Chapitre premier : "

ouvrirFichier(0.to_s, '@')
userInput=get_char

while (userInput != 'q') do

  case userInput
  when ('c') 
    $endroitTexte+=1
  when ('s')
    $endroitTexte-=1
  end
  
  if($endroitTexte==$texte.length) then
    puts "fin de l'histoire, revenez en arrière".blue
    $endroitTexte-=1
    imprimer($texte[$endroitTexte])
  elsif($endroitTexte==-1) then
    puts "début de l'histoire, avancez".green
    $endroitTexte+=1
    imprimer($texte[$endroitTexte])  
  elsif($texte[$endroitTexte].start_with?("^")) then
    imprimer($texte[$endroitTexte][2..-1].red)
    symbole=$texte[$endroitTexte][-2,1]
    fichier=$texte[$endroitTexte][1,1]
    ouvrirFichier(fichier, symbole)
  else imprimer($texte[$endroitTexte]) 
  end
    
  userInput=get_char
  
end

