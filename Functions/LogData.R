LogData <- function(variables = NULL) {
  data = c()
  
  for (number in 1:3) {
    df = GetData(number)
    len = length(df[,1])
    for (el in colnames(df)) { data[[el]] = df[[el]][len] }
  }
  if (!is.null(variables)) {
    rm(list=setdiff(ls(), c("data","variables")))
    return(data[variables])
  }
  rm(list=setdiff(ls(), "data"))
  return(data)
}

GetData <- function(number) {
  file = paste0("./Data/data", number, ".lis")
  headers = read.table(file, skip = 1, header = F, nrows = 1, as.is = T)
  data = read.table(file, skip = 3, header = F)
  colnames(data)= c("'TIME'", GetSiteNames(number))
  rm(list=setdiff(ls(), "data"))
  return(data)
}

GetSiteNames <- function(number) {
  file <- "./Century/boav.100"
  
  number <- 1 + (number-1)*40
  aux <- read.delim(file, header = FALSE, sep = "\t", dec = ".")
  aux = aux[,1]
  
  data = c()
  for (i in 110:length(aux)) {
    if (grepl("'", aux[i], fixed = TRUE)) { 
      var <- str_extract(aux[i], "\'.*\'")
      data <- append(data, var) 
    }
  }
  
  data = append(data[1:8], data[21:length(data)]) # rces1
  data = append(data[1:12], data[19:length(data)]) # rcelit
  if (number + 40 < length(data)) { return(data[number:(number+39)]) }
  if (number < length(data)) { 
    data = append(data[number:length(data)], "'SOMSC'")
    rm(list=setdiff(ls(), "data"))
    return(data) 
  }
  rm(list=setdiff(ls(), "data"))
  return(data[(length(data)-39):length(data)])
  # máximo de 40 variáveis
}