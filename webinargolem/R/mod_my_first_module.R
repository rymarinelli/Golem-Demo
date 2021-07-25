#' my_first_module UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_my_first_module_ui <- function(id){
  ns <- NS(id)
  tagList(
    h2("A plot"),
    plotOutput(ns("plot"))
 
  )
}
    
#' my_first_module Server Functions
#'
#' @noRd 
mod_my_first_module_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    x <- random_num()
    output$plot <- renderPlot({
      plot(iris[,x])
    })
  })
}
    
## To be copied in the UI
# mod_my_first_module_ui("my_first_module_1")
    
## To be copied in the server
# mod_my_first_module_server("my_first_module_1")
