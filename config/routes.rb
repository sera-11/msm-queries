Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })


  get( "/directors", {:controller => "directors", :action => "index"})

  get( "/directors/:id", {:controller => "directors", :action => "show"})

  get( "/movies/", {:controller => "movies", :action => "index"})

  get( "/movies/:id", {:controller => "movies", :action => "show"})

  get( "/actors/", {:controller => "actors", :action => "index"})

  get( "/actors/:id", {:controller => "actors", :action => "show"})

  get("/directors/youngest", {:controller => "directors", :action => "youngest"})

  get("/directors/oldest", {:controller => "directors", :action => "oldest"})

  


end

#------#
#To commit:
#git add .
#git commit -a -m "message"
#git push
