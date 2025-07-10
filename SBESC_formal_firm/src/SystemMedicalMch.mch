/* SystemMedicalMch
 * Author: Felipe Santos
 * Creation date: 22/06/2025
 */
MACHINE
    SystemMedicalMch

CONCRETE_CONSTANTS
    MAX_DOSE

PROPERTIES
    MAX_DOSE = 10

VARIABLES
    act_dose ,
    set_of_times ,
    work ,
    full_flag ,
    bubble_sensor

INVARIANT
    act_dose : NATURAL
    & set_of_times : POW ( NATURAL )
    & work : BOOL
    & full_flag : BOOL
    & bubble_sensor : BOOL

    & ( ( 100 * act_dose ) <= ( 100 * MAX_DOSE + MAX_DOSE * 5 ) )
    & ( ( full_flag = TRUE ) => ( work = FALSE ) )
    & ( work = TRUE => full_flag = FALSE )

INITIALISATION
    act_dose := 0
    || set_of_times := {}
    || work := FALSE
    || full_flag := FALSE
    || bubble_sensor := FALSE

OPERATIONS
    increaseFlow =
    PRE
       act_dose < MAX_DOSE
       & full_flag = TRUE
       & work = FALSE
       & card(set_of_times) > 0
    THEN
       act_dose := act_dose + 1
    END ;

    checkIncreaseFlowWasDone =
    PRE
        act_dose >= MAX_DOSE
        & bubble_sensor = FALSE
    THEN
        work := TRUE
        || full_flag := FALSE
    END ;
    
    checkSystemWasDone =
    PRE
        full_flag = TRUE
        & work = FALSE
        & card(set_of_times) = 0
    THEN
        full_flag := FALSE
        || work := FALSE
    END ;

    checkBubble =
    PRE
        act_dose >= MAX_DOSE
        & bubble_sensor = TRUE
    THEN
        work := TRUE
        || full_flag := TRUE
    END ;

    injectsMedication ( curr_time ) =
    PRE
        curr_time : NATURAL
        & act_dose >= MAX_DOSE
        & full_flag = FALSE
        & work = TRUE
        & curr_time : set_of_times
        & bubble_sensor = FALSE
        & card(set_of_times) > 0
    THEN
        // injeta 
        act_dose := 0
        || set_of_times := set_of_times - { curr_time }
        || full_flag := TRUE
        || work := FALSE
    END ;

    addTimes ( new_time ) =
    PRE
        new_time : NATURAL
        & work = FALSE
        & full_flag = FALSE
    THEN
        set_of_times := set_of_times \/ { new_time }
    END ;

    startSystem =
    PRE
        work = FALSE
        & full_flag = FALSE
    THEN
         work := FALSE
         || full_flag := TRUE
    END ;

    sendLog ( curr_time ) =
    PRE
        work = FALSE
        & full_flag = FALSE
        & curr_time : NATURAL
        & not ( curr_time : set_of_times )
    THEN
         // send log
         work := FALSE
    END ;
    
    sendWarning = 
    PRE
        work = TRUE
        & full_flag = TRUE
    THEN
        // envia um warning
        
        work := FALSE
        || full_flag := FALSE
    END

END
