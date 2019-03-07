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
    Board{x = x + 1, y = y}
    Board{x = x + 1, y = y + 1}
    Board{x = x + 1, y = y - 1}
    Board{x = x, y = y + 1}
    Board{x = x, y = y - 1}
    Board{x = x - 1, y = y + 1}
    Board{x = x - 1, y = y}
    Board{x = x - 1, y = y = 1}

nextBoard : Board -> Board
nextBoard currentBoard = currentBoard