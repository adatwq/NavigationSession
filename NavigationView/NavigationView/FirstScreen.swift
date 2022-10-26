//
//  FirstScreen.swift
//  NavigationView
//
//  Created by MubarakAlsaif on 26/10/2022.
//

import SwiftUI

struct FirstScreen: View {
    
    @State private var isPresentedSheet = false
    @State private var isPresentedFullScreenCover = false
    
    var body: some View {
        NavigationView {
            VStack {
                //MARK: - Navigation Link
                NavigationLink {
                    SecondScreen()
                } label: {
                    Text("To next screen with NavigationLink")
                }
                //MARK: - Navigation Sheet
                Button("Go To next Screen with sheet", action: {
                    isPresentedSheet = true
                })
                //MARK: - Navigation Full Screen Cover
                Button("Go To next Screen with fullScreenCover", action: {
                    isPresentedFullScreenCover = true
                })
            }
            
            .sheet(isPresented: $isPresentedSheet, content: {
                SecondScreen()
            })
            .fullScreenCover(isPresented: $isPresentedFullScreenCover) {
                SecondScreen()
            }
            .navigationTitle("NavigationView App")
        }
        
    }
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen()
    }
}
