--

* Q: is there any way that I can refer to the wiki as a relative URL from this README.md
  * e.g. so that I can clone both together and be consistent?
  * FAIL <a href="wiki">href="wiki" relative</a> 
  * fails because it resolves to https://github.com/AndyGlew/Ri5-stuff/blob/master/wiki, 
  * i.e. the relative position is not https://github.com/AndyGlew/Ri5-stuff but is blob/master/wiki 
  * <a href=".">href="." relative</a> underneath that.
  * <a href="..">href=".." relative</a> - I doubt that such an "escape upwards" will work, but...  WOW! it works?  
  * <a href="../..">href="../.." relative</a> - I doubt that such an "escape upwards" will work, but...  WOW! it works?  
  * <a href="../../wiki">href="../../wiki" relative</a> YIPPEE!

Although I am so used to websites not allowing ascending relative components in URLs rthat I wonder if there is a security hole here...

Should not be as long as cannot go too far upwards
  * <a href="../../..">href="../../.." relative</a> https://github.com/AndyGlew/, 
  * <a href="../../../..">href="../../../.." relative</a> https://github.com, 
  
  * [[..]]
  * [[../../wiki]]
