
#ReadFile
Sys.setlocale(category="LC_ALL", locale = "English_United States.1252")
Sys.getlocale(category="LC_ALL")

path <- "./rawData/"
fileNames <- list.files(path, full.names = FALSE)#讀取清單
fileName <- fileNames[1]
if(grepl("csv",fileName))
{
  K5Min <- read.table(paste(path,fileName,sep="/"),sep=",",check.names = FALSE)
  colnames(K5Min) <- c("Time", "Open", "High","Low","Close","Volume")
}

