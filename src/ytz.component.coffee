import { Component } from '@angular/core'
import { Platform } from 'ionic-angular'
import { StatusBar, Splashscreen } from 'ionic-native'

import { MainPage } from './pages/main.component'

export class YtzApp
    @annotations = [
        new Component
            template: "abc"
    ]

    constructor: (platform) ->
        @rootPage = MainPage

        platform.ready()
        .then ->
            StatusBar.styleDefault()
            Splashscreen.hide()
