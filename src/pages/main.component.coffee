import { Component } from '@angular/core'
import { StartPage } from './start.component'

export class MainPage
    constructor: ->
        @rootPage = StartPage

    @annotations = [
        new Component
            selector: 'testapp'
            template: '<ion-nav [root]="rootPage"></ion-nav>'
    ]
