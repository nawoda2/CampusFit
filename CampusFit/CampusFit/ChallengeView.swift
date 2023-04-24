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
        Color.red
    }
}

struct MonthlyView: View {
    var body: some View {
        Color.blue
    }
}

struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeView()
    }
}
