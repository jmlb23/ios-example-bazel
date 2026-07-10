import SwiftUI

public struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""

    public init() {}

    public var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.fill")
                    .resizable().aspectRatio(contentMode: .fit).frame(
                        width: 20, height: 20, alignment: .center)
                TextField("Username", text: $username)
            }.padding(5).overlay(
                RoundedRectangle(cornerRadius: 4).stroke(.gray, lineWidth: 2)
            )
            HStack {
                Image(systemName: "eye.fill")
                    .resizable().aspectRatio(contentMode: .fit).frame(
                        width: 20, height: 20, alignment: .center)
                TextField("Password", text: $password)
            }.padding(5).overlay(
                RoundedRectangle(cornerRadius: 4).stroke(.gray, lineWidth: 1)
            )
            Button(action: {}, label: { Text("Login") })
                .frame(maxWidth: .infinity).padding(10).overlay(
                    RoundedRectangle(cornerRadius: 8).stroke(.black, lineWidth: 1)
                )
        }
    }
}
