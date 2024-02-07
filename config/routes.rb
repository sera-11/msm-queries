Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
end

#------#
#To commit:
#git add .
#git commit -a -m "message"
#git push
