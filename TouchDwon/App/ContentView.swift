//
//  ContentView.swift
//  TouchDwon
//
//  Created by Joyson P S on 29/11/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing:0) {
                NavigationBarView()
                    .padding(.horizontal,15)
                    .padding(.vertical)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                ScrollView(.vertical,showsIndicators: false) {
                    VStack(spacing:0) {
                        FeaturedTabView()
                        .padding(.vertical,20)
                        .frame(height:UIScreen.main.bounds.width/1.4)
                        FooterView()
                            .padding(.vertical,20)
                    }
                }
            }
            .background(colorBackground.ignoresSafeArea(.all,edges: .all))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
