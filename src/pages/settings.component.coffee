import { Component } from '@angular/core'
import { NavController } from 'ionic-angular'

export class SettingsPage
    @annotations = [
        new Component
            template: """
                <ion-header>
                    <ion-navbar>
                        <ion-title>Settings</ion-title>
                    </ion-navbar>
                </ion-header>
                settings go here
            """
    ]
    @parameters = [
        [ NavController ]
    ]

    constructor: (@navCtrl) ->
