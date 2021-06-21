conditionalPanel(condition="input.tabselected==1",
                 textInput("end_point", "Enter API end point",value = ""),
                 passwordInput("key", "Enter Key",value = ""),
                 actionButton("authenticate", "Authenticate", icon("submit")),
                 hr(),
                 fileInput(inputId = "file",label = "Upload Image",multiple = FALSE,accept = "image/*"),
                 #p("-------OR-------"),
                 #textInput("url", label = "Enter Image URL", value = ""),
                 #actionButton("load_image","Load Image")
)
