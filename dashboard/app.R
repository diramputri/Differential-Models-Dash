library(shiny)
library(phaseR)
library(deSolve)

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Dynamical Systems Analysis"),
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout(
      sidebarPanel(h4("Parameter Space"),width = 3,
         sliderInput("bins",
                     "Number of bins:",
                     min = 1,
                     max = 50,
                     value = 30)
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
         plotOutput("nullclines")
      )
   )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  output$nullclines <- nullclines(LVmodel,xlim = c(-10, 10),ylim = c(-10, 10),
                                   parameters = c(10,5,3,7),points = 20,lwd=2,
                                   col=c("red","blue"))
}

# Run the application 
shinyApp(ui = ui, server = server)

