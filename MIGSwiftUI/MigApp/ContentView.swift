//
//  ContentView.swift
//  MIGSwiftUI
//
//  Created by user on 22/8/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var showMenu: Bool = false
    
    @State var showShareView: Bool = false

    @State var selectedPicker = 1
    
    @State var showList: Bool = false
    
    @State var showConverter: Bool = false
    
    var body: some View {
        
        ZStack {
            
            NavigationView {
                
                VStack {
                    
                    Picker(selection: $selectedPicker) {
                        Text("Курсы валют").tag(1)
                            .foregroundColor(Color.gray)
                        Text("Ближайшие пункты").tag(2)
                            .foregroundColor(Color.gray)
                    } label: {
                        Text("Picker")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .frame(width: 360, height: 40)
                    
                    
                    if selectedPicker == 1 && showList == false {
                        ShortList(showList: $showList)
                    } else if selectedPicker == 2  {
                        RatesAdressView()
                    } else if showList == true {
                        LongList(showList: $showList)
                    }
                    
                     Spacer()
                    
                    Text("Забронировать сумму/курс")
                        .foregroundColor(Color.blue)
                        .font(Font.system(size: 15, weight: .bold))
                    Text("Лицензия АГФ НБ РК №7520029 от 23.09.2020")
                        .foregroundColor(Color.blue)
                        .font(Font.system(size: 13, weight: .medium))
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .navigationBarHidden(false)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        HStack {
                            Button {
                                self.showMenu.toggle()
                            } label: {
                                Image(systemName: "line.horizontal.3")
                                    .frame(width: 24, height: 24, alignment: .center)
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack {
                            Button {
                                self.showShareView.toggle()
                            } label: {
                                Image(systemName: "command")
                                    .frame(width: 24, height: 24, alignment: .center)
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                    
                    ToolbarItem(placement: .principal) {
                        HStack {
                            Text("Главная")
                                .padding()
                                .foregroundColor(.blue)
                                .font(Font.body.bold())
                        }
                    }
                }
          }
            SideMenu(showMenu: $showMenu)
                .offset(x: showMenu ? -10 : -600)
                .animation(.spring(response: 0.5, dampingFraction: 0.8, blendDuration: 0))
            
            SharedViewOpen(showShareView: $showShareView)
                .offset(y: showShareView ? 340 : 600)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
            
            
        }
    }
}
  

struct ContentView_Previews: PreviewProvider {
static var previews: some View {
    ContentView()
  }
}
                           
