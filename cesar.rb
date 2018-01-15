#definire une constante avec comme parametre texte et number
def chiffre_de_cesar(text, number)
#parametre de la constante texte converti en valeur ascii
text_to_ascii = text.chars.map(&:ord)
#chiffrement du texte ascii
shifted = text_to_ascii.map { |a| a + number}
#rotation du texte ascii en chiffrage
rotated_string = shifted.map { |a| a.chr }.join
#afficher la roation de la chaine de caractére
puts rotated_string
end
#chifrage du texte choisi par la valeur demander
chiffre_de_cesar("test", 3)
