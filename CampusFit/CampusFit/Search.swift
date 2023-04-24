//
//  Search.swift
//  CampusFit
//
//  Created by Eric Park on 4/19/23.
//

import Foundation
import SwiftUI

struct Search : View {
    var body: some View {
        GeometryReader { proxy in
            VStack {
                HStack {
                    Image("Search")
                        .resizable()
                        .frame(width: 36.0, height: 36.0)
                        .padding(5)
                    Spacer()
                }.frame(width: proxy.size.width - 10, height: 48.0)
                    .background(.gray)
                    .cornerRadius(10)
                    .padding(.horizontal, 5)
                VStack {
                    HStack {
                        Text("Featured Recipes")
                            .padding([.top, .leading], 15)
                        Spacer()
                    }
                    NavigationLink(destination: Event_Recipe()) {
                        ScrollView {
                            VStack {
                                ForEach(0..<20) { i in
                                    VStack {
                                        Text("Recipe \(i+1)")
                                    }.foregroundColor(.white)
                                        .font(.largeTitle)
                                        .frame(width: proxy.size.width - 30, height: 75)
                                        .background(.gray)
                                        .cornerRadius(15)
                                }.padding([.leading, .trailing], 5)
                            }
                        }
                        Spacer()
                    }
                }.frame(width: proxy.size.width - 20, height: (proxy.size.height - 150)/2)
                    .padding(5)
                    .background(.blue)
                    .cornerRadius(15)
                
                VStack {
                    HStack {
                        Text("Featured Events")
                            .padding([.top, .leading], 15)
                        Spacer()
                    }
                    NavigationLink(destination: Event_Recipe()) {
                        ScrollView {
                            VStack {
                                ForEach(0..<20) { i in
                                    VStack {
                                        Text("Event \(i+1)")
                                    }.foregroundColor(.white)
                                        .font(.largeTitle)
                                        .frame(width: proxy.size.width - 30, height: 75)
                                        .background(.gray)
                                        .cornerRadius(15)
                                }.padding([.leading, .trailing], 5)
                            }
                        }
                        Spacer()
                    }
                }.frame(width: proxy.size.width - 20, height: (proxy.size.height - 150)/2)
                    .padding(5)
                    .background(.yellow)
                    .cornerRadius(15)


                HStack {
                    NavigationLink(destination: SocialMedia()) {
                        Image("Home")
                         .resizable()
                         .frame(width: 48.0, height: 48.0)
                     }
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
                    Button(action: {
                        print("button pressed")
                        
                    }) {
                        Image("Challenges")
                            .resizable()
                            .frame(width: 48.0, height: 48.0)
                    }
                    Spacer()
                    Button(action: {
                        print("button pressed")
                        
                    }) {
                        Image("Profile")
                            .resizable()
                            .frame(width: 48.0, height: 48.0)
                    }
                    
                }.padding([.horizontal, .top], 15)
                    .frame(width: proxy.size.width, height: 100)
                    .background(.gray)
                    

            }
        }
    }
}

struct Event_Recipe: View {
    var body: some View {
        VStack {
            Text("Event or Recipe")
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}

