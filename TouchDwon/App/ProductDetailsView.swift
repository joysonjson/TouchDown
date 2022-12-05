//
//  ProductDetailsView.swift
//  TouchDwon
//
//  Created by Joyson P S on 30/11/22.
//

import SwiftUI

struct ProductDetailsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // MARK: - Nav
            NavigationBarDetailView()
                .padding(.top,48)
                .padding()
//            UIWindowScene.w
            
            // MARK: - Header
//            Text(sampleProduct.name)
            HeaderDetailView()
                .padding()
            TopPartDetailsView()
                .padding(.horizontal)
                .zIndex(1)
            // MARK: - Details
            
          
            
            VStack(alignment: .center, spacing: 0) {
                ScrollView(.vertical,showsIndicators: false) {
                    RatingDetailsView()
                        .padding(.top,-20)
                        .padding(.bottom,10)
                    
                    Text(sampleProduct.description)
                        .foregroundColor(.gray)
                        .font(.system(.body,design: .rounded))
                        .multilineTextAlignment(.leading)
                }
                Spacer()
            }
            .padding()
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top,-105)
            )
            
          
        }
        .ignoresSafeArea()
        .background(
            Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
                .ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView()
            .preferredColorScheme(.light)
    }
}
