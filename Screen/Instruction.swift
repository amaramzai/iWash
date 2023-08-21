//
//  BackStoryScreen.swift
//
//  Created by Amar Amzari on 13/04/23.
//

import SwiftUI

struct Instruction: View {
    
    //variables
    @State private var fontSize : Double = UIScreen.main.bounds.height * 0.02
    @State private var fontSizeTitle : Double = UIScreen.main.bounds.width * 0.035
    @State private var xPosImage : Double = UIScreen.main.bounds.width * 0.5
    @State private var yPosImage : Double = UIScreen.main.bounds.height * 0.38
    
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
                    Image ("instructions3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.6)
                        .position(x: xPosImage, y: yPosImage)
                    VStack {
                        Spacer()
                        Text ("imagine your finger as a brush :)")
                            .font(.system(size: fontSize , weight: .regular , design: .rounded ))
                            .multilineTextAlignment(.center)
                        NavigationLink(destination: GameScreen5()){
                            Image(systemName: "play")
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
    
    
    
    struct Instruction_Previews: PreviewProvider {
        static var previews: some View {
            Instruction()
        }
    }
}
