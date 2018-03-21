#
# This is a Shiny web application to show how FireData could be used behind a
# web application built with Shiny.
# When a user uploads a csv file by selecting a file and clicking on "Upload to Firebase"
# The directory and label of the realtime database is returned and stored in
# a variable, resOut
# When the user clicks "Download From Firebase!" this same csv is retrieved from the Firebase Cloud DB
#
# There is a provision to handle Tab Separated Values and Comma Separated Values

library(shiny)

# UI definition
ui <- fluidPage(
   
   # Application title
   titlePanel("FireData Shiny Web App"),
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout(
      sidebarPanel(
         fileInput("upload", "Choose A CSV File",
                   accept = c(
                     "text/csv",
                     "text/comma-separated-values,text/plain",
                     ".csv")),
         tags$hr(),
         checkboxInput("tabsep", "Tab Separated Values", FALSE),
         actionButton("uploadButton", "Upload File to Firebase!"),
         actionButton("downButton", "Download From Firebase!")
      ),
      
      # Show output
      mainPanel(
         textOutput("uploadAction"),
         tableOutput("csvTable")
      )
   )
)

# Define server logic 
resOut <- c()
server <- function(input, output) {
   
   output$uploadAction <- renderText({
      # read csv file
     if(is.null(input$upload))
       return(NULL)
     
      if(input$tabsep == TRUE) {
        x    <- read.csv(input$upload$datapath, sep = "\t")
      } else {
        x    <- read.csv(input$upload$datapath, sep = ",")
      }
        
      if(input$uploadButton){
      #authenticate and save authentication data
      authData <- auth(projectAPI = "AIzaSyCEax0uTEUeBotp6XR4pG_QxneX8d-EGvs", email = "ben@rpowerlabs.org", password = "c25g4188")
      # upload to my firebase cloud account using token
      resOut <<- upload(x, projectURL = "https://gsocprj.firebaseio.com", directory = "main", token = authData$idToken)
      paste0("Uploaded to: ", resOut)
      }
   })
   
   output$csvTable <- renderTable({
    
     if(input$downButton){
     #authenticate and save authentication data
     authData <- auth(projectAPI = "AIzaSyCEax0uTEUeBotp6XR4pG_QxneX8d-EGvs", email = "ben@rpowerlabs.org", password = "c25g4188")
    
     # download from firebase cloud account
     download(projectURL = "https://gsocprj.firebaseio.com/", fileName = resOut, token = authData$idToken)
     
     }
   })
}

# Run the application 
shinyApp(ui = ui, server = server)

