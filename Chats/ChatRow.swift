//
//  ChatRow.swift
//  Chats
//
//  Created by wuqiang on 2022/6/11.
//

import SwiftUI

struct ChatRow: View {
    var chat:Chat
    var body: some View {
        HStack(spacing:20){
            Image(chat.person.imgName).resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            ZStack{
                VStack(alignment: .leading, spacing: 5){
                    HStack{
                        Text(chat.person.name)
                        Spacer()
                        Text(chat.messages.last?.date.descriptionAlter() ?? "")
                    }
                    HStack{
                        Text(chat.messages.last?.text ?? "")
                        .lineLimit(2)
                        .foregroundColor(.gray)
                        .frame(height: 50, alignment: .top)
                    }
                }
                Circle().foregroundColor(chat.hasUnreadMessage ? .blue : .clear)
                    .frame(width: 18, height: 18)
                    .frame(maxWidth:.infinity,alignment: .trailing)
            }
        }.frame(height: 80)
    }
}

struct ChatRow_Previews: PreviewProvider {
    static var previews: some View {
        ChatRow(chat: Chat.samples[0])
    }
}
