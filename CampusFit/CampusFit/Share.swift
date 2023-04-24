//
//  Share.swift
//  CampusFit
//
//  Created by Eric Park on 4/19/23.
//  Credit: https://betterprogramming.pub/how-to-create-a-draggable-card-in-swiftui-86387397071d
import Foundation
import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            Color(.black)
            VStack {
                Text("Share")
            }
        }.clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

