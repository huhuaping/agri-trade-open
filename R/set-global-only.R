
# global options for R
options(
  knitr.kable.NA = '',
  digits = 2,scipen=999,
  echo=FALSE, warning=FALSE, message=FALSE,comment="")


# global options for knitr
knitr::opts_chunk$set(fig.align='center',echo = FALSE,message = FALSE,comment="",
                      fig.width=11, fig.height=5.5) # Places figures on their own pages

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

