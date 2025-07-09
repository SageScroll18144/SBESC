Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(SystemMedicalMch))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(SystemMedicalMch))==(Machine(SystemMedicalMch));
  Level(Machine(SystemMedicalMch))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(SystemMedicalMch)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(SystemMedicalMch))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(SystemMedicalMch))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(SystemMedicalMch))==(?);
  List_Includes(Machine(SystemMedicalMch))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(SystemMedicalMch))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(SystemMedicalMch))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(SystemMedicalMch))==(?);
  Context_List_Variables(Machine(SystemMedicalMch))==(?);
  Abstract_List_Variables(Machine(SystemMedicalMch))==(?);
  Local_List_Variables(Machine(SystemMedicalMch))==(bubble_sensor,full_flag,work,set_of_times,act_dose);
  List_Variables(Machine(SystemMedicalMch))==(bubble_sensor,full_flag,work,set_of_times,act_dose);
  External_List_Variables(Machine(SystemMedicalMch))==(bubble_sensor,full_flag,work,set_of_times,act_dose)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(SystemMedicalMch))==(?);
  Abstract_List_VisibleVariables(Machine(SystemMedicalMch))==(?);
  External_List_VisibleVariables(Machine(SystemMedicalMch))==(?);
  Expanded_List_VisibleVariables(Machine(SystemMedicalMch))==(?);
  List_VisibleVariables(Machine(SystemMedicalMch))==(?);
  Internal_List_VisibleVariables(Machine(SystemMedicalMch))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(SystemMedicalMch))==(btrue);
  Gluing_List_Invariant(Machine(SystemMedicalMch))==(btrue);
  Expanded_List_Invariant(Machine(SystemMedicalMch))==(btrue);
  Abstract_List_Invariant(Machine(SystemMedicalMch))==(btrue);
  Context_List_Invariant(Machine(SystemMedicalMch))==(btrue);
  List_Invariant(Machine(SystemMedicalMch))==(act_dose: NATURAL & set_of_times: POW(NATURAL) & work: BOOL & full_flag: BOOL & bubble_sensor: BOOL & 100*act_dose<=100*MAX_DOSE+MAX_DOSE*5 & (full_flag = TRUE => work = FALSE) & (work = TRUE => full_flag = FALSE))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(SystemMedicalMch))==(btrue);
  Abstract_List_Assertions(Machine(SystemMedicalMch))==(btrue);
  Context_List_Assertions(Machine(SystemMedicalMch))==(btrue);
  List_Assertions(Machine(SystemMedicalMch))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(SystemMedicalMch))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(SystemMedicalMch))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(SystemMedicalMch))==(act_dose,set_of_times,work,full_flag,bubble_sensor:=0,{},FALSE,FALSE,FALSE);
  Context_List_Initialisation(Machine(SystemMedicalMch))==(skip);
  List_Initialisation(Machine(SystemMedicalMch))==(act_dose:=0 || set_of_times:={} || work:=FALSE || full_flag:=FALSE || bubble_sensor:=FALSE)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(SystemMedicalMch))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(SystemMedicalMch))==(btrue);
  List_Constraints(Machine(SystemMedicalMch))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(SystemMedicalMch))==(increaseFlow,checkIncreaseFlowWasDone,injectsMedication,addTimes,startSystem,sendLog);
  List_Operations(Machine(SystemMedicalMch))==(increaseFlow,checkIncreaseFlowWasDone,injectsMedication,addTimes,startSystem,sendLog)
END
&
THEORY ListInputX IS
  List_Input(Machine(SystemMedicalMch),increaseFlow)==(?);
  List_Input(Machine(SystemMedicalMch),checkIncreaseFlowWasDone)==(?);
  List_Input(Machine(SystemMedicalMch),injectsMedication)==(curr_time);
  List_Input(Machine(SystemMedicalMch),addTimes)==(new_time);
  List_Input(Machine(SystemMedicalMch),startSystem)==(?);
  List_Input(Machine(SystemMedicalMch),sendLog)==(curr_time)
