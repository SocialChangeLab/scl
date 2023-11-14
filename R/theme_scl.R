# http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'


# scl_colors <- c("logo" = "#3653C8", "font" = "#243937", "#0B2E6E", "#0F4AB2")

#' SCL Theming Function
#'
#' @param base_size Size of font
#' @param base_family Sans or Serif
#' @export
theme_scl <- function(
    base_size = 12,
    base_family = "",
    plot_title_size = 20,
    plot_title_color = scl::scl_colors["logo"]) {
  ggplot2::theme_minimal(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      plot.background = ggplot2::element_rect(colour = "white"), # removed by minimal
      text = ggplot2::element_text(color = "black"),
      axis.text = ggplot2::element_text(color = "black"), # break labels
      axis.title = ggplot2::element_text(color = "black", size = base_size), # axis labels
      axis.line = ggplot2::element_line(),
      legend.text = ggplot2::element_text(color = "black"),
      plot.title = ggplot2::element_text(color = plot_title_color),
      plot.caption = ggplot2::element_text(color = scl_colors["font"], size = 9, hjust = 0)
    )
}

# theme(
#   # break labels
#   axis.text = element_text(
#     color = "black", lineheight = 0.7
#     # margin(t = 5, r = 5, b = 5, l = 5, unit = "px")
#   ),
#   axis.ticks = element_line(colour = "black"),
#   axis.ticks.length = unit(half_line / 2, "pt"), axis.ticks.length.x = NULL,
#   axis.ticks.length.x.top = NULL, axis.ticks.length.x.bottom = NULL,
#   axis.ticks.length.y = NULL, axis.ticks.length.y.left = NULL,
#   axis.ticks.length.y.right = NULL,
#   legend.position = "none"
# )

# https://github.com/crsh/papaja/blob/1c488f73598ae088a4f0201e767aaa87f28387d3/R/theme_apa.R
