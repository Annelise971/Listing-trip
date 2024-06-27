//
//  PartageView.swift
//  Mes projets
//
//  Created by Apprenant 162 on 27/06/2024.
//

import SwiftUI

struct MesVoyagesView: View {
    //    struct LongPressGestureView: View {
    let textToShare = "Partager"
    @State private var isShareSheetPresented = false
    @State private var isButtonSelected = false
    struct ActivityViewController: UIViewControllerRepresentable {
    let activityItems: [Any]
        
    func makeUIViewController(context: Context) -> UIActivityViewController {
    let controller = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
            return controller
        }
        
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
            // Optional: You can perform any updates here if needed
        }
    }
   
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Color.orangec
                    .ignoresSafeArea()
                
                VStack{
                    ZStack{
                        Rectangle()
                            .frame(width:380 , height: 100)
                            .foregroundStyle(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                        Text ("MES VOYAGES")
                            .foregroundStyle(.orange)
                            .font(.largeTitle)
                    }
    
                    HStack {
                        
                        NavigationLink  {
                           
                        } label: {
                            Image("Rectangle 107")
                                .resizable()
                                .frame(width: 120 , height: 100)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                            
                            Text("MADRID \r 5 personnes \r 1500 € \r Du 06/04/2024 au 19/04/2024")
                                .foregroundStyle(.black)
                                .frame(width:230 , height:150)
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .overlay {
                                    HStack{
                                      Spacer()
                                        Button(action: {
                                                    self.isShareSheetPresented.toggle()
                                                }) {
                                                    Image(systemName: "square.and.arrow.up")
                                                        .font(.title)
                                                }
                                    } //fin de hstack bouton
                                }
                        }
                        .sheet(isPresented: $isShareSheetPresented) {
                            ActivityViewController(activityItems: [textToShare])
                            
                        };
                        //                        .gesture(longPress)
                    }
                    HStack{
                    Button (action: {
                        
                    }, label: {
                        Image("Rectangle 109barcelone")
                            .resizable()
                            .frame(width: 120 , height: 100)
                        Text("BARCELONE \r 6 personnes \r 2000 € \r Du 06/07/2024 au 19/07/2024")
                            .foregroundStyle(.black)
                            .frame(width:230 , height:150)
                            .background(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .overlay{
                                HStack{
                                  Spacer()
                                    Button(action: {
                                                self.isShareSheetPresented.toggle()
                                            }) {
                                                Image(systemName: "square.and.arrow.up")
                                                    .font(.title)
                                            }
                                }//fin hstack bouton
                            }
                    })
                    .sheet(isPresented: $isShareSheetPresented) {
                        ActivityViewController(activityItems: [textToShare])
                    };
                           
                           }
                        HStack{
                        
                        Button (action: {
                            
                        }, label: {
                            Image("Rectangle 110maroc")
                                .resizable()
                                .frame(width: 120 , height: 100)
                            Text("MARRAKECH \r 6 personnes \r 1800 € \r Du 06/06/2024 au 19/06/2024")
                                .foregroundStyle(.black)
                                .frame(width:230 , height:150)
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .overlay {
                                    HStack{
                                      Spacer()
                                        Button(action: {
                                            self.isShareSheetPresented.toggle()
                                                }) {
                                                    Image(systemName: "square.and.arrow.up")
                                                        .font(.title)
                                                }
                                    }//fin hstack bouton
                                }
                        })
                        .sheet(isPresented: $isShareSheetPresented) {
                                        ActivityViewController(activityItems: [textToShare])
                            
                        };
                    }
                    
                }
                           }
        }
    }
}
                           
#Preview {
    MesVoyagesView()
        }

