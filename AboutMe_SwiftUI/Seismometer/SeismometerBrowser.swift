//
//  SeismometerBrowser.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 14/8/22.
//

import SwiftUI

struct SeismometerBrowser: View {
    @StateObject private var detector = SeismometerMotionDetector(updateInterval: 0.01)

    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: NeedleSeismometer()) {
                    HStack() {
                        Image(systemName: "gauge")
                            .foregroundColor(Color.accentColor)
                            .padding()
                            .font(.title2)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Needle")
                                .font(.headline)
                            Text("A needle that responds to the device’s vibration.")
                                .font(.caption)
                        }
                        .padding(.trailing)
                    }
                }.padding([.top, .bottom])

                NavigationLink(destination: GraphSeismometer()) {
                    HStack() {
                        Image(systemName: "waveform.path.ecg.rectangle")
                            .foregroundColor(Color.accentColor)
                            .padding()
                            .font(.title2)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Graph")
                                .font(.headline)
                            Text("Watch the device’s vibrations charted on a graph. Adjust the sensitivity using a slider.")
                                .font(.caption)
                        }
                        .padding(.trailing)
                    }
                }.padding([.top, .bottom])
            }
            .listStyle(.plain)
            .navigationTitle(Text("Seismometer"))
        }
//        detail: {
//            Text("Select a Seismometer Example")
//                .foregroundColor(.secondary)
//        }
        .environmentObject(detector)
        .onAppear() {
            detector.start()
        }
        .onDisappear {
            detector.stop()
        }
    }
}

struct SeismometerBrowser_Previews: PreviewProvider {
    static var previews: some View {
        SeismometerBrowser()
    }
}
