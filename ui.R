header  <- dashboardHeader(
  title = "Plot Meta-Config"
)
sidebar <- dashboardSidebar(
  disable = TRUE
)
body    <- dashboardBody(
  Plot.View("Design")
)

dashboardPage(
  header,
  sidebar,
  body
)