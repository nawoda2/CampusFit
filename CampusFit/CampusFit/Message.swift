//
//  Message.swift
//  CampusFit
//
//  Created by Eric Park on 4/18/23.
//

import Foundation
import SwiftUI

struct Message: View {
    var body: some View {
        VStack {
            HStack {
                Text("Username").font(.system(size: 24.0))
                Spacer()
            }.padding(.horizontal, 5)
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
                    ScrollView(.horizontal) {
                        HStack(spacing: 10) {
                            ForEach(0..<20) { i in
                                Circle().frame(width: 48.0, height: 48.0)
                                    .foregroundColor(.gray)
                            }
                        }.padding(.horizontal, 7.5)
                    }
                    HStack {
                        Text("Messages").font(.system(size: 24.0))
                        Spacer()
                    }.padding(.horizontal, 7.5)
                    ScrollView {
                        VStack(spacing: 10) {
                            ForEach(0..<20) { i in
                                HStack {
                                    Circle().frame(width: 36.0, height: 36.0)
                                        .foregroundColor(.gray)
                                    Spacer()
                                }.frame(width: proxy.size.width - 10, height: 40)
                                    .padding(5)
                                    .background(.yellow)
                                    .cornerRadius(10)
                            }
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

struct Chat: View {
    var body: some View {
        VStack {
            
        }
    }
}
