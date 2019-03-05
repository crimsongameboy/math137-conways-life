module Life exposing (..)

type alias Cell = { x : Int, y : Int }

type CellStatus = Dead | Alive

type alias Board = Cell -> CellStatus

nextStatus : Int -> CellStatus - CellStatus
nextStatus numberOfLivingNeighbors currentStatus = 
    case (numberOfLivingNeighbors, currentStatus) of
        (???, ???) -> ???
        
livingNeighbors : Board -> Cell -> Int
livingNeighbors currentBoard { x, y } = ???

-- this function will represent one tick of our game,
-- it will use the two functions above
nextBoard : Board -> Board
nextBoard currentBoard = currentBoard