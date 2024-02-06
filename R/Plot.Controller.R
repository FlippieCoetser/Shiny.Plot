Plot.Controller <- \(id, data) {
  moduleServer(
    id,
    \(input, output, session) {
      # Settings
      x.min   <- 0
      x.max   <- 4000
      x.range <- c(x.min, x.max)

      y.min <- 0
      y.max <- 2700
      y.range <- c(y.min, y.max)

      margins <- c(0, 0, 0, 0)

      # Output Bindings
      output[["Visualizer"]]  <- renderPlot({

      par(mar = margins)

      plot(
        0:1,
        0:1,
        type = "n",
        xlim = x.range,
        ylim = y.range,
        asp = 1,
        axes = FALSE,
        frame.plot = TRUE,
        xaxs = "i",
        yaxs = "i")

        polygon(c(0,x.max,x.max,0,0), c(0,0,y.max,y.max,0))

        polygon(c(500, 2000, 2000, 500), c(500, 500, 2000, 2000))
      })
    }
  )
}
