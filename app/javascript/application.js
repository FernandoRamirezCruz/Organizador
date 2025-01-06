// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import { Application } from "@hotwired/stimulus"

const application = Application.start()

import jQuery from "jquery"
import "bootstrap"
import "roboto-fontfaceº"
import "cocoon-js"
import "@nathanvda/cocoon"
import "../src/stylesheets/application"


// Configure Stimulus development experience
application.debug = false
window.Stimulus = application
window.jQuery = jQuery
window.$ = jQuery

export { application }

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
