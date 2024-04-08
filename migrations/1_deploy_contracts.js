const Manager = artifacts.require("Manager");
const Countdown = artifacts.require("Countdown"); 

module.exports = function(deployer) {
  deployer.deploy(Manager);
  deployer.deploy(Countdown);
};
