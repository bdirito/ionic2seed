import { Component } from '@angular/core'
import { NavController } from 'ionic-angular'

import { GamePage } from './game.component'
import { SettingsPage } from './settings.component'

export class StartPage
    @annotations = [
        new Component
            template: """
                <ion-header>
                    <ion-navbar hideBackButton=true>
                        <ion-title>Ytz!</ion-title>
                    </ion-navbar>
                </ion-header>
                <ion-content>
                    <div class='center'>
                        <button ion-button (click)="newGame()">
                            New Game
                        </button>
                        <button ion-button (click)="gotoSettings()">
                            Settings
                        </button>
                    </div>
                </ion-content>
            """
            styles: [
                '.center { display: flex; align-items: center; justify-content: center; height: 100%; width: 100%; flex-direction: column; }'
            ]
    ]
    @parameters = [
        [ NavController ]
    ]

    constructor: (@navCtrl) ->

    gotoSettings: =>
        @navCtrl.push SettingsPage

    newGame: =>
        @navCtrl.push GamePage
