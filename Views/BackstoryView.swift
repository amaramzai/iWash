//
//  SwiftUIView.swift
//  
//
//  Created by Amar Amzari on 21/08/23.
//

import SwiftUI

struct BackstoryView: View {
    let stories: [Story] = [
        .init(content: ["i cannot wash my clothes on my own.", "the funny thing is that i only realized this after ten years of using a washing machine. when i moved to a boarding house, i started using a laundry service once a week."], imageName: "backImage2"),
        .init(content: ["small stains remaining on some parts of my clothes, especially on the collar, armpits, and cuffs. this was because the washing machine could not detect these areas, and i could not modify the machine to do what i wanted."], imageName: "backImage"),
        .init(content: ["therefore a guide to wash our own clothes properly is needed."], imageName: "backImage3", footer: "i would like to share my own experience about this to you! here we go!"),
        .init(content: ["let's start with step 1: tool preparation!"], imageName: "toolPreparations"),
        .init(content: ["step 2 : dissolve detergent with enough water in a bucket to foam."], imageName: "waterAndDet"),
        .init(content: ["step 3 : put the dirty clothes into the detergent solution and then soak for 30-45 minutes."], imageName: "clothesSoak2" , footer: "the detergent soak helps remove dirt prior to the brushing process."),
        .init(content: [], imageName: "instructions3" , footer: "imagine your finger as a brush :)")
    ]
    
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
    private var xPosImage : Double = UIScreen.main.bounds.width * 0.5
    private var yPosImage : Double = UIScreen.main.bounds.height * 0.38
    
    @State var storyStep: Int = 0
    
    var isEndOfSlide: Bool {
        storyStep == stories.count - 1
    }
    
    var body: some View {
        //GeometryReader for findinhg parent size of screen so the variables value could auto resize relative to screen size
        GeometryReader {
            geometry in
            ZStack {
                Color("bgColor")
                    .ignoresSafeArea(.all)
                    .edgesIgnoringSafeArea(.all)
                
                if  isEndOfSlide {
                    Image (stories[storyStep].imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.6)
                        .position(x: xPosImage, y: yPosImage)
                } else {
                    Image (stories[storyStep].imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * widthScreenPercentage)
                }
                
                VStack {
                    
                    ForEach(stories[storyStep].content, id: \.self) { text in
                        Text (text)
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding(.top, paddingTopText)
                            .padding(.horizontal,20)
                    }
                    
                    Spacer()
                    
                   
                    if let footer = stories[storyStep].footer {
                        Text (footer)
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding(.top, paddingTopText)
                    }
                    Group {
                        if isEndOfSlide {
                            NavigationLink(destination: GameScreen5()){
                                Image(systemName: "play")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: geometry.size.height * widthArrowRightPercentage)
                                    .foregroundColor(Color.black)
                                    .ignoresSafeArea(.all)
                                    .edgesIgnoringSafeArea(.all)
                            }
                        } else {
                            Button {
                                storyStep += 1
                            } label: {
                                Image(systemName: "arrow.right")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: geometry.size.height * widthArrowRightPercentage)
                                    .foregroundColor(Color.black)
                                    .ignoresSafeArea(.all)
                                    .edgesIgnoringSafeArea(.all)
                            }
                        }
                    }
                    .padding(.top, paddingTopArrowRightButton)
                    .padding(.bottom, paddingBottomArrowRightButton)
                }
            }
            
        }
    }
    struct Backstory_Previews: PreviewProvider {
        static var previews: some View {
            BackstoryView()
        }
    }
}
