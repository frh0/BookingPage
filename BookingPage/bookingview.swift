//
//  ContentView.swift
//  bookingpage
//
//  Created by frh alshaalan on 14/05/1444 AH.
//

import SwiftUI


struct bookingview: View {
    @State private var val = 1
    @State private var val2 = 1
    @State private var givencom: String = ""
    @State private var showAlert = false

    var body: some View {
        NavigationView{
            
            VStack {
                
                Text("activity name : Serfing activites ")
                    .bold()
                
                DatePicker(selection: .constant(Date()), label: { Text("Date:")
                        .bold()
                    
                })
                
                                .padding(.vertical,20)
                .padding(.leading,70)
                .padding(.trailing,50)
                                .padding(.bottom,10)
                
                
                HStack {
                    Text("Adult")
                    Button {
                        increment()
                    } label: {
                        Image(systemName: "plus.circle")
                    }
                    
                    Text("\(val)")
                        .foregroundColor(.gray)
                    
                    Button {
                        dencrement()
                    } label: {
                        Image(systemName: "minus.circle")
                    }
                    Spacer().frame(width: 20)
                    Text("chliden")
                    Button {
                        increment2()
                    } label: {
                        Image(systemName: "plus.circle")
                    }
                    Text("\(val2)")
                        .foregroundColor(.gray)
                    
                    Button {
                        dencrement2()
                        
                        print("Edit button was tapped")
                    } label: {
                        Image(systemName: "minus.circle")
                    }
                    
                }
                Text("Payment method")
                
                //                    .padding(.top,20)
                
                NavigationStack {
                    VStack{
                        
                        
                        HStack{
                            Button {
                            } label: {
                                
                                Text("Credit/Debit card")
                                Image(systemName: "creditcard")
                            }.padding(.trailing,180)
                                .padding(.bottom,10)
//                                .foregroundColor(.black)
                        
                                                }.padding(.top,20)
                        
                        
                        VStack{
                            Button{
                                
                            }label: {
                                Text("Stc Pay ")
//                                    .foregroundColor(.black)
                                
                            }
                            .padding(.trailing,285)
                            Divider()
                            
                            Divider()
                                .offset(x:-10,y:-50)
                            Button{
                                
                            }label: {
                                Text("Apple Pay")
                                    .padding(.trailing,270)
                                    .padding(.bottom,20)
                                
//                                    .foregroundColor(.black)
                            }
                            
                        }
                        
                    }
                    .background(Color.gray.opacity(0.1))
                    .frame(width: 370)
                    .cornerRadius(20)
                    .padding(.horizontal,16)
                    
                }
                
                //comment swction
                Text("Any additional comments?  ")
                TextField(
                    "  comments..",
                    text: $givencom)
                .frame(width: 300.0, height: 190)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color(hue: 1.0, saturation: 0.039, brightness: 0.699, opacity: 0.225), lineWidth: 1))
                
                
                Button("Proceed") {
                    showAlert = true

                }
                .frame(width: 300.0, height: 50.0)
                .foregroundColor(Color.white)
                .background(Color.blue)
                .cornerRadius (8)
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("enjoy ! "),
                    message: Text("Your booking has been conformed " )
                )
            }
//            }            .navigationBarTitle(Text("Booking Page"))

            .padding(.top,20)
            .padding(.bottom,20)
            .bold()
        }

    }
        
        
        //        }
        func increment(){
            val += 1
        }
        func dencrement(){
            
            val -= 1
        }
        
        func increment2(){
            val2 += 1
        }
        func dencrement2(){
            
            val2 -= 1
        }

    }

    struct bookingview_Previews: PreviewProvider {
        static var previews: some View {
            bookingview()
        }
    }

