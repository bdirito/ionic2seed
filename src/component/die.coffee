import { Component } from '@angular/core'

export class Die
    @annotations = [
        new Component
            selector: 'die'
            template: """
                <div class='die' [ngClass]="{'locked': locked}"><div>{{ value }}</div></div>
            """
            inputs: [ 'value', 'locked' ]
            styles: [
                '.die { border: 1px solid black; height: 20px; width: 20px; display: flex; align-items: center; justify-content: center; }'
                '.locked { background-color: lightblue }'
            ]
    ]

    constructor: ->
