//
//  RatingDetailsView.swift
//  TouchDwon
//
//  Created by Joyson P S on 05/12/22.
//

import SwiftUI

struct RatingDetailsView: View {
    
    private var sizes: [String] = ["xs","s","m","l","xl"]
    var body: some View {
        HStack {
            VStack(alignment:.leading,spacing: 5) {
                Text("Ratings")
                    .foregroundColor(.gray)
                    .font(.footnote)
                .fontWeight(.semibold)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5,id:\.self) { item in
                            Image(systemName: "star.fill")
                            .foregroundColor(.white)
                            .frame(width: 28, height: 28, alignment: .center)
                            .background(Color.gray.cornerRadius(5))

                        
                    }
                }
            }
            Spacer()
            VStack(alignment:.trailing,spacing: 5) {
                Text("Sizes")
                    .foregroundColor(.gray)
                    .font(.footnote)
                .fontWeight(.semibold)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(sizes,id:\.self) { item in
                        Button {
                            
                        } label: {
                            Text(item.uppercased())
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(colorGray,lineWidth: 2)
                                )
                        }


                        
                    }
                }
            }
        }
        .padding()
    }
}

struct RatingDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingDetailsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
