library(shiny)
library(markdown)
library(EBImage)
library("shinyWidgets")

shinyUI(fluidPage(
  
  title = "Computer Vision App",
  titlePanel(title=div(img(src="logo.png",align='right'),"Computer Vision App")),
  sidebarPanel(
    source("scripts//uiInput.R",local = TRUE)[[1]],    
    conditionalPanel(condition="input.tabselected==2",
                     selectInput('method', 'Detection Method:',
                                 c('Analyze Image' = 'ANALYZE_IMAGE',
                                   'Categorize Image' = 'Categories',
                                   'Describe Image' = 'Description',
                                   'Detect Objects' = 'Objects',
                                   'Detect Brands' = "Brands",
                                   'Tag Image' = 'Tags'
                                 )),
                     actionButton("analyze","Analyze")
    )
    
  ),
  mainPanel(
    # recommend review the syntax for tabsetPanel() & tabPanel() for better understanding
    # id argument is important in the tabsetPanel()
    # value argument is important in the tabPanle()
    tabsetPanel(
      tabPanel("Overview & Example Dataset", value=1, 
               includeMarkdown("overview.md")
      ),
      tabPanel("Image Analysis", value=2,
               h5("Uploaded Image"),
               imageOutput("up_img"),
               hr(),
               h5("Results"),
               verbatimTextOutput("img_an_results")
               
      ),
      #tabPanel("Face Analysis", value=3),
      id = "tabselected"
    )
  )
))
  
  