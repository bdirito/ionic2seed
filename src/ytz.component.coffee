import { Component } from '@angular/core'
import { Platform } from 'ionic-angular'
import { StatusBar, Splashscreen } from 'ionic-native'

import { StartPage } from './pages/start.component'

export class YtzApp
    @annotations = [
        new Component
            template: "<ion-nav [root]='rootPage'></ion-nav>"
    ]
    @parameters = [
        [Platform]
    ]

    constructor: (platform) ->
        @rootPage = StartPage

        platform.ready()
        .then ->
            StatusBar.styleDefault()
            Splashscreen.hide()
