
if Meteor.isClient
  Meteor.startup ->
    Session.set "device-screensize", "small" if window.matchMedia("only screen and (min-width: 1px) and (max-width: 640px)").matches
    window.matchMedia("only screen and (min-width: 1px) and (max-width: 640px)").addListener (screensize) ->
      if screensize.matches
        Session.set "device-screensize", "small"
        return

    Session.set "device-screensize", "medium" if window.matchMedia("only screen and (min-width: 641px) and (max-width: 1023px)").matches
    window.matchMedia("only screen and (min-width: 641px) and (max-width: 1023px)").addListener (screensize) ->
      if screensize.matches
        Session.set "device-screensize", "medium"
        return

    Session.set "device-screensize", "large" if window.matchMedia("only screen and (min-width: 1024px) and (max-width: 1440px)").matches
    window.matchMedia("only screen and (min-width: 1024px) and (max-width: 1440px)").addListener (screensize) ->
      if screensize.matches
        Session.set "device-screensize", "large"
        return

    Session.set "device-screensize", "xlarge" if window.matchMedia("only screen and (min-width: 1441px) and (max-width: 1919px)").matches  
    window.matchMedia("only screen and (min-width: 1441px) and (max-width: 1919px)").addListener (screensize) ->
      if screensize.matches
        Session.set "device-screensize", "xlarge"
        return

    Session.set "device-screensize", "xxlarge" if window.matchMedia("only screen and (min-width: 1920px)").matches 
    window.matchMedia("only screen and (min-width: 1920px)").addListener (screensize) ->
      if screensize.matches
        Session.set "device-screensize", "xxlarge"
        return

    if window.matchMedia("only screen and (orientation: portrait)").matches
      Session.set "device-orientation", "portrait"
    else
        # The device is currently in landscape orientation 
      Session.set "device-orientation", "landscape"
    window.matchMedia("only screen and (orientation: portrait)").addListener (orientation) ->
      if orientation.matches    
        # The device is currently in portrait orientation 
        Session.set "device-orientation","portrait"
      else
        # The device is currently in landscape orientation 
        Session.set "device-orientation","landscape"
      return

    retina = "only screen and (-webkit-min-device-pixel-ratio: 2)," + "only screen and (min--moz-device-pixel-ratio: 2)," + "only screen and (-o-min-device-pixel-ratio: 2/1)," + "only screen and (min-device-pixel-ratio: 2)," + "only screen and (min-resolution: 192dpi)," + "only screen and (min-resolution: 2dppx)"
    if window.matchMedia(retina).matches
      Session.set "device-retina", true
    else
        # The device is currently in landscape orientation 
      Session.set "device-retina", false


    UI.registerHelper "screensize", ->
      Session.get "device-screensize"

    UI.registerHelper "screensize_small", ->
      (Session.get "device-screensize") is "small"

    UI.registerHelper "screensize_medium", ->
      (Session.get "device-screensize") is "medium"

    UI.registerHelper "screensize_large", ->
      (Session.get "device-screensize") is "large"

    UI.registerHelper "screensize_xlarge", ->
      (Session.get "device-screensize") is "xlarge"

    UI.registerHelper "screensize_xxlarge", ->
      (Session.get "device-screensize") is "xxlarge"


    UI.registerHelper "orientation", ->
      Session.get "device-orientation"

    UI.registerHelper "retina", ->
      Session.get "device-retina"

    UI.registerHelper "portrait", ->
      (Session.get "device-orientation") is "portrait"   

    UI.registerHelper "landscape", ->
      (Session.get "device-orientation") is "landscape"     
  return