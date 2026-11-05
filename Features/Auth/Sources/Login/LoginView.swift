import SwiftUI

public struct LoginView: View {
    @ObservedObject var vm = LoginViewModel()

    public init() {}

    public var body: some View {
        VStack(alignment: .trailing, spacing: 20) {
            HStack {
                Image(systemName: "person.fill")
                    .resizable().aspectRatio(contentMode: .fit).frame(
                        width: 20, height: 20, alignment: .center)
                TextField("Username", text: $vm.username)
            }.padding(5).overlay(
                RoundedRectangle(cornerRadius: 4).stroke(.gray, lineWidth: 1)
            )
            HStack {
                Image(systemName: "eye.fill")
                    .resizable().aspectRatio(contentMode: .fit).frame(
                        width: 20, height: 20, alignment: .center)
                TextField("Password", text: $vm.password)
            }.padding(5).overlay(
                RoundedRectangle(cornerRadius: 4).stroke(.gray, lineWidth: 1)
            )
            Button(
                action: {
                    vm.login()
                }, label: { Text("Login") }
            )
            .padding(
                EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30)
            )
            .background(.gray.opacity(0.2), in: RoundedRectangle(cornerRadius: 8))
            .overlay(
                RoundedRectangle(cornerRadius: 8).stroke(.black, lineWidth: 1)
            )
        }.padding(10)
    }
}
