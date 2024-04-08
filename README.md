***In this repository I will start uploading all my practices with Truffle and Ganache.***
***All of them are found in the "contracts" folder.***

### Countdown
 In "truffle console" I have used the following commands to test the code:

 1) admin = await Countdown.deployed()
 2) admin.timeLeft()
 3) admin.setGameDuration(120) *to check how the seconds change*    
 4) admin.timeLeft()
 5) admin._restore()          *restores the int that we gave previously "120"*
 6) admin.getDuration()        *It will always give what we have set*
      

### Manager
 In "truffle console" I have used the following commands to test the code:

  1) admin2 = await Manager.deployed()
  2) admin2.register(23,"Juan","Male") *to register a user*   
  3) admin2.consult()         *Now we will consult about said user with his address*
  4) admin2._delete()        *and now we will delete it, sorry :(*


*-later I must try doing tests, in the corresponding folder*
