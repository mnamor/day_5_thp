def get_file_as_string(shakespeare)
  data = ''
  f = File.open(shakespeare, "r")
  f.each_line do |line|
    data += line
  end
  puts "data build finish"
  return data
end
#variable contenent la chaine de charactére shakespeare.
xml_data = get_file_as_string 'shakespeare.txt'

#dictionaire des mots  à comparer.

dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

#fonctuin de mon tableau.

frequence = Hash.new(0)
#variable de mot.
mots = xml_data.tr('.,;":', ' ').downcase.split(' ')
#fonction de boucle mots.
mots.each do |mot|
  #fontion de boucle de dictionnaire.
  dictionnary.each do |elem|
#condition de mots plus élem.
    if mot == elem
      frequence [mot]+=1
    end
  end
end
#fonction de boucle fréquence.
frequence.each do |mot,count|
  #afficher les mots plus les conté dans la boucle.
    puts "le nombres de \"#{mot}\" est de #{count} fois"
end
#afficher le nombre de mots dans le tableau.
puts frequence.inspect.to_s
