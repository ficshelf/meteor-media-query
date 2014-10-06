
if Meteor.isClient
  Meteor.startup ->
    Session.set "screensize", "small" if window.matchMedia("only screen and (min-width: 1px) and (max-width: 640px)").matches
    window.matchMedia("only screen and (min-width: 1px) and (max-width: 640px)").addListener (screensize) ->
      if screensize.matches
        Session.set "screensize", "small"
        return

    Session.set "screensize", "medium" if window.matchMedia("only screen and (min-width: 641px) and (max-width: 1023px)").matches
    window.matchMedia("only screen and (min-width: 641px) and (max-width: 1023px)").addListener (screensize) ->
      if screensize.matches
        Session.set "screensize", "medium"
        return

    Session.set "screensize", "large" if window.matchMedia("only screen and (min-width: 1024px) and (max-width: 1440px)").matches
    window.matchMedia("only screen and (min-width: 1024px) and (max-width: 1440px)").addListener (screensize) ->
      if screensize.matches
        Session.set "screensize", "large"
        return

    Session.set "screensize", "xlarge" if window.matchMedia("only screen and (min-width: 1441px) and (max-width: 1919px)").matches  
    window.matchMedia("only screen and (min-width: 1441px) and (max-width: 1919px)").addListener (screensize) ->
      if screensize.matches
        Session.set "screensize", "xlarge"
        return

    Session.set "screensize", "xxlarge" if window.matchMedia("only screen and (min-width: 1920px)").matches 
    window.matchMedia("only screen and (min-width: 1920px)").addListener (screensize) ->
      if screensize.matches
        Session.set "screensize", "xxlarge"
        return

    if window.matchMedia("only screen and (orientation: portrait)").matches
      Session.set "orientation", "portrait"
    else
        # The device is currently in landscape orientation 
      Session.set "orientation", "landscape"
    window.matchMedia("only screen and (orientation: portrait)").addListener (orientation) ->
      if orientation.matches    
        # The device is currently in portrait orientation 
        Session.set "orientation","portrait"
      else
        # The device is currently in landscape orientation 
        Session.set "orientation","landscape"
      return

    retina = "only screen and (-webkit-min-device-pixel-ratio: 2)," + "only screen and (min--moz-device-pixel-ratio: 2)," + "only screen and (-o-min-device-pixel-ratio: 2/1)," + "only screen and (min-device-pixel-ratio: 2)," + "only screen and (min-resolution: 192dpi)," + "only screen and (min-resolution: 2dppx)"
    if window.matchMedia(retina).matches
      Session.set "retina", true
    else
        # The device is currently in landscape orientation 
      Session.set "retina", false


    UI.registerHelper "screensize", ->
      Session.get "screensize"

    UI.registerHelper "screensize_small", ->
      (Session.get "screensize") is "small"

    UI.registerHelper "screensize_medium", ->
      (Session.get "screensize") is "medium"

    UI.registerHelper "screensize_large", ->
      (Session.get "screensize") is "large"

    UI.registerHelper "screensize_xlarge", ->
      (Session.get "screensize") is "xlarge"

    UI.registerHelper "screensize_xxlarge", ->
      (Session.get "screensize") is "xxlarge"


    UI.registerHelper "orientation", ->
      Session.get "orientation"

    UI.registerHelper "retina", ->
      Session.get "retina"

    UI.registerHelper "portrait", ->
      (Session.get "orientation") is "portrait"   

    UI.registerHelper "landscape", ->
      (Session.get "orientation") is "landscape"     
  return