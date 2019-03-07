module Life exposing (..)

type alias Cell = { x : Int, y : Int }

type CellStatus = Dead | Alive

type alias Board = Cell -> CellStatus

nextStatus : Int -> CellStatus -> CellStatus
nextStatus numberOfLivingNeighbors currentStatus = 
        if numberOfLivingNeighbors < 2 && currentStatus == Alive
            then Dead
            else if numberOfLivingNeighbors > 3 && currentStatus == Alive
                then Dead
                else if numberOfLivingNeighbors == 3 && currentStatus == Dead
                    then Alive
                    else ???
        
livingNeighbors : Board -> Cell -> Int
livingNeighbors currentBoard { x, y } = ???

-- this function will represent one tick of our game,
-- it will use the two functions above
nextBoard : Board -> Board
nextBoard currentBoard = currentBoard