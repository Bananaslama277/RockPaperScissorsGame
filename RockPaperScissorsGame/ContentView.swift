import SwiftUI

struct ContentView: View {
    
    @State var rock = 0
    @State var paper = 1
    @State var scissors = 2
    @State var playerChoice = 0
    var playerChoiceImage = ["🪨","📄","✂️"]
    
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("ROCK PAPER SCISSORS GAME")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Text("Select Rock, Paper, or Scissors to start the game")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        print("Rock selected")
                        playerChoice = rock
                        print(playerChoice)
                    } label: {
                        
                        Text("🪨")
                            .font(.system(size: 75))
                    }
                    
                    Spacer()
                    
                    Button {
                        print("Paper selected")
                        playerChoice = paper
                        print(playerChoice)
                    } label: {
                        Text("📄")
                            .font(.system(size: 75))
                    }
                    
                    Spacer()

                    Button {
                        print("Scissors selected")
                        playerChoice = scissors
                        print(playerChoice)
                    } label: {
                        Text("✂️")
                            .font(.system(size: 75))
                    }
                    
                    Spacer()
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    VStack{
                        Text(playerChoiceImage)
                            .font(.system(size: 60))
                            .padding(.bottom, 10.0)

                        Text("Player")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        
                        Text("0")
                            .font(.title)
                            .foregroundColor(Color.white)

                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("🪨")
                            .font(.system(size: 60))
                            .padding(.bottom, 10.0)

                        Text("CPU")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)

                        Text("0")
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    print("Button Clicked")
                } label: {
                    Text("RESTART GAME")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                        .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/7/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)

                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
