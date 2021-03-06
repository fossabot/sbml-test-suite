(* 

category:      Test
synopsis:      Basic reaction with two species in one
compartment using an assignmentRule to assign value to a parameter.
componentTags: Compartment, Species, Reaction, Parameter, AssignmentRule, InitialAssignment 
testTags:      Concentration, NonUnityCompartment, InitialValueReassigned
testType:      TimeCourse
levels:        2.2, 2.3, 2.4, 2.5, 3.1
generatedBy:   Numeric

The model contains one compartment called C.  There are two
species called S1 and S2 and one parameter called k1.  The model contains one
reaction defined as:

[{width:30em,margin: 1em auto}|  *Reaction*  |  *Rate*  |
| S1 -> S2 | $C * k1 * S1$  |]

The model contains one rule which assigns value to parameter k1:

[{width:30em,margin: 1em auto}|  *Type*  |  *Variable*  |  *Formula*  |
 | Assignment | k1 | $0.75$  |]

In this case there is no initial value declared for parameter k1.  Thus the
value must be calculated using the assignmentRule.

The model contains one initialAssignment:

[{width:30em,margin: 1em auto}| Variable | Formula |
 | S1 | $k1 / 7.5$  |]

Note: InitialAssignments override any declared initial values.  The initial
value of species S1 is consisent with the value declared by the model definition.  

The initial conditions are as follows:

[{width:30em,margin: 1em auto}|       |*Value*          |*Units*  |
|Initial concentration of S1                |$0.1$    |mole litre^-1^                      |
|Initial concentration of S2                |$         0.15$ |mole litre^-1^                      |
|Value of parameter k1               |$   undeclared$ |second^-1^ |
|Volume of compartment C |$            6.6$ |litre                     |]

*)

newcase[ "00788" ];

addCompartment[ C, size -> 6.6];
addSpecies[ S1, initialConcentration -> 0.1 ];
addSpecies[ S2, initialConcentration -> .15 ];
addParameter[ k1, constant -> False ];
addInitialAssignment[ S1, math -> k1/7.5];
addRule[ type->AssignmentRule, variable -> k1, math -> 0.75];
addReaction[ S1 -> S2, reversible -> False,
	     kineticLaw -> C * k1 * S1];

makemodel[]
