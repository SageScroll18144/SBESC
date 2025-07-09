Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(SystemMedicalMch_r))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(SystemMedicalMch_r))==(Machine(SystemMedicalMch));
  Level(Refinement(SystemMedicalMch_r))==(1);
  Upper_Level(Refinement(SystemMedicalMch_r))==(Machine(SystemMedicalMch))
END
&
THEORY LoadedStructureX IS
  Refinement(SystemMedicalMch_r)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(SystemMedicalMch_r))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(SystemMedicalMch_r))==(?);
  List_Includes(Refinement(SystemMedicalMch_r))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(SystemMedicalMch_r))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(SystemMedicalMch_r))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(SystemMedicalMch_r))==(?);
  Context_List_Variables(Refinement(SystemMedicalMch_r))==(?);
  Abstract_List_Variables(Refinement(SystemMedicalMch_r))==(bubble_sensor,log_flag,full_flag,work,set_of_times,act_dose);
  Local_List_Variables(Refinement(SystemMedicalMch_r))==(bubble_sensor,log_flag,full_flag,work,set_of_times,act_dose);
  List_Variables(Refinement(SystemMedicalMch_r))==(bubble_sensor,log_flag,full_flag,work,set_of_times,act_dose);
  External_List_Variables(Refinement(SystemMedicalMch_r))==(bubble_sensor,log_flag,full_flag,work,set_of_times,act_dose)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(SystemMedicalMch_r))==(?);
  Abstract_List_VisibleVariables(Refinement(SystemMedicalMch_r))==(?);
  External_List_VisibleVariables(Refinement(SystemMedicalMch_r))==(?);
  Expanded_List_VisibleVariables(Refinement(SystemMedicalMch_r))==(?);
  List_VisibleVariables(Refinement(SystemMedicalMch_r))==(?);
  Internal_List_VisibleVariables(Refinement(SystemMedicalMch_r))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(SystemMedicalMch_r))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(SystemMedicalMch_r))==(btrue);
  Expanded_List_Invariant(Refinement(SystemMedicalMch_r))==(btrue);
  Abstract_List_Invariant(Refinement(SystemMedicalMch_r))==(act_dose: NATURAL & set_of_times: POW(NATURAL) & work: BOOL & full_flag: BOOL & log_flag: BOOL & bubble_sensor: BOOL & 100*act_dose<=100*MAX_DOSE+MAX_DOSE*5 & (full_flag = TRUE => work = FALSE) & (work = TRUE => full_flag = FALSE));
  Context_List_Invariant(Refinement(SystemMedicalMch_r))==(btrue);
  List_Invariant(Refinement(SystemMedicalMch_r))==(act_dose: NAT & set_of_times: POW(NAT) & work: BOOL & full_flag: BOOL & log_flag: BOOL & bubble_sensor: BOOL & 100*act_dose<=100*MAX_DOSE+MAX_DOSE*5 & (full_flag = TRUE => work = FALSE) & (work = TRUE => full_flag = FALSE))
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(SystemMedicalMch_r))==(0)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(SystemMedicalMch_r))==(btrue);
  Abstract_List_Assertions(Refinement(SystemMedicalMch_r))==(btrue);
  Context_List_Assertions(Refinement(SystemMedicalMch_r))==(btrue);
  List_Assertions(Refinement(SystemMedicalMch_r))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(SystemMedicalMch_r))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(SystemMedicalMch_r))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(SystemMedicalMch_r))==(act_dose,set_of_times,work,full_flag,log_flag,bubble_sensor:=0,{},FALSE,FALSE,FALSE,FALSE);
  Context_List_Initialisation(Refinement(SystemMedicalMch_r))==(skip);
  List_Initialisation(Refinement(SystemMedicalMch_r))==(act_dose:=0 || set_of_times:={} || work:=FALSE || full_flag:=FALSE || log_flag:=FALSE || bubble_sensor:=FALSE)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(SystemMedicalMch_r))==(increaseFlow,checkIncreaseFlowWasDone,injectsMedication,addTimes,startSystem,sendLog,askLog);
  List_Operations(Refinement(SystemMedicalMch_r))==(increaseFlow,checkIncreaseFlowWasDone,injectsMedication,addTimes,startSystem,sendLog,askLog)
