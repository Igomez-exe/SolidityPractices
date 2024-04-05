# UserManager
 Practicing more solidity but using Truffle and Ganache

 In "truffle console" I have used the following commands to test the code:
  1) admin = await Manager.deployed()
  
  2) admin.register(23,"Juan","Male","0x94A9FB91Bd9Fc46E8026aaCae5a946c8483Fa2dc")
        *to register a user*

        *Now we will consult about said user with his address*
  3) admin.consult("0x94A9FB91Bd9Fc46E8026aaCae5a946c8483Fa2dc")   

        *and now we will delete it, sorry :(*
  4) admin._delete("0x94A9FB91Bd9Fc46E8026aaCae5a946c8483Fa2dc")

        *I'll see if it's deleted correctly.*
  5) admin.consult("0x94A9FB91Bd9Fc46E8026aaCae5a946c8483Fa2dc")

-*later I must try doing tests, in the corresponding folder*
