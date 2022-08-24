//
//  PickerBigOne.swift
//  MIGSwiftUI
//
//  Created by user on 23/8/22.
//

import SwiftUI

struct LongList: View {
    
    @Binding var showList: Bool
    
    var body: some View {
        ZStack {
            
            VStack {
                
                HStack(spacing: 25) {
                    
                    VStack {
                        Text("Курсы")
                            .foregroundColor(Color.white)
                            .font(Font.system(size: 18, weight: .bold))
                        Spacer()
                            .frame(height: 10)
                        
                        Text("Золотые")
                            .foregroundColor(Color.yellow)
                            .font(Font.system(size: 15, weight: .bold))
                        Spacer()
                            .frame(height: 5)
                        
                        Text("Слитки")
                            .foregroundColor(Color.yellow)
                            .font(Font.system(size: 15, weight: .bold))
                    }
                    
                    Spacer()
                        .frame(width: -5)
                    
                    VStack {
                        Image("mig")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .frame(width: 90, height: 90)
                    }
                    
                       
                    
                    VStack {
                        Text("Валют")
                            .foregroundColor(Color.white)
                            .font(Font.system(size: 18, weight: .bold))
                        Spacer()
                            .frame(height: 9)
                        
                        Text("Национального")
                            .foregroundColor(Color.yellow)
                            .font(Font.system(size: 12, weight: .bold))
                        Spacer()
                            .frame(height: 11)
                        
                        Text("банка РК")
                            .foregroundColor(Color.yellow)
                            .font(Font.system(size: 12, weight: .bold))
                        Spacer()
                            .frame(height: 5)
                    }
                    
                }
                
                Text("на 19 августа 2022 14:55")
                    .foregroundColor(Color.white)
                    .font(Font.system(size: 15, weight: .bold))

                
                    List {
                        ForEach(0..<23) { index in
                            ExchangeRatesView(list: ListView.longList[index], index: index)
                        }
                        . listRowBackground(Color(red: 16/255, green: 101/255, blue: 217/255))
                        .listRowSeparator(.hidden)
                        .listRowInsets(.none)
                        
                    }
                    .listStyle(PlainListStyle())

                
                        Button  {
                            self.showList.toggle()
                        } label: {
                            Image(systemName: "arrow.up.and.down.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 20)
                                .background(Color.white)
                                .padding(.bottom, 6)
                        }
               
            }
        }
        .frame(width: 360, height: 630)
        .background(Color(red: 16/255, green: 101/255, blue: 217/255))
        .cornerRadius(10)

    }
}

struct LongList_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
