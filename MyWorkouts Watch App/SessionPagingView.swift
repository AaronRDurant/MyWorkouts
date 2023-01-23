//
//  SessionPagingView.swift
//  MyWorkouts Watch App
//
//  Created by Aaron Durant on 1/23/23.
//

import SwiftUI

struct SessionPagingView: View {
    @State private var selection: Tab = .metrics
    
    enum Tab {
        case controls, metrics, nowPlaying
    }
    
    var body: some View {
        TabView(selection: $selection) {
            Text("Workout options will go here").tag(Tab.controls)
            Text("Workout metrics will appear here").tag(Tab.metrics)
            Text("Music controls will be here").tag(Tab.nowPlaying)
        }
    }
}

struct SessionPagingView_Previews: PreviewProvider {
    static var previews: some View {
        SessionPagingView()
    }
}
