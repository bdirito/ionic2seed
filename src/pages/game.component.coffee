import { Component } from '@angular/core'
#import { Die } from '../component/die'
import { List } from 'immutable'

class Die
    constructor: (@value=5, @locked=false) ->

export class GamePage
    @annotations = [
        new Component
            template: """
                <div>card</div>
                <div class='dice'>
                    <die [value]='die.value' [locked]='die.locked'(click)="toggleDieLock(die)" *ngFor="let die of dice"></die>
                </div>
                <button ion-button (click)="rollAllDice()">Roll Die</button>
            """
            styles: [
                ".dice { display: flex; }"
                "die { margin: 2px; width: inherit; }"
            ]
    ]

    NUM_DIE: 5
    rand: -> Math.floor( Math.random() * 7 )

    constructor: ->
        @dice = ( new Die @rand() for [1..@NUM_DIE] )
        i = 0

    rollAllDice: =>
        @dice = ( (if die.locked then die else new Die @rand() ) for die in @dice )

    toggleDieLock: (die) ->
        die.locked = not die.locked
