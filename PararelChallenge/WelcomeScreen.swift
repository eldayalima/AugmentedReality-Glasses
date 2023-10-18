//
//  SwiftUIView.swift
//  PararelChallenge
//
//  Created by Elwin Johan Sibarani on 24/05/23.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        ZStack{
            
            
            VStack(){
                Spacer()
                Image(systemName: "eyeglasses")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                Text("Kacamataq")
                    .font(.title)
                Spacer()
                Button("Mulai"){
                    
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
