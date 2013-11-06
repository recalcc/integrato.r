if (length(grep("rjson",installed.packages()))==0) {
  cat("You currently do not have rjson installed. Starting the install for you..")  
  install.packages("RCurl")  
}
if (length(grep("RCurl",installed.packages()))) { 
  library(RCurl)
  library(rjson)
  lc_get_sheet <- function(sheetname,pw="",host="http://recal.cc") {
  read.table(paste(host,"/_/",sheetname,"/csv",sep=""),sep=",")
}
lc_command <- function(cmd="recalc",sheetname,pw="",host="http://recal.cc") {
  postForm(paste(host,"/_/",sheetname,sep=""),command=cmd)
}
lc_recalc <- function(sheetname,pw="",host="http://recal.cc") {
  postForm(paste(host,"/_/",sheetname,sep=""),command="recalc")
}
lc_set_cell <- function(cell,sheetname,pw="",value="",type="t",host="http://recal.cc") {
  postForm(paste(host,"/_/",sheetname,sep=""),command=paste("set ",cell," value ",type," ",value,sep=""))
}
lc_get_cell <- function(cell,sheetname,pw="",value="",type="t") {
  #TODO. 
}

# o = fromJSON(getForm("http://recal.cc/_/a/cells"))  
#str(o["A1"][[1]]$datavalue)  
} else {
cat("You currently do not have RCurl installed. Starting the install for you..")  
install.packages("RCurl")  
}

