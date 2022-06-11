//
//  Chat.swift
//  Chats
//
//  Created by wuqiang on 2022/6/11.
//

import Foundation

struct Chat:Identifiable {
    var id:UUID{person.id}
    let person:Person
    var messages:[Message]
    var hasUnreadMessage = false
}
struct Person:Identifiable {
    let id = UUID()
    let name:String
    let imgName:String
}
struct Message:Identifiable {
    enum MessageType {
        case Sent,Received
    }
    let id = UUID()
    let date:Date
    let text:String
    let type:MessageType
    
    init(_ text:String,type:MessageType,date:Date) {
        self.text = text
        self.type = type
        self.date = date
    }
    init(_ text:String,type:MessageType) {
        self.init(text, type: type,date:Date())
    }
}

extension Chat{
    static let samples = [
        Chat(person: Person(name: "person1", imgName: "charleyrivers"), messages: [
                Message("@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1", type: .Sent, date: Date(timeIntervalSinceNow: -86400*2)),
                Message("@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1", type: .Received, date: Date(timeIntervalSinceNow: -86400*1)),
                Message("@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1", type: .Sent, date: Date(timeIntervalSinceNow: -86400*0))],hasUnreadMessage:false),
        Chat(person: Person(name: "person2", imgName: "chilkoottrail"), messages: [
                Message("@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2", type: .Sent, date: Date(timeIntervalSinceNow: -86400*21)),
                Message("@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2", type: .Received, date: Date(timeIntervalSinceNow: -86400*22)),
                Message("@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2@2", type: .Sent, date: Date(timeIntervalSinceNow: -86400*23))],hasUnreadMessage:true),
        Chat(person: Person(name: "person3", imgName: "chincoteague"), messages: [
                Message("@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3", type: .Sent, date: Date(timeIntervalSinceNow: -86400*31)),
                Message("@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3", type: .Received, date: Date(timeIntervalSinceNow: -86400*32)),
                Message("@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3@3", type: .Sent, date: Date(timeIntervalSinceNow: -86400*33))],hasUnreadMessage:false),
        Chat(person: Person(name: "person4", imgName: "hiddenlake"), messages: [
                Message("@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4", type: .Sent, date: Date(timeIntervalSinceNow: -86400*41)),
                Message("@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4", type: .Received, date: Date(timeIntervalSinceNow: -86400*42)),
                Message("@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4@4", type: .Sent, date: Date(timeIntervalSinceNow: -86400*43))],hasUnreadMessage:true),
        Chat(person: Person(name: "person5", imgName: "icybay"), messages: [
                Message("@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5", type: .Sent, date: Date(timeIntervalSinceNow: -86400*51)),
                Message("@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5", type: .Received, date: Date(timeIntervalSinceNow: -86400*52)),
                Message("@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5@5", type: .Sent, date: Date(timeIntervalSinceNow: -86400*53))],hasUnreadMessage:false),
        Chat(person: Person(name: "person6", imgName: "lakemcdonald"), messages: [
                Message("@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6", type: .Sent, date: Date(timeIntervalSinceNow: -86400*61)),
                Message("@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6", type: .Received, date: Date(timeIntervalSinceNow: -86400*62)),
                Message("@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6@6", type: .Sent, date: Date(timeIntervalSinceNow: -86400*63))],hasUnreadMessage:true),
        Chat(person: Person(name: "person7", imgName: "rainbowlake"), messages: [
                Message("@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7", type: .Sent, date: Date(timeIntervalSinceNow: -86400*71)),
                Message("@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7", type: .Received, date: Date(timeIntervalSinceNow: -86400*72)),
                Message("@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7@7", type: .Sent, date: Date(timeIntervalSinceNow: -86400*73))],hasUnreadMessage:false),
        Chat(person: Person(name: "person8", imgName: "silversalmoncreek"), messages: [
                Message("@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8", type: .Sent, date: Date(timeIntervalSinceNow: -86400*81)),
                Message("@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8", type: .Received, date: Date(timeIntervalSinceNow: -86400*82)),
                Message("@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8@8", type: .Sent, date: Date(timeIntervalSinceNow: -86400*83))],hasUnreadMessage:true),
        Chat(person: Person(name: "person9", imgName: "stmarylake"), messages: [
                Message("@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9", type: .Sent, date: Date(timeIntervalSinceNow: -86400*91)),
                Message("@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9", type: .Received, date: Date(timeIntervalSinceNow: -86400*92)),
                Message("@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9@9", type: .Sent, date: Date(timeIntervalSinceNow: -86400*93))],hasUnreadMessage:false),
        Chat(person: Person(name: "person10", imgName: "twinlake"), messages: [
                Message("@10@10@10@10@10@10@10@10@10@10@10@10@10@10@10@10@10@10@10@10", type: .Sent, date: Date(timeIntervalSinceNow: -86400*101)),
                Message("@10@10@10@10@10@10@10@10@10@10@10@10@10@10@10@10@10@10@10@10", type: .Received, date: Date(timeIntervalSinceNow: -86400*102)),
                Message("@10@10@10@10@10@10@10@10@10@10@10@10@10@10@10@10@10@10@10@10", type: .Sent, date: Date(timeIntervalSinceNow: -86400*103))],hasUnreadMessage:true)
    ]
}
