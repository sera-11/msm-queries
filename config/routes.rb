Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })


  get( "/directors", {:controller => "directors", :action => "index"})

  get( "/directors/:id", {:controller => "directors", :action => "show"})
end

#------#
#To commit:
#git add .
#git commit -a -m "message"
#git push
