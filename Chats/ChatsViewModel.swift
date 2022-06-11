//
//  ChatsViewModel.swift
//  Chats
//
//  Created by wuqiang on 2022/6/11.
//

import Foundation

class ChatsViewModel: ObservableObject {
    @Published var chats = Chat.samples
    func getSortedFileredChats(query:String) -> [Chat] {
        let sortedChats = chats.sorted { (chat0, chat1) -> Bool in
            guard let date0 = chat0.messages.last?.date else {return false}
            guard let date1 = chat1.messages.last?.date else {return false}
            return date0 > date1
        }
        if query == ""{
            return sortedChats
        }
        return sortedChats.filter { (chat) -> Bool in
            chat.person.name.lowercased().contains(query.lowercased())
        }
    }
}
