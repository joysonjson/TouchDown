//
//  TopPartDetailsView.swift
//  TouchDwon
//
//  Created by Joyson P S on 30/11/22.
//

import SwiftUI

struct TopPartDetailsView: View {
    @EnvironmentObject var shop: Shop

    @State private var isAnimating : Bool = false
    var body: some View {
        HStack(alignment: .top, spacing: 6, content: {
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                    .offset(y: isAnimating ? 0 : -35)

                
                Text(shop.selectedProduct?.formattedPrice ??  sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .offset(y: isAnimating ? 0 : -35)

                
            })
            
            .padding()

            Spacer()
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        })
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)){
                isAnimating.toggle()
            }
        }
    }
}

struct TopPartDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailsView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
