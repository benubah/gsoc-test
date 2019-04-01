
# code to retrieve R user groups on meetup.com
# Somehow, the two urls return different number of groups

Sys.setenv(MEETUP_KEY = "")

api_key <- Sys.getenv(MEETUP_KEY)

url <-"R-User-Group"
groups <- find_groups(url, api_key = api_key)

url2 <-"r-project-for-statistical-computing"
groups2 <- find_groups(url2, api_key = api_key)
