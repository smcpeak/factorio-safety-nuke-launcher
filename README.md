Introduction
============
Safety Nuke Launcher is a mod for [Factorio](https://wiki.factorio.com/).  It adds
a rocket launcher that has a configurable minimum range in order to reduce
the occurrences of the player accidentally nuking themselves due to thinking
they had a different weapon equipped.

I made this mod after doing it to myself one too many times...

Additionally, this mod has an option (default off) to set the nuclear
rocket range bonus to 300% (regardless of launcher used).  More below.

Installation
============
Copy the release zip file (SafetyNukeLauncher_X.Y.Z.zip) into the "mods" subfolder
of the [User Data Directory](https://wiki.factorio.com/Application_directory#User_Data_directory).
Then start (or restart) Factorio.  It should then appear in the Mods
list available from the Factorio main menu, initially enabled.

Usage
=====
Unlock the new technology (atomic bombs are a prerequisite) and craft the
new Safety nuke launcher item.  Replace your existing rocket launcher with
the new one.  Then worry no more about nuking your feet!

The minimum range is configurable.  By default it is 30.  For comparison,
the nuclear explosion radius is 35.  So with the default setting it is
still possible to nuke yourself if you don't move at all after firing, but
also possible to strike relatively close targets.

If you regularly use non-nuclear rockets, you may want to lower the
minimum range.  With non-nuclear rockets, the maximum range is 36, so the
default minimum range of 30 only provides a narrow window of usability.
(There does not appear to be an easy way to make the minimum range depend
on the type of ammo equipped.)

Nuclear Rocket Range
====================
As of Factorio 1.0, the nuclear rocket has a 150% range bonus, giving it
an effective range of 54 tiles.  Previously the bonus was 300%.  The
shorter range makes the weapon unsafe to use against large biter bases,
which is the only useful scenario, since you have to get nearly swarmed
every time in order to hit the middle of the base.

Therefore I chose to add an option to this mod to restore the 300%
range bonus, making nukes useful again.

The
[1.0 release notes](https://wiki.factorio.com/Version_history/1.0.0) and
[the wiki](https://wiki.factorio.com/Atomic_bomb) do not (as of 2020-12-04)
even acknowledge this change, so it is possible this wasn't even an
intentional change by the developers.  If it was intentional, it is an
odd choice since nuclear rockets were already arguably underpowered in
comparison to both artillery and turret creeping.

Links
=====
Factorio mod portal page: https://mods.factorio.com/mods/smcpeak/SafetyNukeLauncher

Github repo: https://github.com/smcpeak/factorio-safety-nuke-launcher
