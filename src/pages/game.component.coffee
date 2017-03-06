import { Component } from '@angular/core'

export class GamePage
    @annotations = [
        new Component
            template: """
                <div>card</div>
                <div>dice</div>
            """
    ]

    constructor: ->
