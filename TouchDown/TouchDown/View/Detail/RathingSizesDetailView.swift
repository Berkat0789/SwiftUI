//
//  RathingSizesDetailView.swift
//  TouchDown
//
//  Created by Berkat Bhatti on 8/9/22.
//

import SwiftUI

struct RathingSizesDetailView: View {
    
    //MARK: properties
    
    let sizes = ["S", "M", "L", "XL"]
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            //Rating
            VStack(alignment: .leading, spacing: 3) {
                Text("Rating")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) { item in
                        Button {
                            print("Star pressed")
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.gray.cornerRadius(5))
                                .foregroundColor(.white)
                        }

                    }
                } // End Stars sections
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(sizes, id: \.self) { size in
                        Button {
                            print("\(size) pressed")
                        } label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(
                                    Color.gray.cornerRadius(14)
                                )
                        }

                        
                    }
                }
            }
            
            //Sizes
        } // hStack
    }
}

struct RathingSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RathingSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
