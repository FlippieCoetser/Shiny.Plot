Plot.View <- \(id) {
  ns <- NS(id)
  tagList(
    fluidRow(
      box(
        title = div(icon("house")," Settings"),
        status = "primary",
        solidHeader = TRUE,
        numericInput(ns('x.min'), 'x.min', 0, 0, 10000),
        numericInput(ns('x.max'), 'x.max', 4000, 1000, 10000),
        numericInput(ns('y.min'), 'y.min', 0, 0, 10000),
        numericInput(ns('y.max'), 'y.max', 2700, 1000, 10000),
        numericInput(ns('margin.bottom'), 'margin.bottom', 0, 0, 10),
        numericInput(ns('margin.left'), 'margin.left', 0, 0, 10),
        numericInput(ns('margin.top'), 'margin.top', 0, 0, 10),
        numericInput(ns('margin.right'), 'margin.right', 0, 0, 10)
      ),
      box(
        title = div(icon("house")," Plot"),
        status = "primary",
        solidHeader = TRUE,
        p("container in purple"),
        p("plot frame in black"),
        p("plot xlim and ylim in red"),
        p("content in blue"),
        div(
          plotOutput(ns("Visualizer")),
          style = "border: 1px solid #800080"  
        )
        
      )
    )
  )
}