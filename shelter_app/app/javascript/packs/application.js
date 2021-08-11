// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import shelters_index from '../src/shelters/index'
import shelters_create from '../src/shelters/create'
import shelters_edit from '../src/shelters/edit'
import shelters_update from '../src/shelters/update'





Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener('turbolinks:load', function(e){
     shelters_index(e)
})


document.addEventListener('click', function(e) {
    if (e.target.matches('.shelters_edit')) {
        e.preventDefault()
        shelters_edit(e)
    }
})





document.addEventListener('submit', function(e) {
    if (e.target.matches('.shelters_form')) {
        e.preventDefault()
        shelters_create(e)
    }

    if (e.target.matches('.shelters_update')) {
        e.preventDefault()
        shelters_update(e)
    }
})






