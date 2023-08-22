//
//  BackStoryScreen.swift
//
//  Created by Amar Amzari on 13/04/23.
//

import SwiftUI

struct BackStoryScreen2: View {
    //variables
    private var fontSize : Double = UIScreen.main.bounds.height * 0.02
    private var fontSizeTitle : Double = UIScreen.main.bounds.width * 0.035
    var paddingVerticalText = 20.0
    var paddingHorizontalText = 100.0
    var paddingTopText = 60.0
    var widthScreenPercentage = 0.5
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
                        Spacer()
                        Text ("therefore a guide to wash our own clothes properly is needed.")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, paddingHorizontalText)
                            .foregroundColor(.black)
                        Spacer()
                        Image ("backImage3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width * widthScreenPercentage)
                        Text ("i would like to share my own experience about this to you! here we go!")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, paddingHorizontalText)
                            .foregroundColor(.black)
                        Spacer()
                        NavigationLink(destination: GameScreen0()){
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
    
    
    
    struct BackStoryScreen2_Previews: PreviewProvider {
        static var previews: some View {
            BackStoryScreen2()
        }
    }
}
