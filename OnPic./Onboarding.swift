//
//  Onboarding.swift
//  OnPic.
//
//  Created by ashwaq almuzaini on 02/08/1444 AH.
//


import SwiftUI
struct onboarding: View {

    var body: some View {

                ZStack {
                    Color("gray")
                        .ignoresSafeArea()
                    
                    VStack (alignment: .leading){
                        Image("onBoarding1")
                            .resizable()
                            .padding([.leading, .bottom], 50.0)
                            .frame(width: 333, height: 367)
                        
                        Text("Build your own")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("bro"))
                            .padding(.leading)
                        
                        Text("course library!")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("bro"))
                            .padding(.leading)
                        
                        
                        Text("OnPic allows you to add text notes on your courses pictures.")
                            .font(.callout)
                            .fontWeight(.regular)
                            .foregroundColor(Color("bro"))
                            .padding(.leading)
                        
                        
                        Button {
                            
                        } label: {
                            NavigationLink(destination: ContentView().navigationTitle("")
                                      
                                .navigationBarBackButtonHidden(true)){
                                    VStack{
                                        Text ("Get started")
                                            .frame(width: 355, height: 43)
                                            .background(Color("bro"))
                                            .cornerRadius(14)
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline)
                                            
                                            .fontWeight(.semibold)
                                       
                                    }
                                    .padding(.top, 80.0)
                                }
                        }
                        }
                }
                    }

    }

                  
  struct onboarding_Previews: PreviewProvider {
      static var previews: some View {
          onboarding()
      }
  }

