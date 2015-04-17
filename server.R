library(shiny)
air <- read.csv("103YH20150324.csv", stringsAsFactor=FALSE)
airPM <- subset(air, Test.Item == "PM2.5")
airPM$Date <- as.Date(airPM$Date)
airPM[4:27] <- lapply(airPM[4:27], as.numeric)
library(ggplot2)
airPM$avg <- rowMeans(airPM[4:27], na.rm=TRUE)


shinyServer(
  function(input, output) {
    output$hist <- renderPlot({
        plot(airPM$Date, airPM$avg, xlab = '2014 by Date', ylab ='PM 2.5',type="l",main='PM 2.5 Status')
        y <- input$standard
        m <- sum(airPM$avg <= y)
        abline(h=y, col="red", lwd=5)
        usr <- par("usr")
        text(usr[1] + 300,60, paste("PM2.5 when Standard = ", y))
        text(usr[1]+ 300,50, paste("Days meet Standard = ", m))
        })
  }
)
