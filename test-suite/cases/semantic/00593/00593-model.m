(* 

category:      Test
synopsis:      Basic reaction with two species in a 1-dimensional compartment.
componentTags: Compartment, Species, Reaction, Parameter 
testTags:      InitialConcentration, 1D-Compartment
testType:      TimeCourse
levels:        2.1, 2.2, 2.3
generatedBy:   Numeric

The model contains one compartment called C.  There are three
species called S1, S2 and S3 and two parameters called k1 and k2.
Compartment C is 1-dimensional.  The model contains two reactions
defined as:

[{width:30em,margin-left:5em}|  *Reaction*  |  *Rate*  |
| S1 + S2 -> S3 | $k1 * S1 * S2 * C$  |
| S3 -> S1 + S2 | $k2 * S3 * C$  |]

The initial conditions are as follows:

[{width:30em,margin-left:5em}| |*Value*         |*Units*  |
|Initial concentration of S1   |$1.0 \x 10^-15$ |mole metre^-1^                      |
|Initial concentration of S2   |$2.0 \x 10^-15$ |mole metre^-1^                      |
|Initial concentration of S3   |$1.0 \x 10^-15$ |mole metre^-1^                      |
|Value of parameter k1         |$         0.75$ |metre mole^-1^ second^-1^ |
|Value of parameter k2         |$         0.25$ |second^-1^ |
|Length of compartment C       |$            1$ |metre                     |]

*)

newcase[ "00593" ];

addCompartment[ C, spatialDimensions-> 1, size -> 1 ];
addSpecies[ S1, initialConcentration -> 1.0 10^-15];
addSpecies[ S2, initialConcentration -> 2.0 10^-15];
addSpecies[ S3, initialConcentration -> 1.0 10^-15];
addParameter[ k1, value -> 0.75 ];
addParameter[ k2, value -> 0.25 ];
addReaction[ S1 + S2 -> S3, reversible -> False,
	     kineticLaw -> k1 * S1 * S2 * C ];
addReaction[ S3 -> S1 + S2, reversible -> False,
	     kineticLaw -> k2 * S3 * C ];

makemodel[]
