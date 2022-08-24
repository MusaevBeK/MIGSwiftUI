//
//  DividePage.swift
//  MIGSwiftUI
//
//  Created by user on 23/8/22.
//

import SwiftUI

struct SharedViewOpen: View {
    
    @Binding var showShareView: Bool
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 10) {
                
                Spacer()
                    .frame(height: 2)
                
                HStack {
                    
                    Image("mig")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                        .padding()
                    
                    Text("Курсы валют Миг")
                        .foregroundColor(Color.black)
                        .font(Font.system(size: 18, weight: .bold))
                }
                
                Divider()
                
                Spacer()
                    .frame(height: -2)
                
                ScrollView(.horizontal) {
                    HStack {
                        
                        VStack(spacing: 0) {
                            Button {
                                //
                            } label: {
                                Image("air")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                    .padding()
                            }
                            
                            Text("AirDrop")
                                .foregroundColor(.primary)
                        }
                        
                        VStack(spacing: 0) {
                            Button {
                                //
                            } label: {
                                Image("mes")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 60, height: 60)
//                                    .clipShape(Circle())
                                    .padding()
                            }
                            
                            Text("Сообщения")
                                .foregroundColor(.blue)
                        }
                        
                        VStack(spacing: 0) {
                            Button {
                                //
                            } label: {
                                Image("em")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 60, height: 60)
//                                    .clipShape(Circle())
                                    .padding()
                            }
                            
                            Text("Почта")
                                .foregroundColor(.primary)
                        }
                        
                        VStack(spacing: 0) {
                            Button {
                                //
                            } label: {
                                Image("wha")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                    .padding()
                            }
                            
                            Text("Whatsapp")
                                .foregroundColor(.primary)
                        }
                        
                        VStack(spacing: 0) {
                            Button {
                                //
                            } label: {
                                Image("ch")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                    .padding()
                            }
                            
                            Text("Chrome")
                                .foregroundColor(.blue)
                        }
                    }
            }
                
                
                Spacer()
                    .frame(height: 130)
            
                
            }
            .padding(.leading)
            .frame(width: 390, height: 340, alignment: .leading)
            .background(Color(red: 238/255, green: 238/255, blue: 239/255))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
        }
        Image(systemName: "xmark")
            .frame(width: 40, height: 40)
            .foregroundColor(.black)
            .offset(x: 170, y: -135)
            .onTapGesture {
                self.showShareView = false
            }

    }
}

struct DividePage_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
