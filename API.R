install.packages("httr")
library(httr)

AccidentData <- GET("http://www.data.gov.my/data/api/action/datastore_search?resource_id=458a87bd-50ee-4198-9124-039b368e935f&limit=5")
content(AccidentData)

#info
AccidentData$url
AccidentData$headers
AccidentData$date
AccidentData$request

#using content()
AccidentDataContent <- content(AccidentData)

#accessing records
AccidentDataContent$result$records[[1]]
AccidentDataContent$result$records[[3]]

