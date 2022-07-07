MODULE IO
!Tool

    TASK PERS tooldata toolJSD:=[TRUE,[[3.02024,-6.68559,146.275],[0.79574,0.0471874,-0.602739,0.0357425]],[0.2,[0,0,0],[1,0,0,0],0,0,0]];
    
!Points reference

!Lineal
     TASK PERS wobjdata Lineal:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,200,-123],[1,0,0,0]]];

!Rotate
    TASK PERS wobjdata Rotate:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[400,450.000000018,-269.602540367],[0.683012702,0.183012702,-0.183012702,0.683012702]]];

    PERS string names{2} := ["Lineal","Rotate"];

    PERS wobjdata whiteBoard;


    
    PROC main()
        WHILE TRUE DO        
            IF DI_01 = 1 THEN
                TPWRITE(names{1});
                SET DO_01;

                whiteBoard := Lineal;

                pathJSD;
                RESET DO_01;
                
            ELSEIF DI_02 = 1 THEN
                TPWRITE(names{2});
                SET DO_02;

                whiteBoard := Rotate;

                pathJSD;
                RESET DO_02;
            ENDIF 
        ENDWHILE
    ENDPROC
ENDMODULE