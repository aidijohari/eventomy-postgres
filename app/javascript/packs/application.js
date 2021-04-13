// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

global.$ = require('jquery')

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

global.toastr = require("toastr")

import 'bootstrap'
import Glide from "@glidejs/glide"


window.addEventListener('load', () => {
    
    const glide = new Glide('.glide', {
       type: "carousel",
       startAt: 1,
       perView: 1,
       direction: "rtl",
       keyboard: true,
       gap: 0,
       autoplay: "6000",
    })
    
    glide.mount({ })

})

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

// console.log("motherfucker 2");