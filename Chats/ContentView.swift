//
//  ContentView.swift
//  Chats
//
//  Created by wuqiang on 2022/6/10.
//

import SwiftUI

struct ContentView: View {
    @StateObject var chatsViewModel = ChatsViewModel()
    @State private var query = ""
    
    var chats:[Chat] = Chat.samples
    var body: some View {
        NavigationView{
            List{
                ForEach(chatsViewModel.getSortedFileredChats(query: query)){
                    chat in
                    ChatRow(chat:chat)
                }
            }
            .listStyle(PlainListStyle())
            //.searchable(text:$query)
            .navigationTitle("Chats")
            .navigationBarItems(trailing: Button(action:{}){
                Image(systemName: "square.and.pencil")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
