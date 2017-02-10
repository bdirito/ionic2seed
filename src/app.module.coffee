import { NgModule } from '@angular/core'
import { BrowserModule } from '@angular/platform-browser'

import { MainPage } from "./pages/main.component"

export class AppModule
    @annotations = [
        new NgModule
            imports: [BrowserModule]
            declarations: [MainPage]
            bootstrap: [MainPage]
            entryComponents: [MainPage]
    ]
