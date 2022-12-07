//
//  ProductDetailsView.swift
//  TouchDwon
//
//  Created by Joyson P S on 30/11/22.
//

import SwiftUI

struct ProductDetailsView: View {
    @EnvironmentObject var shop: Shop

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
                    
                    Text(shop.selectedProduct?.description  ?? sampleProduct.description)
                        .foregroundColor(.gray)
                        .font(.system(.body,design: .rounded))
                        .multilineTextAlignment(.leading)
                }
                QuatnityDetailsView()
                    .padding(.vertical,10)
                
                AddToCartDetailView()
                    .padding(.bottom,20)
                
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
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ??  sampleProduct.blue )
                .ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView()
            .environmentObject(Shop())
            .preferredColorScheme(.light)
    }
}
