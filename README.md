meteor-media-query
==================

Responsive design helpers for Meteor JS
---------------------------------------

Exposed Reactive Variables: device-screensize, device-retina, device-orientation

```
Possible values for **device-screensize** are:

  small, medium, large, xlarge, xxlarge

Possible values for **device-orientation** are:

  portrait, landscape
  
Possible values for **device-retina** are:

  true, false
  
```

The following helpers are exposed:
----------------------------------

```
  Template.registerHelper "screensize", ->
    Session.get "screensize"
    
  Template.registerHelper "screensize_small", ->
    (Session.get "screensize") is "small"
    
  Template.registerHelper "screensize_medium", ->
    (Session.get "screensize") is "medium"
    
  Template.registerHelper "screensize_large", ->
    (Session.get "screensize") is "large"
    
  Template.registerHelper "screensize_xlarge", ->
    (Session.get "screensize") is "xlarge"
    
  Template.registerHelper "screensize_xxlarge", ->
    (Session.get "screensize") is "xxlarge"
        
  Template.registerHelper "orientation", ->
    Session.get "orientation"
    
  Template.registerHelper "retina", ->
    Session.get "retina"
    
  Template.registerHelper "portrait", ->
    (Session.get "orientation") is "portrait"   
  
  Template.registerHelper "landscape", ->
    (Session.get "orientation") is "landscape"     
```
