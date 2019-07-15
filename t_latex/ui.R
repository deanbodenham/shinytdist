ui <- fluidPage(

    # App title <-<-
    titlePanel("Student's t-distribution"),

    # Sidebar layout with input and output definitions <-<-
    sidebarLayout(

        # Sidebar panel for inputs <-<-
        sidebarPanel(

            # Input: Slider for the number of bins <-<-
            sliderInput(inputId = "dof",
                label = "Degrees of freedom:",
                min = 1,
                max = 100,
                value = 1)

            ),

        # Main panel for displaying outputs <-<-
        mainPanel(
            # Output: Histogram <-<-
            plotOutput(outputId = "distPlot")

        ),
    ),

    withMathJax(),

    uiOutput('tdisteq')

)

