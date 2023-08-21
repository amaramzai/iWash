//
//  BackStoryScreen.swift
//
//  Created by Amar Amzari on 13/04/23.
//

import SwiftUI

struct GameScreen0: View {
    
    //variables
    @State private var fontSizeTitle : Double = UIScreen.main.bounds.width * 0.035
    var imageToolPrepSizeWidthPercentage = 0.6
    var widthScreenPercentage = 0.04
    var widthArrowRightPercentage = 0.07
    var paddingTopArrowRightButton = 60.0
    var paddingBottomArrowRightButton = 100.0
    
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
                        Text ("let's start with step 1: tool preparation!")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .multilineTextAlignment(.center)
                        Spacer()
                        Image ("toolPreparations")
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width * imageToolPrepSizeWidthPercentage)
                        Spacer()
                        NavigationLink(destination: GameScreen1()){
                            Image(systemName: "arrow.right")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.height * widthScreenPercentage)
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
    
    
    
    struct GameScreen0_Previews: PreviewProvider {
        static var previews: some View {
            GameScreen0()
        }
    }
}
