server <- function(input, output, session) {

  output$distPlot <- renderPlot({

      n <- 200
      maxx <- 5
      minx <- -maxx
      x <- seq(from=minx, to=maxx, length=n)

      # first plot standard normal
      mu <- 0
      sigma <- 1
      yn <- dnorm(x, mean=mu, sd=sigma)
      col_norm <- "blue"
      lty_norm <- "dashed"
      label_x <- "Value x"
      label_y <- "Density at x"
      lwd_norm <- 2
      plot(x, yn, 
           type='l', 
           col=col_norm, 
           lty=lty_norm, 
           lwd=lwd_norm,
           xlab=label_x,
           ylab=label_y
      )


      # t-distribution
      yt <- dt(x, df=input$dof)
      col_t <- "black"
      lty_t <- "solid"
      lwd_t <- lwd_norm
      lines(x, yt, type='l', col=col_t, lty=lty_t, lwd=lwd_t)

      # add a legend
      leg_normal <- "Std. Normal"
      leg_t <- "t-distribution"
      leg_x <- maxx - 1
      leg_y <- max(yn) -0.1 
      cexval <- 0.8
      leg_title <- "Distributions"
      legend(leg_x, leg_y, 
             legend=c(leg_normal, leg_t),
             col=c(col_norm, col_t), 
             lty=c(lty_norm, lty_t),
             lwd=c(lwd_norm, lwd_t),
             title=leg_title,
             cex=cexval
      )


  })

}
