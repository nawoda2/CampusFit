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
    
    @State private var exerciseName: String = "";
    @State private var numberReps: String = "";
    @State private var numberSets: String = "";
    var body: some View {
        ScrollView {
            VStack (alignment: .leading){
                HStack {
                    Text("Step Counter:")
                        .font(.system(size: 30, weight: .medium))
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                    Spacer()
                }
                HStack {
                    Text("12345")
                        .font(.system(size: 50, weight: .thin))
                        .frame(maxWidth: 318, maxHeight: 69)
                        .background(Color.brown)
                        .foregroundColor(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 40))
                        .padding(.horizontal, 50)
                        .padding(.bottom, 10)
                }
                
                HStack {
                    Text ("Exercise:").font(.system(size: 30, weight: .medium)).foregroundColor(.white).padding(.horizontal, 20)
                    Spacer()
                }
                TextField(
                    "Name",
                    text: $exerciseName,
                    prompt: Text("Name of Exercise").font(.system(size: 20, weight: .semibold)).foregroundColor(.white)
                )
                .frame(width: 325, height: 50)
                .font(.system(size: 30, weight: .medium))
                .foregroundColor(.white)
                .padding(.horizontal, 20)
                .background(Color.brown)
                .padding(.all)
                
                TextField(
                    "Name",
                    text: $numberSets,
                    prompt: Text("Number of Sets").font(.system(size: 20, weight: .semibold)).foregroundColor(.white)
                )
                .frame(width: 325, height: 50)
                .font(.system(size: 30, weight: .medium))
                .foregroundColor(.white)
                .padding(.horizontal, 20)
                .background(Color.brown)
                .padding(.all)
                
                TextField(
                    "Name",
                    text: $numberReps,
                    prompt: Text("Number of Reps").font(.system(size: 20, weight: .semibold)).foregroundColor(.white)
                )
                .frame(width: 325, height: 50)
                .font(.system(size: 30, weight: .medium))
                .foregroundColor(.white)
                .padding(.horizontal, 20)
                .background(Color.brown)
                .padding(.all)
                
                
                Spacer()
                
            }
        }.background(Color.black)
    }
}

struct MonthlyView: View {
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
        }
    }
}

struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
