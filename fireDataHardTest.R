# For upload function
\examples{
  
  #example uploading mtcars data-frame to firebase
  upload(x = mtcars, projectURL = "https://firedata-b0e54.firebaseio.com/", directory = "main")
  
  \donttest{
     upload example where write access is restricted to registered users only. Replace token with idtoken obtained by calling the
     auth() function
     
    upload(x = mtcars, projectURL = "https://firedata-b0e54.firebaseio.com/", directory = "main", token = "your token")
    
  }
  
}

# For download function
\examples{
  
  #example downloading mtcars data-frame from firebase using fireData
  download(projectURL = "https://firedata-b0e54.firebaseio.com/", fileName = "main/-KxwWNTVdplXFRZwGMkH")
  
  \donttest{
     download example where read access is restricted to registered users only. Replace token with idToken obtained by calling the
     auth() function
     
    download(projectURL = "https://firedata-b0e54.firebaseio.com/", fileName = "main/-KxwWNTVdplXFRZwGMkH", token = "")
    
  }
  
}

# For resetPassword function
\examples{
  
  \donttest{
    # reset password example. 
    resetPassword(projectAPI = "AIzaSyAjZLO9-CRV3gObpwdFz-k8AiTOxHSBmdc", email = "useYourOwn@email.com")
  }
}

# For dataBackup function
\examples{
    #database backup example
dataBackup(projectURL = "https://firedata-efa5a.firebaseio.com", secretKey = "2bYA6k72wKna90MqPGa6yuMG7jAysoDJZwJqYXsm", "test.json")

 \donttest{
   dataBackup(projectURL = "your project URL", secretKey = "your secret Key", "yourfile.json")
  }
}
