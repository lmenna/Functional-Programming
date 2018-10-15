# Functional-Programming
Applications and tools developed using functional languages like Haskell

Haskell programming notes.

Here is how to startup a new project
> stack new NewHaskellProject
> cd NewHaskellProject
> stack setup
> stack build
> stack exec NewHaskellProject-exe

Haskell uses "stack" as the build, test, deploy tool.
stack init    : this sets up the project
stack build   : compile source code and reports errors
stack deploy  : deploy executables from built code
stack clean   : cleans up previous build
package.yaml  : important file describing how to build the project
stack.yaml    : created

Using interactive mode for testing
> ghci
Prelude> :load test
Prelude> fac 5
Prelude> 120
