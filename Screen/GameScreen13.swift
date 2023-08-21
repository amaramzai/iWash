//
//  ContentView.swift
//
//  Created by Amar Amzari on 08/04/23.
//

import SwiftUI

struct GameScreen13: View {
    //create an animation variables, define and asign the values, to short the code
    private var animation: Animation{Animation.easeInOut.repeatForever().speed(0.06)}
    
    //variables
    @State private var isRotated = false
    var imageStartSizeWidthPercentage = 0.8
    var imageStartPaddingTopTextPercentage = 70.0
    var imageShinesFrameWidthPercentage = 0.8
    var imageShinesPosXWidthPercentage = 0.2
    var imageShinesPosYHeightPercentage = 0.12
    var imageSunFrameWidthPercentage = 0.1
    var imageSunPosXWidthPercentage = 0.3
    var imageSunPosYHeightPercentage = 0.12
    var thankYouTextSizeWidthPercentage = 0.08
    var textFontSizePercentage = 0.035
    var textPaddingBottom = 50.0
    var textPaddingHorizontal = 100.0
    var widthArrowRightPercentage = 0.07
    var paddingBottomArrowRightButton = 100.0
    
    var body: some View {
        //GeometryReader for findinhg parent size of screen so the variables value could auto resize relative to screen size
        GeometryReader{ geometry in
            NavigationStack{
                ZStack {
                    Color("bgColor")
                        .ignoresSafeArea(.all)
                    Image("ImageStart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * imageStartSizeWidthPercentage)
                        .padding(.top, imageStartSizeWidthPercentage)
                    
                    HStack {
                        Image("shines")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * imageSunFrameWidthPercentage)
                            .rotationEffect(Angle.degrees(isRotated ? -360 : 0))
                            .position(x: UIScreen.main.bounds.width * imageSunPosXWidthPercentage, y: UIScreen.main.bounds.height * imageSunPosYHeightPercentage)
                            .onAppear(){
                                DispatchQueue.main.async {
                                    self.isRotated = true
                                }
                            }
                        .animation(animation , value: isRotated)
                        Image("sun")
                            .resizable()
                            .scaledToFit()
                            .frame(width : geometry.size.width * imageSunFrameWidthPercentage)
                            .position(x: UIScreen.main.bounds.width * -(imageSunPosXWidthPercentage), y: UIScreen.main.bounds.height * imageShinesPosYHeightPercentage)
                    }
                    VStack {
                        Spacer()
                        Text("THANK YOU!")
                            .font(.system(size: geometry.size.width * thankYouTextSizeWidthPercentage, weight: .bold, design: .rounded))
                            .scaledToFit()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Text("i hope this app will help you as well as it helps me :)")
                            .font(.system(size: geometry.size.width * textFontSizePercentage, weight: .semibold, design: .rounded))
                            .multilineTextAlignment(.center)
                            .padding(.bottom, textPaddingBottom)
                            .padding(.horizontal, textPaddingHorizontal)
                        NavigationLink(destination: ContentView()){
                            Image(systemName: "arrow.clockwise")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.height * widthArrowRightPercentage)
                                .foregroundColor(Color.black)
                                .ignoresSafeArea(.all)
                                .edgesIgnoringSafeArea(.all)
                            }
                        .padding(.bottom, paddingBottomArrowRightButton)
                            
                    }
                    
                }
                
            }
            
            .navigationBarHidden(true)
            .navigationViewStyle(StackNavigationViewStyle())}
    }
}


struct GameScreen13_previews: PreviewProvider {
    static var previews: some View {
        GameScreen13()
        //.previewInterfaceOrientation(.landscapeRight)
    }
}
