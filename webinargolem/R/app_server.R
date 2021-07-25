#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # Your application server logic 
  mod_my_first_module_server("my_first_module_1")
  mod_my_other_module_server("my_other_module_1")
  observeEvent(input$alert,{
    golem::invoke_js("alert", "yeay")
  })
  
}
