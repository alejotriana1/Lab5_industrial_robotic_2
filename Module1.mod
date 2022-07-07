MODULE Module1
        CONST robtarget Home:=[[0,0,0],[1,0,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Objt1:=[[0,0,0],[1,0,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Objt2:=[[0,0,0],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target3:=[[0,0,0],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget F1C1:=[[100,200,50],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    VAR num F := 0;
    VAR num C := 0;
    VAR bool STEP1 := FALSE;
    VAR bool STEP2 := FALSE;
    VAR bool STEP3 := FALSE;
    CONST robtarget F1C2:=[[100,0,50],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget F1C3:=[[100,-210,50],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget F2C1:=[[-100,200,50],[0,0,1,0],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget F2C2:=[[-100,0,50],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget F2C3:=[[-100,-210,50],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!***********************************************************
    !
    ! Module:  Module1
    !
    ! Description:
    !   <Insert description here>
    !
    ! Author: Usuario
    !
    ! Version: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedure main
    !
    !   This is the entry point of your program
    !
    !***********************************************************
    PROC main()
        !Add your code here
        WHILE TRUE DO
        
        STEP1 := TRUE;
        WHILE STEP1 DO  
            IF DI_01 = 1 THEN
                O1;
                STEP1 := FALSE;
            ELSEIF  DI_02 = 1 THEN
                O2;
                STEP1 := FALSE;
            ELSEIF  DI_03 = 1 THEN
                O3;
                STEP1 := FALSE;
            ENDIF   
             
        ENDWHILE    
         STEP2 := TRUE;
        WHILE STEP2 DO  
            IF DI_01 = 1 THEN
                F := 1;
                WaitTime 2;
                STEP2 := FALSE;
                 
            ELSEIF  DI_02 = 1 THEN
                F := 2;
                WaitTime 2;
                STEP2 := FALSE;
                 
            ENDIF   
            
        ENDWHILE 
        
            STEP3 := TRUE;
        WHILE STEP3 DO  
            IF DI_01 = 1 THEN
                C := 1;
                STEP3 := FALSE;                
            ELSEIF  DI_02 = 1 THEN
                C := 2;
                STEP3 := FALSE;
            ELSEIF  DI_03 = 1 THEN
                C := 3;
                STEP3 := FALSE;
            ENDIF   
            WaitTime 1;
        ENDWHILE 
            IF F = 1 AND C = 1 THEN
                 move;
            ELSEIF F = 1 AND C = 2 THEN
                 move12;                
            ELSEIF F = 1 AND C = 3 THEN
                 move13;
            ELSEIF F = 2 AND C = 1 THEN
                 move21;
             ELSEIF F = 2 AND C = 2 THEN
                 move22;
             ELSEIF F = 2 AND C = 3 THEN
                 move23; 
            ENDIF
            WaitTime 1;
        ENDWHILE
    ENDPROC
    PROC O1()
        MoveJ Home,v200,z100,tool0\WObj:=Tool;
        MoveJ Objt1,v200,z0,tool0\WObj:=Obj1;
        MoveL Home,v100,z100,tool0\WObj:=Tool;
    ENDPROC
    PROC O2()
        MoveJ Home,v200,z100,tool0\WObj:=Tool;
        MoveJ Objt2,v200,z0,tool0\WObj:=Obj2;
        MoveL Home,v100,z100,tool0\WObj:=Tool;
    ENDPROC
    PROC O3()
        MoveJ Home,v200,z100,tool0\WObj:=Tool;
        MoveJ Target3,v200,z0,tool0\WObj:=Obj3;
        MoveL Home,v100,z100,tool0\WObj:=Tool;
    ENDPROC
    PROC move()
        MoveL F1C1,v100,z0,tool0\WObj:=Estante;
        MoveJ Home,v200,z0,tool0\WObj:=Tool;
    ENDPROC
    PROC move12()
        MoveL F1C2,v100,z0,tool0\WObj:=Estante;
        MoveJ Home,v200,z100,tool0\WObj:=Tool;
    ENDPROC
    PROC move13()
        MoveL F1C3,v100,z0,tool0\WObj:=Estante;
        MoveJ Home,v200,z100,tool0\WObj:=Tool;
    ENDPROC
    PROC move21()
        MoveL F2C1,v100,z0,tool0\WObj:=Estante;
        MoveJ Home,v200,z100,tool0\WObj:=Tool;
    ENDPROC
    PROC move22()
        MoveL F2C2,v100,z0,tool0\WObj:=Estante;
        MoveJ Home,v200,z100,tool0\WObj:=Tool;
    ENDPROC
    PROC move23()
        MoveL F2C3,v100,z0,tool0\WObj:=Estante;
        MoveJ Home,v200,z100,tool0\WObj:=Tool;
    ENDPROC
ENDMODULE