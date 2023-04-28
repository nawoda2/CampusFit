//
//  NavBarView.swift
//  CampusFit
//
//  Created by Nawoda Wijesooriya on 4/28/23.
//

import SwiftUI

struct NavBarView: View {
    var body: some View {
        TabView {
            SocialMedia().tabItem {
                Label("Home", systemImage: "homekit")
            }
            Search().tabItem {
                Label("Search", systemImage: "magnifyingglass.circle")
            }
            ChallengeView().tabItem{
                Label("Log", systemImage: "book.closed")
            }
            ProfileView().tabItem {
                Label("Profile", systemImage: "person.circle.fill")
            }
        }
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
    }
}
