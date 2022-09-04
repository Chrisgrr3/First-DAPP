# First-DAPP

This repository will be used to keep track of notes and code samples while creating/learning how to create my first decentralized application through Truffle IDE.

1. We'll first want to create a directory for our DAPP. 

2. Now, we cd into that directory and run the command 'truffle init'
*If running into any errors related to running scripts, you'll need to enable script running for the system*

3. Once truffle has been initialized, the folders 'contracts', 'migrations', and 'test' will be added to the directory, along with a file 'truffle-config.js'.

4. Within the contracts folder, create a sample smart contract.

5. Once the smart contract is ready, head back to the root directory of the project and run the 'truffle compile' command.
*If you run into any compilation errors, you'll need to go back to the contract and ensure that these errors are corrected. It is best practice, however, to ensure that compilation errors are resolved within Remix IDE prior to the code being added to a truffle project*

6. We'll now need to configure the truffle environment. To do this, replace the empty truffle.js file in the ballot home directory to what is written below:

module.exports = {
    networks: {
        development: {
            host: "localhost",
            port: 9545, // the RPC for the test chain provided by truffle
            network_id: "*" // Match any network id
        }
    }
};