
#-----------| AMP REST API |-----------#

# DEFINITION
# utilize deeplink.com API

# AUTHORS
# Mechelle Warneke <- c(
# Email   = "mechellewarneke@gmail.com",
# Website = "mechellewarneke.com",
# BVACCEL = c(
#         Email    = "mechelle@bvaccel.com",
#         Position = "XO Strategist | Technical Web Analyst"
# )
# )

# Hana Omori <- c(
# Email   = "hana.beth.omori@gmail.com",
# Website = "hanaomori.com",
# SEER = c(
#         Email    = "hanao@seerinteractive.com",
#         Position = "Technical SEO Account Manager"
# )
# )

# AMP REST API R: v1.1
# COPYRIGHT 2017
# LICENSES: MIT ( https://opensource.org/licenses/MIT )

#------------| Install Dependencies |--------------#

listPackages <- c(
  "httr",
  "curl",
  "jsonlite")

data.frame(
  Package        = listPackages,
  Loaded         = sapply(listPackages, require,
                          character.only = TRUE))

#-----------| AMP API URL |-----------#

url <- paste0(

	# -- AMP API URL -- #
	"https://searchconsole.googleapis.com/v1/urlTestingTools/mobileFriendlyTest:run?", # modify as needed

	# -- AMP API PARAMETERS -- #
	# API KEY
	"key=", # Do not modify
	"AIzaSyCJabY9hmz-ew2O1kihQLyrJrpEanNN5Qs" # modify

	)

#-----------| Headers |-----------#

headers <- list(

	# -- URL TO RUN TEST ON -- #
	url = "https://www.amerigas.com" # modify
	)

#-----------| Run POST |-----------#

x <- POST(url, 
	body   = headers, 
	encode = "json")

#-----------| Get Data |-----------#

data <- fromJSON(rawToChar(x$content))

#-----------| Results |-----------#

status <- data$testStatus$status
mobileFriendliness <- data$mobileFriendliness
resourceIssues <- data$resourceIssues

#-----------| FOOTER | Sandbox |-----------#