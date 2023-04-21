//
//  Comments.swift
//  CampusFit
//
//  Created by Eric Park on 4/18/23.
//

import Foundation
import SwiftUI

struct Comments: View {
    var body: some View {
        GeometryReader { proxy in
            VStack {
                HStack {
                    Button(action: {
                        print("button pressed")
                        
                    }) {
                        Image("Back")
                            .resizable()
                            .frame(width: 36.0, height: 36.0)
                    }
                    Spacer()
                    Text("Comments").font(.system(size: 24.0))
                        .padding(.trailing, 36.0)
                    Spacer()
                }.padding(.horizontal, 5)
                ScrollView {
                    VStack(spacing: 5) {
                        ForEach(0..<20) { i in
                            VStack {
                                HStack {
                                    Circle().frame(width: 16.0, height: 16.0)
                                        .padding(.top, 10)
                                    Text("Username").font(.system(size: 16.0))
                                        .padding(.top, 10)
                                    Spacer()
                                }.padding(.leading, 5)
                                HStack {
                                    Spacer()
                                    Image("Like")
                                        .resizable()
                                        .frame(width: 16.0, height: 16.0)
                                }.padding([.bottom, .trailing], 6)
                                Spacer()
                            }
                        }.foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(width: proxy.size.width - 10, height: 48.0)
                            .background(.blue)
                            .cornerRadius(15)
                    }.padding([.leading, .trailing], 5)
                }
                Spacer()
            }
        }
    }
}
