ui <- fluidPage(

    # title
    titlePanel("Student's t-distribution vs standard normal distribution"),

    # plot 
    plotOutput(outputId = "distPlot"),

    # dividing line
    hr(),

    fluidRow(
        column(3,
            h4("Move the slider to change the graph!"),

            # Slider input 
            sliderInput(inputId = "dof",
                label = "Degrees of freedom:",
                min = 1,
                max = 100,
                value = 1, 
                step=0.1)
            ),

        column(4, offset=1,

            # Maths equations
            withMathJax(),
            uiOutput('tdisteq')

        )

    )

)
