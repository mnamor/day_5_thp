#déclaration des variable.
num=0
sum=0
#Utilisation de fonction (boucle de répétition).
for num in (1...1000)
  #fonction si
  if (num %3==0 || num %5==0)
    #alors tu fait cette opération .
     sum= sum + num
#fermeture de la fonction  si.
  end
#fermeture de la fonction de for.
end
#affichage fu résulta.
puts "la somme des multiples de 3 et 5 inf à 1000 est égal #{sum}"
