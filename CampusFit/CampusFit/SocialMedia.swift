//
//  SocialMedia.swift
//  CampusFit
//
//  Created by Eric Park on 4/18/23.
//

import Foundation
import SwiftUI

struct SocialMedia: View {
    @State var userName: String = ""
    @State var postURL: String = ""
    let grey = Color(UIColor.lightGray)
    @State var color = Color(UIColor.yellow)
    @State var rotation = 0.0
    @State var numOfPosts = 10
    var body: some View {
        NavigationView {
            VStack {
                HStack{
                    Image("CampusFit Logo")
                        .resizable()
                        .frame(width: 136.0, height: 40.0)
                    Spacer()
                    NavigationLink(destination: History()) {
                        Image("History")
                            .resizable()
                            .frame(width: 32.0, height: 32.0)
                    }
                    NavigationLink(destination: Message()) {
                        Image("Message Button")
                            .resizable()
                            .frame(width: 32.0, height: 32.0)
                    }.padding(.horizontal, 10)
                }
                HStack {
                    NavigationLink(destination: Events()) {
                        Image("Buddies")
                            .resizable()
                            .frame(width: 32.0, height: 32.0)
                    }
                }.frame(width: 48.0, height: 48.0)
                    .background(grey)
                    .clipShape(Circle())
                
                GeometryReader { proxy in
                    ScrollView {
                        VStack(spacing: 20) {
                            ForEach(0..<10) { i in
                                VStack {
                                    HStack {
                                        Circle().frame(width: 32.0, height: 32.0)
                                        Text("Username").font(.system(size: 24.0))
                                        Spacer()
                                    }.padding(5)
                                    Spacer()
                                    Text("Post \(i+1)")
                                    Spacer()
                                    HStack {
                                        Image("Like")
                                            .resizable()
                                            .frame(width: 24.0, height: 24.0)
                                        NavigationLink(destination: Comments()) {
                                            Image("Comment")
                                                .resizable()
                                                .frame(width: 32.0, height: 32.0)
                                        }
                                        Button(action: {
                                            print("pressed")
                                        })
                                        {
                                            Image("Share")
                                                .resizable()
                                                .frame(width: 24.0, height: 24.0)
                                        }
                                        
                                        Spacer()
                                    }.padding([.trailing, .leading], 5)
                                }.foregroundColor(.white)
                                    .font(.largeTitle)
                                    .frame(width: proxy.size.width - 10, height: 200)
                                    .background(.blue)
                                    .cornerRadius(15)
                            }.padding([.leading, .trailing], 5)
                        }
                    }
                }
                .frame(height: 590)
                GeometryReader { proxy in
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
                        .frame(width: proxy.size.width, height: proxy.size.height)
                        .background(grey)
                }
            }
        }
    }
    
}

struct History: View {
    var body: some View {
        VStack {
            Text("History")
        }
    }
}

struct SocialMedia_Previews: PreviewProvider {
    static var previews: some View {
        SocialMedia()
    }
}
