//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Ana Carolina Martins Pessoa on 06/11/22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
