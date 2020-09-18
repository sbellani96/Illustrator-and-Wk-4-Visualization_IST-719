#
#Siddharth Bellani
#Purpose _ HW-04
#

myfile<- file.choose()

hotdogs<-read.csv(myfile, header = TRUE, sep = ",", stringsAsFactors = FALSE)
View(hotdogs)

barplot(hotdogs$Dogs.eaten, names.arg = hotdogs$Year, border = NA)
fill_colors<-c()
for (i in 1:nrow(hotdogs)) {
  if(hotdogs$New.record[i]==1){
    fill_colors<-c(fill_colors,"#821122")
  }
  else{
    fill_colors<-c(fill_colors,"#cccccc")
  }
}

barplot(hotdogs$Dogs.eaten, names.arg = hotdogs$Year, border = NA, col=fill_colors, xlab="Year", ylab="Hot dogs and buns (HDB) eaten", 
        main = "NATHAN'S HOT DOG EATING CONTEST RESULTS, 1980-2010")

# Stack the bars
#


hot_dog_places <- read.csv("http://datasets.flowingdata.com/hot-dog-places.csv", 
                           sep = ",", header = TRUE, stringsAsFactors = FALSE)

names(hot_dog_places) <-
  c("'00", "'01", "'02", "'03", "'04",
    "'05", "'06", "'07", "'08", "'09", "'10")

hot_dog_matrix <- as.matrix(hot_dog_places)


barplot(hot_dog_matrix, border=NA, space=0.25, ylim=c(0, 200),
        xlab="Year", ylab="Hot dogs and buns (HDBs) eaten",
        main="Hot Dog Eating Contest Results, 1980-2010")

# Scatter Plot 4-25

subscribers <-
  read.csv("http://datasets.flowingdata.com/flowingdata_subscribers.csv",
           sep=",", header=TRUE, stringsAsFactors = FALSE)
plot(subscribers$Subscribers, type="p", ylim=c(0, 30000),
     xlab="Day", ylab="Subscribers")
points(subscribers$Subscribers, pch=19, col="black")

