meteor-media-query
==================

Responsive design helpers for Meteor JS
---------------------------------------

Exposed Reactive Variables: screensize, retina, orientation


The following helpers are exposed:
----------------------------------

```
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
```
