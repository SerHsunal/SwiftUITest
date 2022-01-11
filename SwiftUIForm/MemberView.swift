//
//  MemberView.swift
//  ThinkingTest
//
//  Created by 許博勛 on 2022/1/9.
//

import SwiftUI

struct MemberView: View {
    @State var members = [Member(name: "Andylin", phone: "0987654321", level: 1),Member(name: "學合", phone: "0912345678", level: 2),Member(name: "Paul", phone: "0970672057", level: 5),Member(name: "Ken", phone: "0911111111", level: 5),Member(name: "Tina", phone: "0900000000", level: 5),Member(name: "Renee", phone: "0922222222", level: 5),Member(name: "Jefferson", phone: "0988888888", level: 5),Member(name: "Dawn", phone: "0977777777", level: 5)]
    var body: some View {
        List{
            ForEach(members){member in
                MemberRow(member: member)
            }
        }
    }
}
struct Member: Identifiable{
    var id = UUID()
    var name:String
    var phone:String
    var level:Int
}
struct MemberView_Previews: PreviewProvider {
    static var previews: some View {
        MemberView()
    }
}
struct MemberRow:View{
    var member:Member
    var body: some View{
        HStack{
            Text("\(member.name) |")
                .font(.system(.body, design: .rounded))
                .bold()
            Text(member.phone)
                .font(.system(.body, design: .rounded))
                .bold()
            Text("Level : \(member.level)")
                .font(.system(.body, design: .rounded))
                .bold()
            
        }
    }
}
