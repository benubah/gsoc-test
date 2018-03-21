if (!require("devtools")) install.packages("devtools")
devtools::install_github("Kohze/fireData")

# To download the mtcars dataframe
download(projectURL = "https://firedata-b0e54.firebaseio.com/", fileName = "main/-KxwWNTVdplXFRZwGMkH")

# TO create a user
createUser(projectAPI = "AIzaSyCEax0uTEUeBotp6XR4pG_QxneX8d-EGvs", email = "ben@rpowerlabs.org", password = "c25g4188" )

#authorize a user to obtain token
authData <- auth(projectAPI = "AIzaSyCEax0uTEUeBotp6XR4pG_QxneX8d-EGvs", email = "ben@rpowerlabs.org", password = "c25g4188")

# upload back mtcars to my firebase cloud account
upload(mtcars, projectURL = "https://gsocprj.firebaseio.com", directory = "main", token = authData$idToken)
#returns  "main/-L87OJd63lF0ji2BJBRf"

# download it again - proof that it uploaded
download(projectURL = "https://gsocprj.firebaseio.com/", fileName = "main/-L87OJd63lF0ji2BJBRf", token = authData$idToken)
