//
//  BackStoryScreen.swift
//
//  Created by Amar Amzari on 13/04/23.
//

import SwiftUI

struct GameScreen11: View {
    
    //variables
    @State private var fontSizeTitle : Double = UIScreen.main.bounds.width * 0.035


    var widthScreenPercentage = 0.04
    var widthArrowRightPercentage = 0.07
    var paddingTopArrowRightButton = 60.0
    var paddingBottomArrowRightButton = 100.0
    var textPaddingCongratsHorizontal = 100.0
    var lastImageSizePercentage = 0.7
    
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
                        Spacer()
                        Text ("CONGRATULATIONS!")
                            .font(.system(size: fontSizeTitle , weight: .bold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, textPaddingCongratsHorizontal)
                        Spacer()
                        Image ("lastImage")
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width * lastImageSizePercentage)
                        Text ("this is our AHA moment!")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, textPaddingCongratsHorizontal)
                        Spacer()
                        NavigationLink(destination: GameScreen12()){
                            Image(systemName: "arrow.right")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.height * widthArrowRightPercentage)
                                .foregroundColor(Color.black)
                                .ignoresSafeArea(.all)
                                .edgesIgnoringSafeArea(.all)
                        }.padding(.top, paddingTopArrowRightButton)
                            .padding(.bottom, paddingBottomArrowRightButton)
                    }
                }
            }
            
        }
    }
    
    
    
    struct GameScreen11_Previews: PreviewProvider {
        static var previews: some View {
            GameScreen11()
        }
    }
}
