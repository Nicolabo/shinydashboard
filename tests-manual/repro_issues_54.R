## Tries to reproduce Github Issue: https://github.com/rstudio/shinydashboard/issues/54

# library(shiny)
# library(shinydashboardMB)
#
# sidebar <- dashboardSidebar(
#   sidebarMenu(menuItem("foo",
#                        menuSubItem("foo_"), tabName = "tabfoo"))
# )
#
#
# ui <- dashboardPage(
#   dashboardHeader(),
#   sidebar,
#   dashboardBody()
# )
#
# server <- function(input, output) {}
#
# shinyApp(ui, server)

# Not working example

library(shinydashboardMB)
library(shiny)

sidebar <- dashboardSidebar(
  sidebarMenuOutput("sbMenu")
)


ui <- dashboardPage(
  dashboardHeader(),
  sidebar,
  dashboardBody()
)

server <- function(input, output) {
  output$sbMenu <- renderMenu({
    sidebarMenu(menuItem("foo", menuSubItem("foo_"), tabName = "tabfoo"))
  })
}

shinyApp(ui, server)
