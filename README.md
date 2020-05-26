# BeamHash Implementation
nodejs native binding to check for valid Beamhash solutions

# Dependencies
````
sudo apt-get install build-essential libsodium-dev libboost-system-dev
````

# Usage
````javascript
var eb = require('bindings')('beamhashverify.node');

var header = new Buffer(..., 'hex');
var solution = new Buffer(..., 'hex'); //do not include byte size preamble "fd4005"

eb.verify(header, nonce, solution, 0); // default is 2=BeamHashIII, 0=BeamHashI, 1=BeamHashII
//returns boolean
````

# Backward compatibility
````javascript
ev.verify(header, nonce, solution);
````

# Test Suite:
````
sudo npm install -g mocha
npm install
mocha
````

