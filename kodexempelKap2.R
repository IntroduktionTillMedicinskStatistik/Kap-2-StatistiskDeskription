#Kod från kapitel 2
#----------------------------------- sida23 ------------------------------------
#data från tabell 2.2
wolencomi = read.csv2("PATH") 

#Notera att "PATH" ovan måste ersättas med sökväg till filen: Wolencomi.csv
#filen finns att hämta i mappen för kapitel 2 på github.

#----------------------------------- sida23 ------------------------------------
#värden från tabell 2.3
x = c(4.2, 4.3, 4.7, 8.7, 4.9)

mean(x)

median(x)

#----------------------------------- sida24 ------------------------------------
exp(mean(log(x)))

#----------------------------------- sida25 ------------------------------------
(2*0.3 + 4*0.2+6*0.5)/(2+4+6)

#----------------------------------- sida28 ------------------------------------
#värden från tabell 2.5
x = c(32, 45, 55, 65, 37, 81, 52, 41, 45, 61, 51)

max(x)-min(x)

sd(x)

#----------------------------------- sida30 ------------------------------------
#värden från tabell 2.8
x = c(550, 750, 1500, 1450, 1000, 700, 850, 1350, 600, 300)

quantile(x,0.25)
quantile(x,0.50)
quantile(x,0.75)

#----------------------------------- sida31 ------------------------------------
(sd(x)/mean(x))*100

#följande ger värdet TRUE ifall x_i är en outlier enligt regel på sid 31
x>quantile(x,0.75) + 1.5 * (quantile(x,0.75) - quantile(x,0.25))

#----------------------------------- sida36 ------------------------------------
plot(table(wolencomi$members))

boxplot(wolencomi$members)

#----------------------------------- sida37 ------------------------------------
hist(wolencomi$ca_rmnd)

#----------------------------------- sida39 ------------------------------------
plot(wolencomi$ca_rmnd,wolencomi$ca_actual, ylim = c(0, 50000), xlim = c(0, 50000))
abline(0,1)
abline(0,0.8,lty="dashed")

#----------------------------------- sida39 ------------------------------------
#Sortering utelämnad i boken
wolencomi = wolencomi[order(wolencomi$members),]

plot(wolencomi$members, 1:(nrow(wolencomi))/nrow(wolencomi),
     type="s",ylim = c(0,1), xlab="Hushållsmedlemmar", ylab = "F(x)")
