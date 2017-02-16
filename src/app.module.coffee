import { NgModule } from '@angular/core'
import { BrowserModule } from '@angular/platform-browser'
import { IonicApp, IonicModule } from 'ionic-angular'

import { YtzApp } from './ytz.component'

export class AppModule
    @annotations = [
        new NgModule
            imports: [IonicModule.forRoot(YtzApp)]
            declarations: [YtzApp]
            bootstrap: [IonicApp]
            entryComponents: [YtzApp]
    ]
