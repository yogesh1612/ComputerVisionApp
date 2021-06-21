server <- shinyServer(function(input, output,session) {
  
 
    #----Authentication-----#
    
    observeEvent(input$authenticate,{
      ep <<- input$end_point
      key <<- input$key
    
      sendSweetAlert(
        session = session,
        title = "Success !!",
        text = "Authorized",
        type = "success"
      )
      print(ep)
      
    }
    )
  
  
    vis1 <- reactive({computervision_endpoint(
      url=ep,
      key=key
    )})
 
    
    observeEvent(input$analyze,{
      if (is.null(input$file)){
        #print("hehwe")
        return(NULL)
      }else{
        img <- readBin(input$file$datapath,"raw",file.info(input$file$datapath)$size)
        #print(img)
      }
      output$img_an_results <- renderPrint({
        if(input$method=="ANALYZE_IMAGE"){
          t <- analyze(vis1(), img)
          t
        }else{
          t <- analyze(vis1(), img,feature_types = input$method)
          t
        }
  
      })
      
    })
  
  
 # print(vis1()$url$hostname)
  
  output$up_img <- renderImage({
   # print(vis1())
    if (is.null(input$file)) { 
      oi <- NULL
      
    }else{
      oi <- readImage(input$file$datapath)
    }
    
    writeImage(oi,"img.jpeg",quality=100)
    filename <- normalizePath(file.path('./',paste0('img','.jpeg')))
    list(src = filename,contentType = "image/jpeg",width = 400,height = 300)
    
    
  }, deleteFile = FALSE)
  
  
})