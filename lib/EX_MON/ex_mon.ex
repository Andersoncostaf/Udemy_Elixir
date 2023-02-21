defmodule ExMon do
    alias ExMon.Player{Game, Player}
    alias ExMon.Game.Status
  
    alias @computer_name "Robotinik"
    
    def create_player(name, move_avg, move_rnd, move_heal) do
      Player.build(name, move_rnd, move_avg, move_heal)
    end

    def start_game(player) do 
      @computer_name
      |> create_player(:punch, :kich, :heal)
      |> Game.start(player)

      Status.print_round_message()
    end
end
