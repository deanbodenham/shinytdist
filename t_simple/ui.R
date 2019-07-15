ui <- fluidPage(

    # Title of plot
    titlePanel("Student's t-distribution vs standard normal distribution"),

    # Sidebar layout
    sidebarLayout(

        # Sidebar panel
        sidebarPanel(

            # Input: Slider for degrees of freedom
            sliderInput(inputId = "dof",
                label = "Degrees of freedom:",
                min = 1,
                max = 100,
                value = 1)

            ),

        # Main panel for displaying output
        mainPanel(
            # Output: plot
            plotOutput(outputId = "distPlot")

        )
    )
)

