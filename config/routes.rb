Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#DELETE
  get("/delete_directors/:id", {:controller => "director", :action => "destroy"})

  #CREATE

    get("/directors/new_form", {:controller => "director", :action => "new_form"})
    get("/directors/create_row", {:controller => "director", :action => "create_row"})
  #EDIT
  get("/directors/:id/edit_form", {:controller => "director", :action => "edit_form"})
  get("/directors/update_row/:id", {:controller => "director", :action => "update_row"})
#READ
  get("/", {:controller => "director", :action => "index"})
  get("/directors", {:controller => "director", :action => "index"})
  get("/directors/:id", {:controller => "director", :action => "show"})

  #ACTORSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS

  #DELETE
    get("/delete_actors/:id", {:controller => "actor", :action => "destroy"})
  #CREATE
    get("/actors/new_form", {:controller => "actor", :action => "new_form"})
    get("/actors/create_row", {:controller => "actor", :action => "create_row"})
    #EDIT
    get("/actors/:id/edit_form", {:controller => "actor", :action => "edit_form"})
    get("/actors/update_row/:id", {:controller => "actor", :action => "update_row"})
  #READ
    # get("/", {:controller => "actor", :action => "index"})
    get("/actors", {:controller => "actor", :action => "index"})
    get("/actors/:id", {:controller => "actor", :action => "show"})

    #MOVIESSSSSS
    get("/movies/new_form", {:controller => "movie", :action => "new_form"})
    get("/movies/create_row", {:controller => "movie", :action => "create_row"})
    #EDIT
    get("/movies/:id/edit_form", {:controller => "movie", :action => "edit_form"})
    get("/movies/update_row/:id", {:controller => "movie", :action => "update_row"})
  #READ
    # get("/", {:controller => "movie", :action => "index"})
    get("/movies", {:controller => "movie", :action => "index"})
    get("/movies/:id", {:controller => "movie", :action => "show"})
  #DELETE
    get("/delete_movies/:id", {:controller => "movie", :action => "destroy"})

end
