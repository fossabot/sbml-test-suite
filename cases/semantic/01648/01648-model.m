(*

category:        Test
synopsis:        Model and species conversion factors whose IDs are duplicated by local parameters.
componentTags:   Compartment, Parameter, Reaction, Species
testTags:        Amount||Concentration, ConversionFactors, LocalParameters, NonUnityCompartment, ReversibleReaction [?]
testType:        TimeCourse
levels:          3.1, 3.2
generatedBy:     Analytic
packagesPresent: 

 In this model, model and species conversion factors IDs are duplicated by local parameters.

The model contains:
* 2 species (S1, S2)
* 2 parameters (m_cf, s1_cf)
* 2 local parameters (J0.m_cf, J0.s1_cf)
* 1 compartment (C)

There is one reaction:

[{width:30em,margin: 1em auto}|  *Reaction*  |  *Rate*  |
| J0: S1 -> S2 | $m_cf + s1_cf$ |]

The conversion factor for the model is 'm_cf'
The conversion factor for the species 'S1' is 's1_cf'

The initial conditions are as follows:

[{width:35em,margin: 1em auto}|       | *Value* | *Constant* |
| Initial amount of species S1 | $2$ | variable |
| Initial amount of species S2 | $3$ | variable |
| Initial value of parameter m_cf | $3$ | constant |
| Initial value of parameter s1_cf | $5$ | constant |
| Initial value of local parameter 'J0.m_cf' | $0.003$ | constant |
| Initial value of local parameter 'J0.s1_cf' | $0.007$ | constant |
| Initial volume of compartment 'C' | $1$ | constant |]

The species' initial quantities are given in terms of substance units to
make it easier to use the model in a discrete stochastic simulator, but
their symbols represent their values in concentration units where they
appear in expressions.

Note: The test data for this model was generated from an analytical
solution of the system of equations.

*)
