// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"

import 'cocoon' 
import "controllers"
import "@nathanvda/cocoon"
import "cocoon-js"
import { Application } from "@hotwired/stimulus"

const application = Application.start()

import jQuery from "jquery"
//= require cocoon
require("jquery")
require("@nathanvda/cocoon")
// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application
window.jQuery = jQuery
window.$ = jQuery

export { application }
