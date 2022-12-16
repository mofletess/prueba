<?php



function comprobarHueco($tablero) // Comprobar si está vacío
{    
    $resultado=false;
    for($i=0;$i<BOARD_SIZE;$i++)
    {
        for($j=0;$j<BOARD_SIZE;$j++)
        {            
            if($tablero[$i][$j]=="")
            {                              
                $resultado=true;
            }
        }
    }    
    return $resultado;
}


function ComprobarGanador($tablero,$ficha)
{
    foreach($tablero as $i=>$columna)
    {
        foreach($columna as $j=>$celda)
        {
            //Comprobación horizontal
            if($j>2)
            {
                if($tablero[$i][$j]==$ficha && $tablero[$i][$j-1]==$ficha && $tablero[$i][$j-2]==$ficha && $tablero[$i][$j-3]==$ficha)
                {                    
                    return true;
                }
                
            }
            //Comprobación vertical
            if($i>=0 && $i<4)
            {
                if($tablero[$i][$j]==$ficha && $tablero[$i+1][$j]==$ficha && $tablero[$i+2][$j]==$ficha && $tablero[$i+3][$j]==$ficha)
                {                    
                    return true;
                }
                
            }
            //Comprobación diagonal derecha
            if($i>=0 && $i<4 && $j>2)
            {
                if($tablero[$i][$j]==$ficha && $tablero[$i+1][$j-1]==$ficha && $tablero[$i+2][$j-2]==$ficha && $tablero[$i+3][$j-3]==$ficha)
                {
                    
                    return true;
                }
                
            }
            //Comprobación diagonal izquierda
            if($i>2 && $j>2)
            {
                if($tablero[$i][$j]==$ficha && $tablero[$i-1][$j-1]==$ficha && $tablero[$i-2][$j-2]==$ficha && $tablero[$i-3][$j-3]==$ficha)
                {                    
                    return true;
                }                
            }
            
        }
    }
}

?>
