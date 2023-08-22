//
//  BackStoryScreen.swift
//
//  Created by Amar Amzari on 13/04/23.
//

import SwiftUI

struct GameScreen10: View {
    
    //variables
    var fontSizeTitle : Double = UIScreen.main.bounds.width * 0.035

    var widthScreenPercentage = 0.04
    var widthArrowRightPercentage = 0.07
    var paddingTopArrowRightButton = 60.0
    var paddingBottomArrowRightButton = 100.0
    var textPaddingCongratsHorizontal = 100.0
    var waterAndDetImageSizeWidthPercentage = 0.6
    
    
    var body: some View {
        //GeometryReader for findinhg parent size of screen so the variables value could auto resize relative to screen size
        GeometryReader {
            geometry in
            NavigationStack {
                ZStack {
                    Color("bgColor")
                        .ignoresSafeArea(.all)
                        .edgesIgnoringSafeArea(.all)
                    Image ("wring")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * waterAndDetImageSizeWidthPercentage)
                        .position(x: UIScreen.main.bounds.size.width * 0.436 , y: UIScreen.main.bounds.size.height * 0.5)
                    VStack {
                        Text ("step 8 : wring/squeeze the clothes with moderate force so we don't damage the fabric.")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, textPaddingCongratsHorizontal)
                            .position(x: UIScreen.main.bounds.size.width * 0.5 , y: UIScreen.main.bounds.size.height * 0.1)
                        Spacer()
                        NavigationLink(destination: GameScreen11()){
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
    
    
    
    struct GameScreen10_Previews: PreviewProvider {
        static var previews: some View {
            GameScreen10()
        }
    }
}
