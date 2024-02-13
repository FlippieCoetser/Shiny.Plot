Plot.Controller <- \(id, data) {
  moduleServer(
    id,
    \(input, output, session) {
      # Settings
      x.min <- reactive({ input[['x.min']] })
      x.max <- reactive({ input[['x.max']] })

      y.min <- reactive({ input[['y.min']] })
      y.max <- reactive({ input[['y.max']] })

      margin.bottom <- reactive({ input[['margin.bottom']] })
      margin.left   <- reactive({ input[['margin.left']]   })
      margin.top    <- reactive({ input[['margin.top']]    })
      margin.right  <- reactive({ input[['margin.right']]  })

      # Output Bindings
      output[["Visualizer"]]  <- renderPlot({
        x.range <- c(x.min(), x.max())
        y.range <- c(y.min(), y.max())

        margins <- c(margin.bottom(), margin.left(), margin.top(), margin.right())

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

          frame <- data.frame(
            x = c(0, x.max(), x.max(), 0, 0),
            y = c(0, 0, y.max(), y.max(), 0)
          )
          frame |> polygon(border = 'red')

          square <- data.frame(
            x = c(500, 1500, 1500, 500),
            y = c(500, 500, 1500, 1500)
          )
          square |> polygon(square, col = 'blue')
      })
    }
  )
}
