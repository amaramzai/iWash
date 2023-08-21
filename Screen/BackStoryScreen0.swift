//
//  BackStoryScreen.swift
//
//  Created by Amar Amzari on 13/04/23.
//

import SwiftUI

struct BackStoryScreen0: View {
    
    //variables
    @State private var fontSize : Double = UIScreen.main.bounds.height * 0.02
    @State private var fontSizeTitle : Double = UIScreen.main.bounds.width * 0.03
    var paddingVerticalText = 20.0
    var paddingHorizontalText = 70.0
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
                    Image ("backImage2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * widthScreenPercentage)
                    VStack {
                        
                        Text ("i cannot wash my clothes on my own.")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding(.top, paddingTopText)
                        Text ("the funny thing is that i only realized this after ten years of using a washing machine. when i moved to a boarding house, i started using a laundry service once a week.")
                            .font(.system(size: fontSize , weight: .semibold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .padding(.vertical, paddingVerticalText)
                            .padding(.horizontal, paddingHorizontalText)
                        
                        Spacer()
                        NavigationLink(destination: BackStoryScreen()){
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
    
    
    
    struct BackStoryScreen0_Previews: PreviewProvider {
        static var previews: some View {
            BackStoryScreen0()
        }
    }
}
