import SwiftUI

struct ContentView: View {
    
    @State var rock = 0
    @State var paper = 1
    @State var scissors = 2
    @State var playerChoice = 0
    @State var playerScore = 0
    @State var cpuScore = 0
    
    @State var ChoiceImage = ["🪨","📄","✂️"]
    @State var cpuChoiceArray = [0,1,2]
    @State var cpuChoice = 0
    
     func checkChoice() {
        cpuChoiceArray.shuffle()
         cpuChoice = cpuChoiceArray[0]
         
        if (Int(playerChoice) == Int(cpuChoice)) {
            playerScore += 0
            cpuScore += 0
            print("tie")
            
        } else if (Int(playerChoice) == 0 && Int(cpuChoice) == 1){
            cpuScore += 1
            print("lose")
            
            } else if (Int(playerChoice) == 0 && Int(cpuChoice) == 2) {
                playerScore += 1
                print("win")
                
                } else if (Int(playerChoice) == 1 && Int(cpuChoice) == 0) {
                    playerScore += 1
                    print("win")

                    } else if (Int(playerChoice) == 1 && Int(cpuChoice) == 2) {
                        cpuScore += 1
                        print("lose")
                        
                        } else if (Int(playerChoice) == 2 && Int(cpuChoice) == 0) {
                            cpuScore += 1
                            print("lose")
                            
                            } else if (Int(playerChoice) == 2 && Int(cpuChoice) == 1) {
                                playerScore += 1
                                print("win")
                                }
    }
    
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
                        checkChoice()
                    } label: {
                        
                        Text("🪨")
                            .font(.system(size: 75))
                    }
                    
                    Spacer()
                    
                    Button {
                        print("Paper selected")
                        playerChoice = paper
                        print(playerChoice)
                        checkChoice()
                    } label: {
                        Text("📄")
                            .font(.system(size: 75))
                    }
                    
                    Spacer()

                    Button {
                        print("Scissors selected")
                        playerChoice = scissors
                        print(playerChoice)
                        checkChoice()
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
                        Text(ChoiceImage[playerChoice])
                            .font(.system(size: 60))
                            .padding(.bottom, 10.0)

                        Text("Player")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        
                        Text(String(playerScore))
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

                        Text(String(cpuScore))
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    playerScore = 0
                    cpuScore = 0
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
