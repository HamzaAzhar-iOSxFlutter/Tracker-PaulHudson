//
//  ContentView.swift
//  Tracker
//
//  Created by Hamza_SCT on 11/17/21.
//

import SwiftUI

/* The line below means that, i have made my own custom data structure ContentView and it is view. And im drawing this on my screen as a part of my UI, and whatever is inside this custom data structure, i've drawn it on my screen*/
struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack() {
                //Remember images are the drawn by their natural sizes which are stored in xcassets
                Image("highlands")
                    //So we make it resizable in order to make it display the way we want
                    .resizable()
                    .scaledToFit()
                
                Text("The Highlands")
                    .multilineTextAlignment(.center)
                    //This font attribute respects user choice of small or large titles and adjusts automatically
                    .font(Font.title.weight(.bold))
                    
                
                Text("The Highlands")
                    .multilineTextAlignment(.center)
                    .font(.title)
                    //Instead we could've given a gray foreground colour, but the secondary colour can automatically adjust environment overrides, such as dark and light mode.
                    .foregroundColor(.secondary)
                
                Text("The Highlands is a historic region of Scotland. Culturally, the Highlands and the Lowlands diverged from the later Middle Ages into the modern period, when Lowland Scots replaced Scottish Gaelic throughout most of the Lowlands. The term is also used for the area north and west of the Highland Boundary Fault, although the exact boundaries are not clearly defined, particularly to the east. The Great Glen divides the Grampian Mountains to the southeast from the Northwest Highlands. The Scottish Gaelic name of A' Ghàidhealtachd literally means \"the place of the Gaels\" and traditionally, from a Gaelic-speaking point of view, includes both the Western Isles and the Highlands.")
                    .multilineTextAlignment(.leading)
                    //.padding() Padding has a default value which applies to all four sides of the view, this is called as adaptive padding
                    .padding(.horizontal, 10)
                    .padding(.vertical, 10)
                
                Text("Did you know?")
                    .font(Font.body.weight(.bold))
                
                Text("The area is very sparsely populated, with many mountain ranges dominating the region, and includes the highest mountain in the British Isles, Ben Nevis. During the 18th and early 19th centuries the population of the Highlands rose to around 300,000, but from c. 1841 and for the next 160 years, the natural increase in population was exceeded by emigration (mostly to Canada, the United States, Australia and New Zealand, and migration to the industrial cities of Scotland and England.) The area is now one of the most sparsely populated in Europe. At 9.1/km2 (24/sq mi) in 2012, the population density in the Highlands and Islands is less than one seventh of Scotland's as a whole, comparable with that of Bolivia, Chad and Russia.")
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
        ContentView()
    }
}
