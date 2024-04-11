***In this repository I will start uploading all my practices with Truffle and Ganache.***
***All of them are found in the "contracts" folder.***

### CryptoDeposit
 To test this contract, I used "remix", since it wouldn't let me put a value in Wei. 
 For this I used the number "3000000000000000000" to deposit 3 ETH, and to place said crypto in byte10, use: "0x45544800000000000000"

### Countdown
 In "truffle console" I have used the following commands to test the code:

 **In step 1: check how the seconds change**
 **In step 5: restores the int that we gave previously "120"**
 **In step 6: it will always give what we have set**

 1) admin = await Countdown.deployed()

 2) admin.timeLeft()

 3) admin.setGameDuration(120)

 4) admin.timeLeft()

 5) admin._restore()

 6) admin.getDuration()
      

### Manager
 In "truffle console" I have used the following commands to test the code:

 **In step 2: register a user**
 **In step 3: we will consult about said user with his address**
 **In step 4: now we will delete it, sorry :(**

  1) admin2 = await Manager.deployed()

  2) admin2.register(23,"Juan","Male")
      
  3) admin2.consult()       

  4) admin2._delete()    


*-later I must try doing tests, in the corresponding folder*