END
&
THEORY ListOutputX IS
  List_Output(Machine(SystemMedicalMch),increaseFlow)==(?);
  List_Output(Machine(SystemMedicalMch),checkIncreaseFlowWasDone)==(?);
  List_Output(Machine(SystemMedicalMch),injectsMedication)==(?);
  List_Output(Machine(SystemMedicalMch),addTimes)==(?);
  List_Output(Machine(SystemMedicalMch),startSystem)==(?);
  List_Output(Machine(SystemMedicalMch),sendLog)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(SystemMedicalMch),increaseFlow)==(increaseFlow);
  List_Header(Machine(SystemMedicalMch),checkIncreaseFlowWasDone)==(checkIncreaseFlowWasDone);
  List_Header(Machine(SystemMedicalMch),injectsMedication)==(injectsMedication(curr_time));
  List_Header(Machine(SystemMedicalMch),addTimes)==(addTimes(new_time));
  List_Header(Machine(SystemMedicalMch),startSystem)==(startSystem);
  List_Header(Machine(SystemMedicalMch),sendLog)==(sendLog(curr_time))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(SystemMedicalMch),increaseFlow)==(act_dose<MAX_DOSE & full_flag = TRUE & work = FALSE);
  List_Precondition(Machine(SystemMedicalMch),checkIncreaseFlowWasDone)==(act_dose>=MAX_DOSE);
  List_Precondition(Machine(SystemMedicalMch),injectsMedication)==(curr_time: NATURAL & act_dose>=MAX_DOSE & full_flag = FALSE & work = TRUE & curr_time: set_of_times & bubble_sensor = FALSE);
  List_Precondition(Machine(SystemMedicalMch),addTimes)==(new_time: NATURAL & work = FALSE & full_flag = FALSE);
  List_Precondition(Machine(SystemMedicalMch),startSystem)==(work = FALSE & full_flag = FALSE);
  List_Precondition(Machine(SystemMedicalMch),sendLog)==(work = FALSE & full_flag = FALSE & curr_time: NATURAL & not(curr_time: set_of_times))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(SystemMedicalMch),sendLog)==(work = FALSE & full_flag = FALSE & curr_time: NATURAL & not(curr_time: set_of_times) | work:=FALSE);
  Expanded_List_Substitution(Machine(SystemMedicalMch),startSystem)==(work = FALSE & full_flag = FALSE | work,full_flag:=FALSE,TRUE);
  Expanded_List_Substitution(Machine(SystemMedicalMch),addTimes)==(new_time: NATURAL & work = FALSE & full_flag = FALSE | set_of_times:=set_of_times\/{new_time});
  Expanded_List_Substitution(Machine(SystemMedicalMch),injectsMedication)==(curr_time: NATURAL & act_dose>=MAX_DOSE & full_flag = FALSE & work = TRUE & curr_time: set_of_times & bubble_sensor = FALSE | act_dose,set_of_times:=0,set_of_times-{curr_time});
  Expanded_List_Substitution(Machine(SystemMedicalMch),checkIncreaseFlowWasDone)==(act_dose>=MAX_DOSE | work,full_flag:=TRUE,FALSE);
  Expanded_List_Substitution(Machine(SystemMedicalMch),increaseFlow)==(act_dose<MAX_DOSE & full_flag = TRUE & work = FALSE | act_dose:=act_dose+1);
  List_Substitution(Machine(SystemMedicalMch),increaseFlow)==(act_dose:=act_dose+1);
  List_Substitution(Machine(SystemMedicalMch),checkIncreaseFlowWasDone)==(work:=TRUE || full_flag:=FALSE);
  List_Substitution(Machine(SystemMedicalMch),injectsMedication)==(act_dose:=0 || set_of_times:=set_of_times-{curr_time});
  List_Substitution(Machine(SystemMedicalMch),addTimes)==(set_of_times:=set_of_times\/{new_time});
  List_Substitution(Machine(SystemMedicalMch),startSystem)==(work:=FALSE || full_flag:=TRUE);
  List_Substitution(Machine(SystemMedicalMch),sendLog)==(work:=FALSE)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(SystemMedicalMch))==(MAX_DOSE);
  Inherited_List_Constants(Machine(SystemMedicalMch))==(?);
  List_Constants(Machine(SystemMedicalMch))==(MAX_DOSE)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(SystemMedicalMch))==(?);
  Context_List_Defered(Machine(SystemMedicalMch))==(?);
  Context_List_Sets(Machine(SystemMedicalMch))==(?);
  List_Valuable_Sets(Machine(SystemMedicalMch))==(?);
  Inherited_List_Enumerated(Machine(SystemMedicalMch))==(?);
  Inherited_List_Defered(Machine(SystemMedicalMch))==(?);
  Inherited_List_Sets(Machine(SystemMedicalMch))==(?);
  List_Enumerated(Machine(SystemMedicalMch))==(?);
  List_Defered(Machine(SystemMedicalMch))==(?);
  List_Sets(Machine(SystemMedicalMch))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(SystemMedicalMch))==(?);
  Expanded_List_HiddenConstants(Machine(SystemMedicalMch))==(?);
  List_HiddenConstants(Machine(SystemMedicalMch))==(?);
  External_List_HiddenConstants(Machine(SystemMedicalMch))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(SystemMedicalMch))==(btrue);
  Context_List_Properties(Machine(SystemMedicalMch))==(btrue);
  Inherited_List_Properties(Machine(SystemMedicalMch))==(btrue);
  List_Properties(Machine(SystemMedicalMch))==(MAX_DOSE = 100)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(SystemMedicalMch),increaseFlow)==(?);
  List_ANY_Var(Machine(SystemMedicalMch),checkIncreaseFlowWasDone)==(?);
  List_ANY_Var(Machine(SystemMedicalMch),injectsMedication)==(?);
  List_ANY_Var(Machine(SystemMedicalMch),addTimes)==(?);
  List_ANY_Var(Machine(SystemMedicalMch),startSystem)==(?);
  List_ANY_Var(Machine(SystemMedicalMch),sendLog)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(SystemMedicalMch)) == (MAX_DOSE | ? | bubble_sensor,full_flag,work,set_of_times,act_dose | ? | increaseFlow,checkIncreaseFlowWasDone,injectsMedication,addTimes,startSystem,sendLog | ? | ? | ? | SystemMedicalMch);
  List_Of_HiddenCst_Ids(Machine(SystemMedicalMch)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(SystemMedicalMch)) == (MAX_DOSE);
  List_Of_VisibleVar_Ids(Machine(SystemMedicalMch)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(SystemMedicalMch)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(SystemMedicalMch)) == (Type(MAX_DOSE) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(SystemMedicalMch)) == (Type(bubble_sensor) == Mvl(btype(BOOL,?,?));Type(full_flag) == Mvl(btype(BOOL,?,?));Type(work) == Mvl(btype(BOOL,?,?));Type(set_of_times) == Mvl(SetOf(btype(INTEGER,?,?)));Type(act_dose) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(SystemMedicalMch)) == (Type(sendLog) == Cst(No_type,btype(INTEGER,?,?));Type(startSystem) == Cst(No_type,No_type);Type(addTimes) == Cst(No_type,btype(INTEGER,?,?));Type(injectsMedication) == Cst(No_type,btype(INTEGER,?,?));Type(checkIncreaseFlowWasDone) == Cst(No_type,No_type);Type(increaseFlow) == Cst(No_type,No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
