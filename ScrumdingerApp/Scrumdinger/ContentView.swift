//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Ana Carolina Martins Pessoa on 06/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack(alignment: .center) {
                    Label("Seconds Elapsed", systemImage: "circle" ).labelStyle(TitleOnlyLabelStyle())
                        .font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                        .padding(.trailing)
                        .font(.caption)
                }
                Spacer()
                VStack {
                    Label("Seconds Remaining", systemImage: "circle")
                        .labelStyle(TitleOnlyLabelStyle())
                        .font(.caption)
                    Label("600", systemImage: "hourglass.tophalf.fill")
                        .font(.caption)
                        .padding(.leading)
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityLabel("1 minute")
            Circle()
            HStack {
                Label("Speaker 1 of 3", systemImage: "circle").labelStyle(TitleOnlyLabelStyle())
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }
        .padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
