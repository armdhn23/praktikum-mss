set.seed(1000)
sample(1:10)

for (i in 1:5) {
  print(paste("Ini perulangan ke", i))
}
#ekuivalen
print(paste("Ini perulangan ke", 1))
print(paste("Ini perulangan ke", 2))
print(paste("Ini perulangan ke", 3))
print(paste("Ini perulangan ke", 4))
print(paste("Ini perulangan ke", 5))

#slicing vektor

vektor1<- c(1,2,3,4)
vektor1[2]
vektor2 <- c(1:20)
vektor2[c(1,3)]

View(iris)

iris[1] #menambil kolom pertama dan tetap data frame
iris[,1] #mengambil kolom pertama tapi jadi vektor
str(iris[,1]) 
iris[1,2] 
iris[1:4,2:3]

1+1
2/10
