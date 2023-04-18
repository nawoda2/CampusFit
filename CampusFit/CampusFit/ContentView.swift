//
//  ContentView.swift
//  CampusFit
//
//  Created by Nawoda Wijesooriya on 4/17/23.
//

import SwiftUI

struct ContentView: View {
    
    // Background Color combination
    let blue = Color(red: 68/255, green: 143/255, blue: 232/255)
    let yellow = Color(red: 255/255, green: 252/255, blue: 189/255)
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var isSignInButtonDisabled: Bool {
        [username, password].contains(where: \.isEmpty)
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [blue, yellow]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack {
                
                Image("Image")
                    .foregroundColor(.accentColor).padding(.top, 50).fixedSize()
                Spacer()
                TextField(
                        "Username",
                        text: $username,
                        prompt: Text("Username").foregroundColor(.black)
                    )
                    .padding(10)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.blue, lineWidth: 2)
                    }
                    .padding(.all)
                SecureField(
                            "Password",
                            text: $password,
                            prompt: Text("Password").foregroundColor(.black))
                    .padding(10)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.blue, lineWidth: 2)
                    }
                    .padding(.all)
                Spacer()
                Button {
                    print("do login action")
                } label: {
                    Text("Sign In")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(
                    isSignInButtonDisabled ?
                    LinearGradient(colors: [.gray], startPoint: .topLeading, endPoint: .bottomTrailing) :
                        LinearGradient(colors: [.blue, .yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .cornerRadius(20)
                .disabled(isSignInButtonDisabled) // how to disable while some condition is applied
                .padding()
                
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
