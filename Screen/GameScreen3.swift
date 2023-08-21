//
//  BackStoryScreen.swift
//
//  Created by Amar Amzari on 13/04/23.
//

import SwiftUI

struct GameScreen3: View {
    
    //variables
    @State private var fontSizeTitle : Double = UIScreen.main.bounds.width * 0.035

    var widthArrowRightPercentage = 0.07
    var paddingTopArrowRightButton = 60.0
    var paddingBottomArrowRightButton = 100.0
    var takeOutClothesImageSizeWidthPercentage = 0.6
    
    var paddingTopTextHorizontal = 70.0
    
    
    var body: some View {
        //GeometryReader for findinhg parent size of screen so the variables value could auto resize relative to screen size
        GeometryReader {
            geometry in
            NavigationStack {
                ZStack {
                    Color("bgColor")
                        .ignoresSafeArea(.all)
                        .edgesIgnoringSafeArea(.all)
                    VStack {
                        Spacer()
                        Text ("step 4 : remove the soiled clothes that have been soaked, then the detailed brushing process can begin.")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, paddingTopTextHorizontal)
                        Spacer()
                        Image ("takeOutClothes")
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width * takeOutClothesImageSizeWidthPercentage)
                        Spacer()
                        NavigationLink(destination: GameScreen4()){
                            Image(systemName: "arrow.right")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.height * widthArrowRightPercentage)
                                .foregroundColor(Color.black)
                                .ignoresSafeArea(.all)
                                .edgesIgnoringSafeArea(.all)
                        }.padding(.top, paddingTopArrowRightButton)
                            .padding(.bottom,paddingBottomArrowRightButton)
                        
                    }
                }
            }
            
        }
    }
    
    
    
    struct GameScreen3_Previews: PreviewProvider {
        static var previews: some View {
            GameScreen3()
        }
    }
}
