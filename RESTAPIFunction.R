
#-----------| Deepcrawl Authentication & Extraction |-----------#

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

# DEEPLINK API R: v1.1
# COPYRIGHT 2016
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

