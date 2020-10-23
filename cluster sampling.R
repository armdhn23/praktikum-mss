set.seed(10) #mengunci bilangan acak agar muncul konsisten
dfk = data.frame(matrix(ncol = 100, nrow = 100)) #membuat data frame kosong dengan dimensi 100x100

names_kluster = c() #membuat nama kolom kluster kosong
for (i in 1:100) {
  names_kluster= c(names_kluster, paste0("kluster",i))
} # membuat nama kolum kluster1 s/d kluster100

colnames(dfk) <- names_kluster #mengganti nama kolom
 
data_populasi = sample(1:10, 10000, replace=T) #membuat bilangan random
mean(data_populasi) #menghitung rata-rata

batas_bawah<- seq(1, 10000, by = 100) # batas bawah untuk manipulasi bentuk
batas_atas <- seq(100, 10000, 100) #


for (i in 1:100) {
    dfk[,i] = data_populasi[batas_bawah[i]:batas_atas[i]]
} #mengisi data frame dfk yang kosong 

### kluster 10
pengambilan_10_kluster = sample(1:100, 10) #membuat bilangan random untuk kolom
pengambilan_10_kluster
data_10_kluster = dfk[pengambilan_10_kluster]

sigma_rata_10 = 0
for (i in 1:10) {
  sigma_rata_10 = sigma_rata_10 + mean(data_10_kluster[,i])
}
sigma_rata_10/10

### 20 kluster
pengambilan_20_kluster = sample(1:100, 20)
data_20_kluster = dfk[pengambilan_20_kluster]

sigma_rata_20 = 0
for (i in 1:20) {
  sigma_rata_20 = sigma_rata_20 + mean(data_20_kluster[,i])
}
sigma_rata_20/20

### kluster 30
pengambilan_30_kluster = sample(1:100, 30)
data_30_kluster = dfk[pengambilan_30_kluster]

sigma_rata_30 = 0
for (i in 1:30) {
  sigma_rata_30 = sigma_rata_30 + mean(data_30_kluster[,i])
}
sigma_rata_30/30

### kluster 40
pengambilan_40_kluster = sample(1:100, 40)
data_40_kluster = dfk[pengambilan_40_kluster]

sigma_rata_40 = 0
for (i in 1:40) {
  sigma_rata_40 = sigma_rata_40 + mean(data_40_kluster[,i])
}
sigma_rata_40/40

### kluster 50
pengambilan_50_kluster = sample(1:100, 50)
data_50_kluster = dfk[pengambilan_50_kluster]

sigma_rata_50 = 0
for (i in 1:50) {
  sigma_rata_50 = sigma_rata_50 + mean(data_50_kluster[,i])
}
sigma_rata_50/50

#### proporsi
set.seed(10)
populasi_proporsi<-sample(x=c("negatif","netral","positif"), size=10000, replace = T)
populasi_proporsi_df <- as.data.frame(populasi_proporsi)

prop_negatif <- populasi_proporsi_df[populasi_proporsi_df$populasi_proporsi == 'negatif', ]
length(prop_negatif)/10000
prop_netral <- populasi_proporsi_df[populasi_proporsi_df$populasi_proporsi == 'netral', ]
length(prop_netral)/10000
prop_positif <- populasi_proporsi_df[populasi_proporsi_df$populasi_proporsi == 'positif', ]
length(prop_negatif)

dfk_prop = data.frame(matrix(ncol = 100, nrow = 100))

names_kluster = c()
for (i in 1:100) {
  names_kluster= c(names_kluster, paste0("kluster",i))
}

colnames(dfk_prop) <- names_kluster

batas_bawah<- seq(1, 10000, by = 100)
batas_atas <- seq(100, 10000, 100)


for (i in 1:100) {
  dfk_prop[,i] = populasi_proporsi[batas_bawah[i]:batas_atas[i]]
}

### kluster 10
pengambilan_10_kluster = sample(1:100, 10)
pengambilan_10_kluster
data_10_kluster <- dfk_prop[pengambilan_10_kluster]

data_10_kluster = data_10_kluster %>% gather("kluster", "Nilai") %>% count(Nilai)
data_10_kluster %>% group_by(Nilai) %>% summarise(prop = n/1000)

### kluster 20
pengambilan_20_kluster = sample(1:100, 20)
pengambilan_20_kluster
data_20_kluster <- dfk_prop[pengambilan_20_kluster]

data_20_kluster <- data_20_kluster %>% gather("kluster", "Nilai") %>% count(Nilai)
data_20_kluster %>% group_by(Nilai) %>% summarise(prop = n/2000)
