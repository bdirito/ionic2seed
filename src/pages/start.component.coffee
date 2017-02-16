import { Component } from '@angular/core'

export class StartPage
    @annotations = [
        new Component
            template: """
                <ion-header>
                    <ion-navbar>
                        <ion-title>Ytz!</ion-title>
                    </ion-navbar>
                </ion-header>
                <ion-content>
                    <button ion-button (click)="newGame()">
                        New Game
                    </button>
                </ion-content>
            """
    ]

    constructor: ->

