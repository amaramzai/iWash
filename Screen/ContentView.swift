//
//  ContentView.swift
//
//  Created by Amar Amzari on 08/04/23.
//

import SwiftUI

struct ContentView: View {
    //create an animation variables, define and asign the values, to short the code
    private var animation: Animation{Animation.easeInOut.repeatForever().speed(0.06)}
    //variables
    @State private var isRotated = false
    
    var paddingVerticalText = 20.0
    var paddingHorizontalText = 100.0
    var paddingTopText = 60.0
    var widthScreenPercentage = 0.04
    var widthArrowRightPercentage = 0.07
    var paddingTopArrowRightButton = 60.0
    var paddingBottomArrowRightButton = 60.0
    var imageShinesFrameWidthPercentage = 0.8
    var imageShinesPosXWidthPercentage = 0.2
    var imageShinesPosYHeightPercentage = 0.12
    var imageSunFrameWidthPercentage = 0.1
    var imageSunPosXWidthPercentage = 0.3
    var imageSunPosYHeightPercentage = 0.12
    var iWashTextSizeWidthPercentage = 0.08
    var imageStartSizeWidthPercentage = 0.8
    var imageStartPaddingTopTextPercentage = 70.0
    
    var body: some View {
        //GeometryReader for findinhg parent size of screen so the variables value could auto resize relative to screen size
        GeometryReader{ geometry in
            NavigationStack{
            ZStack {
                Color("bgColor")
                    .ignoresSafeArea(.all)
                HStack {
                    Image("shines")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * imageShinesFrameWidthPercentage)
                        .rotationEffect(Angle.degrees(isRotated ? -360 : 0))
                        .position(x: UIScreen.main.bounds.width * imageShinesPosXWidthPercentage, y: UIScreen.main.bounds.height * imageShinesPosYHeightPercentage)
                        .onAppear(){
                            DispatchQueue.main.async {
                                self.isRotated = true
                            }
                        }
                       .animation(animation , value: isRotated)
                    Image("sun")
                        .resizable()
                        .scaledToFit()
                        .frame(width : geometry.size.width*imageSunFrameWidthPercentage)
                        .position(x: UIScreen.main.bounds.width * -(imageSunPosXWidthPercentage), y: UIScreen.main.bounds.height * imageSunPosYHeightPercentage)
                }
                VStack {
                    
                    Text("iWash")
                        .font(.system(size: geometry.size.width * iWashTextSizeWidthPercentage, weight: .bold, design: .rounded))
                        .scaledToFit()
                        
                    Image("ImageStart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * imageStartSizeWidthPercentage)
                        .padding(.top, imageStartPaddingTopTextPercentage)
                    Text("have you wash your clothes by your own in a proper way?")
                        .font(.system(size: geometry.size.width * widthScreenPercentage, weight: .semibold, design: .rounded))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 0.0)
                    NavigationLink(destination: BackstoryView()){
                        Image(systemName: "arrow.right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.height * widthArrowRightPercentage)
                            .foregroundColor(Color.black)
                            
                    }.padding(.top, paddingTopArrowRightButton)
                        .padding(.bottom, paddingBottomArrowRightButton)
                }
                
            }
            
        }
            
        .navigationBarHidden(true)
            .navigationViewStyle(StackNavigationViewStyle())}
        
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            //.previewInterfaceOrientation(.landscapeRight)
    }
}
