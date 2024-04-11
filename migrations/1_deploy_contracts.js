const Manager = artifacts.require("Manager");
const Countdown = artifacts.require("Countdown"); 
const CryptoDeposit = artifacts.require("CryptoDeposit");

module.exports = function(deployer) {
  deployer.deploy(Manager);
  deployer.deploy(Countdown);
  deployer.deploy(CryptoDeposit);
};
