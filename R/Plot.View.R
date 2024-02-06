Plot.View <- \(id) {
  ns <- NS(id)
  tagList(
    fluidRow(
      box(
        title = div(icon("house")," Plot"),
        status = "primary",
        solidHeader = TRUE,
        plotOutput(ns("Visualizer"))
      )
    )
  )
}