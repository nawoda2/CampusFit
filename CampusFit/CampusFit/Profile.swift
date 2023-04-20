//
//  Profile.swift
//  CampusFit
//
//  Created by Nawoda Wijesooriya on 4/19/23.
//

import SwiftUI

struct ProfileView: View {
    
    let blue = Color(red: 68/255, green: 143/255, blue: 232/255)
    let yellow = Color(red: 255/255, green: 252/255, blue: 189/255)
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [yellow, blue]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack {
                HStack {
                    Image("pic").resizable().frame(maxWidth: 100, maxHeight: 100).clipShape(Circle()).padding(.all)
                }
                Text("Name").fontWeight(.bold).font(.title3)
                Text("@Username").fontWeight(.bold).font(.subheadline)
                Text(" Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.").font(.caption).padding(.all).fontWeight(.light)
                Spacer()
            }
            
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
