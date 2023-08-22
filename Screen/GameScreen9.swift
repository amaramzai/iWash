//
//  BackStoryScreen.swift
//
//  Created by Amar Amzari on 13/04/23.
//

import SwiftUI

struct GameScreen9: View {
    
    //variables
    @State private var fontSize : Double = UIScreen.main.bounds.height * 0.02
    @State private var fontSizeTitle : Double = UIScreen.main.bounds.width * 0.035
    
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
                    VStack {
                        Spacer()
                        Text ("step 7 : soak the clothes in the fabric softener solution and wait for 15 minutes.")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, textPaddingCongratsHorizontal)
                        Spacer()
                        Image ("softener")
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width * waterAndDetImageSizeWidthPercentage)
                        Spacer()
                        NavigationLink(destination: GameScreen10()){
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
            }.navigationBarBackButtonHidden(true)
            
        }
    }
    
    
    
    struct GameScreen9_Previews: PreviewProvider {
        static var previews: some View {
            GameScreen9()
        }
    }
}
