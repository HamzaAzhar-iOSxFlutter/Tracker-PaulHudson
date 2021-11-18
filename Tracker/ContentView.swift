//
//  ContentView.swift
//  Tracker
//
//  Created by Hamza_SCT on 11/17/21.
//

import SwiftUI

/* The line below means that, i have made my own custom data structure ContentView and it is view. And im drawing this on my screen as a part of my UI, and whatever is inside this custom data structure, i've drawn it on my screen*/
struct ContentView: View {
    let location: Location
    
    var body: some View {
        ScrollView {
            VStack() {
                //Remember images are the drawn by their natural sizes which are stored in xcassets
                Image(location.heroPicture)
                    //So we make it resizable in order to make it display the way we want
                    .resizable()
                    .scaledToFit()
                
                Text(location.name)
                    .multilineTextAlignment(.center)
                    //This font attribute respects user choice of small or large titles and adjusts automatically
                    .font(Font.title.weight(.bold))
                
                
                Text(location.country)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    //Instead we could've given a gray foreground colour, but the secondary colour can automatically adjust environment overrides, such as dark and light mode.
                    .foregroundColor(.secondary)
                
                Text(location.description)
                    .multilineTextAlignment(.leading)
                    //.padding() Padding has a default value which applies to all four sides of the view, this is called as adaptive padding
                    .padding(.horizontal, 10)
                    .padding(.vertical, 10)
                
                Text("Did you know?")
                    .font(Font.body.weight(.bold))
                
                Text(location.more)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 2)
            }
        }//ScrollView
        .navigationTitle("Discover")
    }
}

//This below structure is for the xcode to understand, what and how the UI should be presented.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(location: Location.example)
    }
}
