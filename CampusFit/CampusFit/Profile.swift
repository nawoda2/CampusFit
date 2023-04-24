//
//  Profile.swift
//  CampusFit
//
//  Created by Nawoda Wijesooriya on 4/19/23.
//

import SwiftUI

struct Post: Identifiable {
    var id: UUID
    var caption: String
    var image: String
}

struct ProfileView: View {
    
    let blue = Color(red: 68/255, green: 143/255, blue: 232/255)
    let yellow = Color(red: 255/255, green: 252/255, blue: 189/255)
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        let newPosts = [
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427"),
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427"),
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427"),
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427"),
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427"),
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427"),
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427"),
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427"),
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427"),
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427"),
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427"),
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427"),
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427"),
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427"),
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427"),
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427"),
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427"),
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427"),
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427"),
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427"),
            Post(
                id: UUID(), caption: "Biking", image: "IMG_6427")
        ]
        NavigationStack {
            ScrollView {
                    VStack {
                        HStack {
                            Image("pic").resizable().frame(maxWidth: 100, maxHeight: 100).clipShape(Circle()).padding(.all)
                        }
                        Text("Name").fontWeight(.bold).font(.title3)
                        Text("@Username").fontWeight(.bold).font(.subheadline)
                        Text(" Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.").font(.caption).padding(.all).fontWeight(.light)
                        
                        LazyVGrid(columns: columns, alignment: .center) {
                            ForEach(newPosts) { item in PostView(newPost: item)}.frame(maxWidth: 300, maxHeight: 300).border(.ultraThickMaterial).padding(.all, -3)
                            }
                        Spacer()
                    
                    
                    }.toolbar {
                        ToolbarItemGroup(placement: .navigationBarTrailing) {
                            NavigationLink(destination: SettingView()) {
                                Label("Setting", systemImage: "gearshape")
                            }
                        }
                    }
            }.background(LinearGradient(gradient: Gradient(colors: [yellow, blue]), startPoint: .top, endPoint: .bottom))
        }
    }
}

struct PostView: View {
    var newPost: Post
    var body: some View {
        VStack {
            Image(newPost.image).resizable().scaledToFit()
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
