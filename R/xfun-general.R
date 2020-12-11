#----- fun switch window for RSelenium--------
# dr=remDr
switch.window <- function (dr, windowId) {
  qpath <- sprintf("%s/session/%s/window", dr$serverURL, 
                   dr$sessionInfo[["id"]])
  remDr$queryRD(qpath, "POST", qdata = list(handle = windowId))
}
# ---usage---
# windows_handles <- remDr$getWindowHandles()
# fun_switch(dr = remDr, windowId = windows_handles[[2]])


# functon for find webelement and click it

click.webelm<- function(dr, pathx){
  dr$findElement(using = "xpath", value = pathx)$clickElement()
}


click.webelm2 <- function(dr, pathx){
  webelem <- dr$findElement(using = "xpath", pathx)
  remDr$executeScript("arguments[0].click()", args = list(webelem))
}

# function send keys to web element
send.webelm <- function(dr, pathx, txt){
  dr$findElement(using = "xpath", value = pathx)$clearElement()
  dr$findElement(using = "xpath", value = pathx)$sendKeysToElement(list(txt))
}

#----- fun Fill empty cell --------
# Fill empty cell with value of last non-empty cell
# see [ref](https://stackoverflow.com/questions/38470355/r-fill-empty-cell-with-value-of-last-non-empty-cell)
## df: data.frame
## col: column index(integer) or  names (characters)
fill.tblcell <- function(df, col){
  while(length(ind <- which(df[,col] == "")) > 0){
    df[ind,col] <- df[ind-1,col]
  }
  return(df)
}

# ---usage---
# tbl_tidy <- fill.tblcell(df = tbl_body, "var") 

