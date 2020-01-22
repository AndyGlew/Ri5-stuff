# Ri5-stuff
Andy Glew RISC-V stuff

See this project's github wiki: 
* absolute: https://github.com/AndyGlew/Ri5-stuff/wiki
* relative <a href="../../wiki">href="../../wiki"</a>, 
   * if you have cloned both project git repos, code and wiki
   * this may link to your local clone, rather than back to github

The active work on the proposal is in the wiki.  Eventually it will probably be moved to the main repository, although it is possible that I will write tools to assemble the actual proposed spec for publication from the wiki directly.  Tools to do that, and to do things like highlight unfinished parts of the proposal on the wiki, will be placed in the main repository.

Q: is there a way to treat this project on github, both "main git repo" and "wiki git repo", as the same object? Otherwise will just check out the reps separately, and coordinate.

* https://github.com/AndyGlew/Ri5-stuff.git
* https://github.com/AndyGlew/Ri5-stuff.wiki.git

(for that matter, also the other parts of the project, like issues)

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
