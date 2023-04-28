//
//  ChallengeView.swift
//  CampusFit
//
//  Created by Nawoda Wijesooriya on 4/18/23.
//

import SwiftUI

struct ChallengeView: View {
    var body: some View {
        NavigationStack {
            
            VStack{
                NavigationLink {
                    TodayView()
                } label: {
                    ZStack {
                        Text("Today's Workout").frame(maxWidth: 318, maxHeight: 69).background(Color.blue).foregroundColor(Color.black).clipShape(RoundedRectangle(cornerRadius: 40))
                        HStack {
                            Image("bell").resizable().frame(maxWidth: 43, maxHeight: 43).padding(60)
                            Spacer()
                        }
                    }
                    
                }
                
                NavigationLink {
                    MonthlyView()
                } label: {
                    ZStack {
                        Text("Monthly View").frame(maxWidth: 318, maxHeight: 69).background(Color.orange).foregroundColor(Color.black).clipShape(RoundedRectangle(cornerRadius: 40))
                        HStack {
                            Image("Calender").resizable().frame(maxWidth: 43, maxHeight: 43).padding(60)
                            Spacer()
                        }
                    }
                }
                Spacer()
            }.navigationTitle("Challenges").foregroundColor(Color.blue)
           
        }
        
    }
    
    
}

struct TodayView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Text("Step Counter: 12345").fontWeight(.light).frame(maxWidth: 318, maxHeight: 69).background(Color.white).foregroundColor(Color.black).clipShape(RoundedRectangle(cornerRadius: 40))
                
                
                
                Spacer()
            }
        }
    }
}

struct MonthlyView: View {
    var body: some View {
        TabView {
            SocialMedia().tabItem {
                Image("Home").resizable().frame(width: 48.0, height: 48.0)
                Text("Home")
            }
            Search().tabItem {
                Image("Search")
                Text("Search")
            }
            ChallengeView().tabItem{
                Image("Challenge")
                Text("Challenge")
            }
            ProfileView().tabItem {
                Image("Profile")
                Text("Profile")
            }
        }
            
            /*
             HStack {
             Image("Home")
             .resizable()
             .frame(width: 48.0, height: 48.0)
             Spacer()
             NavigationLink(destination: Search()) {
             Image("Search")
             .resizable()
             .frame(width: 48.0, height: 48.0)
             }
             Spacer()
             Button(action: {
             print("button pressed")
             
             }) {
             Image("Post")
             .resizable()
             .frame(width: 48.0, height: 48.0)
             }
             Spacer()
             NavigationLink(destination: ChallengeView()) {
             Image("Challenges")
             .resizable()
             .frame(width: 48.0, height: 48.0)
             }
             Spacer()
             NavigationLink(destination: ProfileView()) {
             Image("Profile")
             .resizable()
             .frame(width: 48.0, height: 48.0)
             }
             }.padding([.horizontal, .top], 15)
             .frame(width: proxy.size.width, height: proxy.size.height)
             .background(grey)
             
             */
    }
}

struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        MonthlyView()
    }
}
