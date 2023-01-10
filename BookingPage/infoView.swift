//
//  infoView.swift
//  bookingpage
//
//  Created by frh alshaalan on 15/05/1444 AH.
//

import SwiftUI

struct infoView: View {
    var body: some View {
        NavigationView{
            VStack{
               

                Text("Diving")
                    .bold()
                TabView {
                    ForEach(0..<2) { i in
                        ZStack {
                            Image("serf1")
                                .resizable()
                            Image("serf")
                                .resizable()
                            
                        }
                        
                        .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                        
                    }
                    .padding(.all, 10)
                    
                }
                .frame(width: UIScreen.main.bounds.width, height: 200)
                .tabViewStyle(PageTabViewStyle())
                //            .padding()
                HStack{
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "bubble.left.fill")
                            .foregroundColor(.gray)
                        
                    }
                    
                    HStack{
                        Button {
                            
                        } label: {
                            Image(systemName: "phone.circle.fill")
                                .foregroundColor(.gray)
                                .frame(width: 250,height: 30 ,alignment: .leading)
                        }            .navigationBarTitle(Text("Booking infromation"))

                        
                    }
                    
                }
                //            .padding()
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .frame(width: 200,height: 20 ,alignment: .topTrailing)
                    Text("4.2")
                    Text("(120 reviws)")
                        .foregroundColor(.gray)
                }
                Text("all lines are up on the cabin top Traffic flow between the cockpit and saloon is excellent, and there’s enough seating for a sizable party under the targa top.Fully equipped with extra  fridge, solar panels & dinghy with an outboardengine! Yourfavorite new catamaran model!")
                //            Spacer()
                    .padding()
                    .multilineTextAlignment(.center)
                    .padding()
                
                
        
                NavigationLink{
                    bookingview()
                    .labelsHidden()                }label:{Text("Book")
                        .padding()
                        .frame(width: 300.0, height: 50.0)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius (8)
                        
            }
                
                //            .padding(100)
                //            .frame(maxWidth: 350)
                //
                //            .foregroundColor(.white)
                //            .padding()
                //            .background(.blue)
                //
                //            //                .clipShape(Capsule())
                //            .clipShape(RoundedRectangle(cornerRadius: 200))
                
                
                
                
                
                
                
            }
            
            .padding()
        }
        
        
    }
        
    }
    
    
    
    struct infoView_Previews: PreviewProvider {
        static var previews: some View {
            infoView()
        }
    }
    
    //HStack{
    //    Button {
    //
    //    } label: {
    //        Image(systemName: "star.fill")
    //        .foregroundColor(.yellow)}
    //    Button {
    //
    //    } label: {
    //        Image(systemName: "bubble.left.fill")
    //        .foregroundColor(.gray)}