END
&
THEORY ListInputX IS
  List_Input(Refinement(SystemMedicalMch_r),increaseFlow)==(?);
  List_Input(Refinement(SystemMedicalMch_r),checkIncreaseFlowWasDone)==(?);
  List_Input(Refinement(SystemMedicalMch_r),injectsMedication)==(curr_time);
  List_Input(Refinement(SystemMedicalMch_r),addTimes)==(new_time);
  List_Input(Refinement(SystemMedicalMch_r),startSystem)==(?);
  List_Input(Refinement(SystemMedicalMch_r),sendLog)==(curr_time);
  List_Input(Refinement(SystemMedicalMch_r),askLog)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(SystemMedicalMch_r),increaseFlow)==(?);
  List_Output(Refinement(SystemMedicalMch_r),checkIncreaseFlowWasDone)==(?);
  List_Output(Refinement(SystemMedicalMch_r),injectsMedication)==(?);
  List_Output(Refinement(SystemMedicalMch_r),addTimes)==(?);
  List_Output(Refinement(SystemMedicalMch_r),startSystem)==(?);
  List_Output(Refinement(SystemMedicalMch_r),sendLog)==(?);
  List_Output(Refinement(SystemMedicalMch_r),askLog)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(SystemMedicalMch_r),increaseFlow)==(increaseFlow);
  List_Header(Refinement(SystemMedicalMch_r),checkIncreaseFlowWasDone)==(checkIncreaseFlowWasDone);
  List_Header(Refinement(SystemMedicalMch_r),injectsMedication)==(injectsMedication(curr_time));
  List_Header(Refinement(SystemMedicalMch_r),addTimes)==(addTimes(new_time));
  List_Header(Refinement(SystemMedicalMch_r),startSystem)==(startSystem);
  List_Header(Refinement(SystemMedicalMch_r),sendLog)==(sendLog(curr_time));
  List_Header(Refinement(SystemMedicalMch_r),askLog)==(askLog)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(SystemMedicalMch_r),increaseFlow)==(act_dose<MAX_DOSE & full_flag = TRUE & work = FALSE);
  List_Precondition(Refinement(SystemMedicalMch_r),increaseFlow)==(act_dose<MAX_DOSE & full_flag = TRUE & work = FALSE & act_dose<MAX_DOSE & full_flag = TRUE & work = FALSE);
  Own_Precondition(Refinement(SystemMedicalMch_r),checkIncreaseFlowWasDone)==(act_dose>=MAX_DOSE);
  List_Precondition(Refinement(SystemMedicalMch_r),checkIncreaseFlowWasDone)==(act_dose>=MAX_DOSE & act_dose>=MAX_DOSE);
  Own_Precondition(Refinement(SystemMedicalMch_r),injectsMedication)==(curr_time: NATURAL & act_dose>=MAX_DOSE & full_flag = FALSE & work = TRUE & curr_time: set_of_times & bubble_sensor = FALSE);
  List_Precondition(Refinement(SystemMedicalMch_r),injectsMedication)==(curr_time: NATURAL & act_dose>=MAX_DOSE & full_flag = FALSE & work = TRUE & curr_time: set_of_times & bubble_sensor = FALSE & curr_time: NATURAL & act_dose>=MAX_DOSE & full_flag = FALSE & work = TRUE & curr_time: set_of_times & bubble_sensor = FALSE);
  Own_Precondition(Refinement(SystemMedicalMch_r),addTimes)==(new_time: NATURAL & work = FALSE & full_flag = FALSE);
  List_Precondition(Refinement(SystemMedicalMch_r),addTimes)==(new_time: NATURAL & work = FALSE & full_flag = FALSE & new_time: NATURAL & work = FALSE & full_flag = FALSE);
  Own_Precondition(Refinement(SystemMedicalMch_r),startSystem)==(work = FALSE & full_flag = FALSE);
  List_Precondition(Refinement(SystemMedicalMch_r),startSystem)==(work = FALSE & full_flag = FALSE & work = FALSE & full_flag = FALSE);
  Own_Precondition(Refinement(SystemMedicalMch_r),sendLog)==(work = FALSE & full_flag = FALSE & log_flag = TRUE & curr_time: NATURAL & not(curr_time: set_of_times));
  List_Precondition(Refinement(SystemMedicalMch_r),sendLog)==(work = FALSE & full_flag = FALSE & log_flag = TRUE & curr_time: NATURAL & not(curr_time: set_of_times) & work = FALSE & full_flag = FALSE & log_flag = TRUE & curr_time: NATURAL & not(curr_time: set_of_times));
  Own_Precondition(Refinement(SystemMedicalMch_r),askLog)==(btrue);
  List_Precondition(Refinement(SystemMedicalMch_r),askLog)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(SystemMedicalMch_r),askLog)==(btrue | log_flag:=TRUE);
  Expanded_List_Substitution(Refinement(SystemMedicalMch_r),sendLog)==(work = FALSE & full_flag = FALSE & log_flag = TRUE & curr_time: NATURAL & not(curr_time: set_of_times) & work = FALSE & full_flag = FALSE & log_flag = TRUE & curr_time: NATURAL & not(curr_time: set_of_times) | log_flag:=FALSE);
  Expanded_List_Substitution(Refinement(SystemMedicalMch_r),startSystem)==(work = FALSE & full_flag = FALSE & work = FALSE & full_flag = FALSE | work,full_flag:=FALSE,TRUE);
  Expanded_List_Substitution(Refinement(SystemMedicalMch_r),addTimes)==(new_time: NATURAL & work = FALSE & full_flag = FALSE & new_time: NATURAL & work = FALSE & full_flag = FALSE | set_of_times:=set_of_times\/{new_time});
  Expanded_List_Substitution(Refinement(SystemMedicalMch_r),injectsMedication)==(curr_time: NATURAL & act_dose>=MAX_DOSE & full_flag = FALSE & work = TRUE & curr_time: set_of_times & bubble_sensor = FALSE & curr_time: NATURAL & act_dose>=MAX_DOSE & full_flag = FALSE & work = TRUE & curr_time: set_of_times & bubble_sensor = FALSE | act_dose,set_of_times:=0,set_of_times-{curr_time});
  Expanded_List_Substitution(Refinement(SystemMedicalMch_r),checkIncreaseFlowWasDone)==(act_dose>=MAX_DOSE & act_dose>=MAX_DOSE | work,full_flag:=TRUE,FALSE);
  Expanded_List_Substitution(Refinement(SystemMedicalMch_r),increaseFlow)==(act_dose<MAX_DOSE & full_flag = TRUE & work = FALSE & act_dose<MAX_DOSE & full_flag = TRUE & work = FALSE | act_dose:=act_dose+1);
  List_Substitution(Refinement(SystemMedicalMch_r),increaseFlow)==(act_dose:=act_dose+1);
  List_Substitution(Refinement(SystemMedicalMch_r),checkIncreaseFlowWasDone)==(work:=TRUE || full_flag:=FALSE);
  List_Substitution(Refinement(SystemMedicalMch_r),injectsMedication)==(act_dose:=0 || set_of_times:=set_of_times-{curr_time});
  List_Substitution(Refinement(SystemMedicalMch_r),addTimes)==(set_of_times:=set_of_times\/{new_time});
  List_Substitution(Refinement(SystemMedicalMch_r),startSystem)==(work:=FALSE || full_flag:=TRUE);
  List_Substitution(Refinement(SystemMedicalMch_r),sendLog)==(log_flag:=FALSE);
  List_Substitution(Refinement(SystemMedicalMch_r),askLog)==(log_flag:=TRUE)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(SystemMedicalMch_r))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(SystemMedicalMch_r))==(btrue);
  List_Context_Constraints(Refinement(SystemMedicalMch_r))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(SystemMedicalMch_r))==(MAX_DOSE);
  Inherited_List_Constants(Refinement(SystemMedicalMch_r))==(MAX_DOSE);
  List_Constants(Refinement(SystemMedicalMch_r))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Refinement(SystemMedicalMch_r))==(?);
  Context_List_Defered(Refinement(SystemMedicalMch_r))==(?);
  Context_List_Sets(Refinement(SystemMedicalMch_r))==(?);
  List_Valuable_Sets(Refinement(SystemMedicalMch_r))==(?);
  Inherited_List_Enumerated(Refinement(SystemMedicalMch_r))==(?);
  Inherited_List_Defered(Refinement(SystemMedicalMch_r))==(?);
  Inherited_List_Sets(Refinement(SystemMedicalMch_r))==(?);
  List_Enumerated(Refinement(SystemMedicalMch_r))==(?);
  List_Defered(Refinement(SystemMedicalMch_r))==(?);
  List_Sets(Refinement(SystemMedicalMch_r))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(SystemMedicalMch_r))==(?);
  Expanded_List_HiddenConstants(Refinement(SystemMedicalMch_r))==(?);
  List_HiddenConstants(Refinement(SystemMedicalMch_r))==(?);
  External_List_HiddenConstants(Refinement(SystemMedicalMch_r))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(SystemMedicalMch_r))==(MAX_DOSE = 100);
  Context_List_Properties(Refinement(SystemMedicalMch_r))==(btrue);
  Inherited_List_Properties(Refinement(SystemMedicalMch_r))==(btrue);
  List_Properties(Refinement(SystemMedicalMch_r))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(SystemMedicalMch_r),increaseFlow)==(?);
  List_ANY_Var(Refinement(SystemMedicalMch_r),checkIncreaseFlowWasDone)==(?);
  List_ANY_Var(Refinement(SystemMedicalMch_r),injectsMedication)==(?);
  List_ANY_Var(Refinement(SystemMedicalMch_r),addTimes)==(?);
  List_ANY_Var(Refinement(SystemMedicalMch_r),startSystem)==(?);
  List_ANY_Var(Refinement(SystemMedicalMch_r),sendLog)==(?);
  List_ANY_Var(Refinement(SystemMedicalMch_r),askLog)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(SystemMedicalMch_r)) == (? | ? | bubble_sensor,log_flag,full_flag,work,set_of_times,act_dose | ? | increaseFlow,checkIncreaseFlowWasDone,injectsMedication,addTimes,startSystem,sendLog,askLog | ? | ? | ? | SystemMedicalMch_r);
  List_Of_HiddenCst_Ids(Refinement(SystemMedicalMch_r)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(SystemMedicalMch_r)) == (?);
  List_Of_VisibleVar_Ids(Refinement(SystemMedicalMch_r)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(SystemMedicalMch_r)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Refinement(SystemMedicalMch_r)) == (Type(MAX_DOSE) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(SystemMedicalMch_r)) == (Type(bubble_sensor) == Mvl(btype(BOOL,?,?));Type(log_flag) == Mvl(btype(BOOL,?,?));Type(full_flag) == Mvl(btype(BOOL,?,?));Type(work) == Mvl(btype(BOOL,?,?));Type(set_of_times) == Mvl(SetOf(btype(INTEGER,?,?)));Type(act_dose) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(SystemMedicalMch_r)) == (Type(askLog) == Cst(No_type,No_type);Type(sendLog) == Cst(No_type,btype(INTEGER,?,?));Type(startSystem) == Cst(No_type,No_type);Type(addTimes) == Cst(No_type,btype(INTEGER,?,?));Type(injectsMedication) == Cst(No_type,btype(INTEGER,?,?));Type(checkIncreaseFlowWasDone) == Cst(No_type,No_type);Type(increaseFlow) == Cst(No_type,No_type))
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
