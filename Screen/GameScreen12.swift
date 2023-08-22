//
//  BackStoryScreen.swift
//
//  Created by Amar Amzari on 13/04/23.
//

import SwiftUI

struct GameScreen12: View {
    
    //variables
    @State private var fontSizeTitle : Double = UIScreen.main.bounds.width * 0.035

    
    var widthArrowRightPercentage = 0.07
    var paddingTopArrowRightButton = 60.0
    var paddingBottomArrowRightButton = 100.0
    var imageDryClothesSizeWidthPercentage = 0.8
    var textPaddingCongratsHorizontal = 100.0
    var textPosXWidthPercentage = 0.5
    var textPosYHeightPercentage = 0.1
    
    var body: some View {
        //GeometryReader for findinhg parent size of screen so the variables value could auto resize relative to screen size
        GeometryReader {
            geometry in
            NavigationStack {
                ZStack {
                    Color("bgColor")
                        .ignoresSafeArea(.all)
                        .edgesIgnoringSafeArea(.all)
                    Text ("finally the last step is to dry our clothes under the sun lights!")
                        .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, textPaddingCongratsHorizontal)
                        .position(x: UIScreen.main.bounds.size.width * textPosXWidthPercentage , y : UIScreen.main.bounds.size.height * textPosYHeightPercentage)
                    VStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Image ("dryClothes")
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width * imageDryClothesSizeWidthPercentage)
                        Spacer()
                        NavigationLink(destination: GameScreen13()){
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
    
    
    
    struct GameScreen12_Previews: PreviewProvider {
        static var previews: some View {
            GameScreen12()
        }
    }
}
