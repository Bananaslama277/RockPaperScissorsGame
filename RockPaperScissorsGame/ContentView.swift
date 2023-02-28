import SwiftUI

struct ContentView: View {
    
    @State var rock = 0
    @State var paper = 1
    @State var scissors = 2
    @State var playerChoice = 0
    @State var playerScore = 0
    @State var cpuScore = 0
    
    @State var winLoseText = ["Select Rock, Paper, or Scissors to start the game","Win!","Lose!","Tie!","CPU Won!","Player Won!"]
    
    @State var winLoseState = 0
    @State var choiceImage = ["🪨","📄","✂️"]
    @State var cpuChoice = 0
    @State var isGamePlaying = 1
    
    
    func checkChoice() {
  
        cpuChoice = Int.random(in: 0...2)
        if (isGamePlaying == 1) {
            if (Int(playerChoice) == Int(cpuChoice)) {
                playerScore += 0
                cpuScore += 0
                print("tie")
                winLoseState = 3
                
            } else if (Int(playerChoice) == 0 && Int(cpuChoice) == 1){
                cpuScore += 1
                print("lose")
                winLoseState = 2
                
            } else if (Int(playerChoice) == 0 && Int(cpuChoice) == 2) {
                playerScore += 1
                print("win")
                winLoseState = 1
                
            } else if (Int(playerChoice) == 1 && Int(cpuChoice) == 0) {
                playerScore += 1
                print("win")
                winLoseState = 1
                
            } else if (Int(playerChoice) == 1 && Int(cpuChoice) == 2) {
                cpuScore += 1
                print("lose")
                winLoseState = 2
                
            } else if (Int(playerChoice) == 2 && Int(cpuChoice) == 0) {
                cpuScore += 1
                print("lose")
                winLoseState = 2
                
            } else if (Int(playerChoice) == 2 && Int(cpuChoice) == 1) {
                playerScore += 1
                print("win")
                winLoseState = 1
            }
            if (playerScore == 3 || cpuScore == 3) {
                isGamePlaying = 0
                if (playerScore == 3) {
                    winLoseState = 5
                } else if (cpuScore == 3){
                    winLoseState = 4
                }
            }
        } else if (isGamePlaying == 0){
            print("game over")
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
                
                Text(winLoseText[winLoseState])
                    .font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        print("Rock selected")
                        playerChoice = rock
                        checkChoice()
                    } label: {
                        
                        Text("🪨")
                            .font(.system(size: 75))
                    }
                    
                    Spacer()
                    
                    Button {
                        print("Paper selected")
                        playerChoice = paper
                        checkChoice()
                    } label: {
                        Text("📄")
                            .font(.system(size: 75))
                    }
                    
                    Spacer()

                    Button {
                        print("Scissors selected")
                        playerChoice = scissors
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
                        Text(choiceImage[playerChoice])
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
                        
                        Text(choiceImage[cpuChoice])
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
                    isGamePlaying = 1
                    winLoseState = 0
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
