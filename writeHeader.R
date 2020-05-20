#first way of reading header and writing new header file 
library(readr)

headerFileToString <- function(rFilePath) {
  codeString <-read_file(rFilePath)
  return(codeString)
}

writeRFile <- function(fileName,rHeaderFile){
  if(!file.exists(fileName)){
    template <- headerFileToString(rHeaderFile)
    fileConn <- file(fileName)
    writeLines(
      template,
      fileConn
      )
    close(fileConn)
  }
  else(
    print("destination file already exists")
  )
}

#writeRFile("header2.R", "header.R")


#second way by copying header file as new file
writeRfile2 <- function(fileName, rHeaderFile){
  if(!file.exists(fileName)){
    file.copy(rHeaderFile,fileName)
  }
  else(
    print("destination file already exists")
  )
}
#writeRfile2("header3.R", "header.R")


