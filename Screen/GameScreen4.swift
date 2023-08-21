//
//  BackStoryScreen.swift
//
//  Created by Amar Amzari on 13/04/23.
//

import SwiftUI

struct GameScreen4: View {
    //variables
    @State private var fontSize : Double = UIScreen.main.bounds.height * 0.02
    @State private var fontSizeTitle : Double = UIScreen.main.bounds.width * 0.035
    
    var widthScreenPercentage = 0.04
    var widthArrowRightPercentage = 0.07
    var paddingTopArrowRightButton = 60.0
    var paddingBottomArrowRightButton = 100.0
    var paddingHorizontalText = 100.0
    var imageWashBoardSizeWidthPercentage = 0.6
    var paddingStepFiveHorizontalText = 100.0
    
    
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
                        Text ("step 5 : put the clothes above the wash board and pick up the brush.")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, paddingHorizontalText)
                        Spacer()
                        Image ("washBoardShirtBrush2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width * imageWashBoardSizeWidthPercentage)
                        Spacer()
                        Text ("in the previous process, we deliberately did not wring the clothes, because the remaining detergent water is still needed to help clean up the remaining dirt.")
                            .font(.system(size: fontSize , weight: .regular , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, paddingHorizontalText)
                        Spacer()
                        NavigationLink(destination: Instruction()){
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
    
    
    
    struct GameScreen4_Previews: PreviewProvider {
        static var previews: some View {
            GameScreen4()
        }
    }
}
