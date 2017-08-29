# Fuzzolding

*A scaffolding project (for me) to quickly test some console app that takes a file as input*

### How to use

1. Install [Radamsa](https://github.com/aoh/radamsa)
2. Create a script in the directory that calls the thing you want to test taking a single file argument e.g

```bash
#! /bin/sh

echo $1
```
3. Add to the directory your legit source file that radamsa will be mutating for you
4. Run `./fuzz.sh $yourSourceFile $yourScript $howManyLoopsToDo &> fuzz.log`
5. Review `fuzz.log` for interesting results, then you can correlate the attempt run number with the mutated input file that caused that in the `/out` directory
