
# global options for R
options(
  htmltools.dir.version = FALSE, 
  formatR.indent = 2, width = 55, 
  digits = 2,scipen=999, tinytex.verbose = TRUE,
  knitr.kable.NA = '',
  echo=FALSE, warning=FALSE, message=FALSE,comment="")

# global options for knitr
knitr::opts_chunk$set(fig.align='center',echo = FALSE,message = FALSE,warning = FALSE,comment="",
                      fig.width=11, fig.height=6) # Places figures on their own pages

## set big mark
### see web [ref](https://stackoverflow.com/questions/30888631/knitr-displaying-digits-of-an-integer-without-scientific-notation)

inline_hook <- function(x) {
  if (is.numeric(x)) {
    format(x, digits = 2, big.mark = " ")
  } else x
}
knitr::knit_hooks$set(inline = inline_hook)


# global options for DT
options(DT.options = list(dom ="t" ,  # pure table with no search blank
                          columnDefs = list(
                            list(className = "dt-center", targets = "_all"), # align center
                            list(visible=FALSE,targets=0) # hide index column
                            )
                          )
        )

# global options for servr pkg

options(servr.interval = 0.5) # control time to refresh the preview
options(servr.daemon = TRUE) # unlock thread when infinite moon render

# load useful pkgs
require("knitr")
library("readr")
require("rvest")
require("stringr")
require("tidyverse")
require("tidyselect")
require("ggplot2")

require("here")
require("glue")
