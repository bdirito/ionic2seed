import { NgModule } from '@angular/core'
import { BrowserModule } from '@angular/platform-browser'
import { IonicApp, IonicModule } from 'ionic-angular'

import { YtzApp } from './ytz.component'
import { GamePage } from './pages/game.component'
import { SettingsPage } from './pages/settings.component'
import { StartPage } from './pages/start.component'

import { Die } from './component/die'

export class AppModule
    @annotations = [
        new NgModule
            imports: [IonicModule.forRoot(YtzApp)]
            declarations: [
                YtzApp
                StartPage
                GamePage
                SettingsPage
                Die
            ]
            bootstrap: [IonicApp]
            entryComponents: [
                YtzApp
                StartPage
                GamePage
                SettingsPage
                Die
            ]
    ]
