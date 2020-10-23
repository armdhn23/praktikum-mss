set.seed(100) # mengunci bilangan acak, agar hasil konsisten
data_populasi = sample(1:10, 10000, replace=T)
mean(data_populasi)

## probability
#mengambil 50 sampel dengan pengembalian
sampel50 <- sample(1:10000, 50, replace = T) #menentukan sampel ke berapa yang akan diambil
sampel50

data_50_sampel <- data_populasi[c(sampel50)]

mean(data_50_sampel)
hist(data_50_sampel)

#mengambil 75 sampel dengan pengembalian
sampel75 <- sample(1:10000, 75, replace = T) #menentukan sampel ke berapa yang akan diambil
sampel75

data_75_sampel <- data_populasi[c(sampel75)]

mean(data_75_sampel)
hist(data_75_sampel)

# silahkan ulangi untuk sampel 100, 125, 150, 200

## non probability
#mengambil 50 data pertama
data_50_pertama <- data_populasi[1:50]
mean(data_50_pertama)
hist(data_50_pertama)

#mengambil 50 data terakhir
data_50_terkahir <- data_populasi[9950:10000]
mean(data_50_terkahir)
hist(data_50_terkahir)

#mengambil 75 data pertama
data_75_pertama <- data_populasi[1:75]
mean(data_75_pertama)
hist(data_75_pertama)

#mengambil 75 data terakhir
data_75_terkahir <- data_populasi[9925:10000]
mean(data_75_terkahir)
hist(data_75_terkahir)

# silahkan ulangi untuk sampel 100, 125, 150, 200
# dan bandingkan hasil sampling probability dan non probabilty