library(shiny)
library(phaseR)
library(deSolve)
library(yaml)

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Dynamical Systems Analysis"),
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout(
      sidebarPanel(h4("Configuration"),width = 3,
         fileInput('config',"Config File",
                   multiple = FALSE,
                   accept = ".yaml"),
         sliderInput("points",
                     "Points:",
                     min = 1,
                     max = 50,
                     value = 20)
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
         #plotOutput("nullclines")
      )
      
   )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
}

# Run the application 
shinyApp(ui = ui, server = server)

