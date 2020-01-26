README.txt for gnu-win32 beta 18 release
May 7, 1997

   You can find a link to the most recent release in
`ftp://ftp.cygnus.com/pub/gnu-win32/latest'

Changes since the last release
==============================

   This is a major release.  The new cygwin.dll is still
backwards-compatible with previously linked applications but contains
significant changes.

   We have completely changed the installation process to make use of
an InstallShield5-based installer.  This should reduce the number of
installation problems people have experienced in the past.  However, it
is still necessary to set environment variables by hand, as explained
later.  (Future gnu-win32 installers may include the capability to do
this automatically).

Changes in specific tools:
--------------------------

   GCC compilation times have been improved by 20-30% by using spawn()
instead of fork().

   GCC accepts both Win32 and POSIX paths/path lists in its environment
variables (COMPILER_PATH, LIBRARY_PATH, C_INCLUDE_PATH,
CPLUS_INCLUDE_PATH, OBJC_INCLUDE_PATH)

   GDB comes with a tcl/tk-based GUI (gdbtk).  You can still invoke the
command line gdb by invoking it with "gdb -nw".

   Bash verifies that /tmp exists and is a directory upon startup.  It
complains if this isn't the case.

   Running gcc or ld with "-s" used to create invalid executables.  The
bug in bfd that was responsible for this has been fixed.

   The conflict between String.h and string.h (and other such pairs of
header files) where you include one and get the other has been fixed.

   The top level install-sh script tries to install foo.exe if asked to
install foo when foo's not present.  This fixes many installs of Unix
software.

   Dlltool has preliminary support for the IMPORT declaration in .def
files when invoked with -I.  Feel free to experiment with it but once
this functionality is tested more extensively this flag may go away.

   Time is upgraded to version 1.7.

   Make is upgraded to version 3.75.

   Make accepts both Win32 and POSIX path lists in the VPATH variable.

Changes in the Cygwin32 API (cygwin.dll):
-----------------------------------------

   The following is now supported:

* UNC paths
* Reverse index escapes in console code
* Blocking select()s on a combination of sockets/handles
* Directory symlinks.
* Reparenting of child processes.

   The following calls have been added:

* mmap(), mprotect(), msync(), munmap().  fork() changed to support
these.
* fsync(), statfs(), fstatfs().
* getprotobynumber() and getservbyport().
* get_osfhandle(), cwait().
* spawnl(), spawnle(), spawnlp(), spawnlpe(), spawnv(), spawnve(),
spawnvp(), spawnvpe().
* nice().
* sigpending(), sigsuspend()
* Under NT only, chown(), getgrgid(), getgrnam(), endgrent(), getgrent(),
setpwend(), getpwent(), endpwent().  Win95 still has these as stubs.

   Significantly better signals / exception handling support added.
The kill signal works much better now (control-C works in bash).

   Shell scripts now run the shell specified after the #! instead of
always defaulting to /bin/sh.

   Floating point registers are now properly initialized in the crt0.o.

   Opening non-disk files such as com ports no longer check to see if
they are symlinks or executables.

   The console title now is set to the name of the running process.

   Winsock is now initialized upon app startup.

   Moved reent_data from private address space to cygwin.dll.

   The system() call now invokes spawnvp() instead of fork()/exec().

   Support for NT extended attributes has been added but is disabled
for now because it slowed things down too much.  We want to use them to
remember info about symlink and executable status of files.

   Under NT only, utilities mkpasswd and mkgroup can generate a valid
/etc/passwd and /etc/group.

   Earlier releases stored mount points in the registry under "Cygnus
Support".  This changed to "Cygnus Solutions" starting with beta 18.
Either use a registry editor (regedit under NT) to rename the old entry
or just redo your mount points and the cygwin.dll will automatically
create the new one for you.

   Mount points can now be up to MAX_PATH in length instead of 30
characters.

Contents
========

   The following packages are included in the full release:

   Cygnus Developer's Kit (CDK): binutils, byacc, diff, flex, gas, gcc,
gdb, ld, libg++, libstdc++, make, patch

   user tools: bash, fileutils, findutils, gawk, grep, gzip, m4, sed,
shellutils, tar, textutils, time

   Full source code is available for these tools.  It is split into
these two units.

Installing the binary release:
==============================

   First, remove any older versions of the gnu-win32 tools that exist
in your $PATH (or delete them).

   Connect to our ftp server and cd to the following directory:
`ftp://ftp.cygnus.com/pub/gnu-win32/latest'.

If you want the development tools...
------------------------------------

   If you want the development tools and the programs necessary to run
the GNU configure mechanism, you should download the whole release.

   Download `cdk.exe'.

   If you have an unreliable connection, download the binary in smaller
chunks instead.  For the split cdk installer, get the files in the
`cdk-split' subdirectory.  Once downloaded, combine the split files at
the command prompt by doing a:

     copy /b xaa + xab + xac + ... + xag + xah cdk.exe
     del xa*.*

   Run `cdk.exe' and follow the instructions to install the tools.  The
default install location is `<systemdrive>:\gnuwin32\b18'.  Future
examples will assume this location with <systemdrive> being the C drive.

   Next you must set four gnu-win32-related environment variables or the
tools will not function correctly.  You may prefer to do this outside
of bash so you can use the tools from the command.com as well as from
within bash.  This means using the `System' control panel in NT or
modifying the autoexec.bat under Windows 95.

   Assuming the `C:\gnuwin32\b18' install location:

   1) Set the GCC_EXEC_PREFIX environment variable to

   	`C:\gnuwin32\b18\H-i386-cygwin32\lib\gcc-lib\'

   The trailing slash is important!

   2) Add

   	`C:\gnuwin32\b18\H-i386-cygwin32\bin;C:\gnuwin32\b18\tcl\bin'

   to your $PATH.  This is where the executables live.

   3) Set the TCL_LIBRARY environment variable to

   	`C:/gnuwin32/b18/tcl/lib/tcl7.6'

   You must use forward slashes in this variable.

   4) Set the GDBTK_LIBRARY environment variable to

   `C:/gnuwin32/b18/share/gdbtcl'

   You must use forward slashes in this variable.

   Various programs need to be able to find `/bin/sh'.  You should
create a `/bin' if one doesn't already exist and put a copy of `sh.exe'
there.  You can use the `mount' utility to select which drive letter is
mounted as `/'. See the Frequently Asked Questions (FAQ) file for more
information on `mount'.

   Many programs including bash and byacc need to be able to find a
`/tmp'.  Verify that `/tmp' exists on the drive mounted as `/',
creating one if necessary.

   And you should be done!

   If you should ever want to uninstall the tools, you may do so via
the "Add/Remove Programs" control panel.

If you're not interested in the development tools...
----------------------------------------------------

   If you just want bash, fileutils, textutils, and other utilities and
don't need the development tools, you do NOT need to install the entire
release.

   Download `usertools.exe'.

   If you have an unreliable connection, download the binary in smaller
chunks instead.  For the split user tools installer, get the files in
the `usertools-split' subdirectory.  Once downloaded, combine the split
files at the command prompt by doing a:

     copy /b xaa + xab + xac + xad + xae usertools.exe
     del xa*.*

   Run `usertools.exe' and follow the instructions to install the tools.
The default install location is `<systemdrive>:\gnuwin32\b18'.  Future
examples will assume this location with <systemdrive> being the C drive.

   Next you need to add the executables to your $PATH.  You may prefer
to do this outside of bash so you can use the tools from the
command.com as well as from within bash.  This means using the `System'
control panel in NT or modifying the autoexec.bat under Windows 95.

   Assuming the `C:\gnuwin32\b18' install location, add

   	`C:\gnuwin32\b18\H-i386-cygwin32\bin'

   to your $PATH.

   Various programs need to be able to find `/bin/sh'.  You should
create a `/bin' if one doesn't already exist and put a copy of `sh.exe'
there.  You can use the `mount' utility to select which drive letter is
mounted as `/'. See the Frequently Asked Questions (FAQ) file for more
information on `mount'.

   Many programs including bash need to be able to find a `/tmp'.
Verify that `/tmp' exists on the drive mounted as `/', creating one if
necessary.

   And you should be done!

   If you should ever want to uninstall the tools, you may do so via
the "Add/Remove Programs" control panel.

Installing the source code
--------------------------

   Before downloading the source code corresponding to the release, you
should install the latest tools (either the full release or just the
user tools).

   Create the directory that will house the source code.  `cd' there.

   Connect to our ftp server and cd to the following directory:
`ftp://ftp.cygnus.com/pub/gnu-win32/latest'.  If you want the user
tools source code, `cd' into the `usertools-src' subdirectory.
Download the files there.  If you want the Cygnus Developer's Kit
sources, `cd' into the `cdk-src' subdirectory.  Download the files
there.

   Back in the command.com, for the user tools source:

     copy /b xba + xbb + xbc + xbd + ... + xbk + xbl usersrc.tar.gz
     del xb*.*
     gunzip -d usersrc.tar.gz
     tar xvf usersrc.tar

   For the compiler tools source:

     copy /b xca + xcb + xcc + xcd + ... + xck + xcl cdksrc.tar.gz
     del xc*.*
     gunzip -d cdksrc.tar.gz
     tar xvf cdksrc.tar

   Both will expand into a directory called `src'.

   And you should be done...

Cygnus resources online
***********************

   The main WWW page for the GNU-Win32 project is:

   	http://www.cygnus.com/misc/gnu-win32/

   Tool-specific information can be found here:

   http://www.cygnus.com/library/

   Links to additional documentation are accessible from the main web
page.

Known/potential problems
************************

Fixed-length arrays in the dll
==============================

   There are still a lot of places in the dll where fixed-length arrays
are used instead of dynamic structures which makes us use more memory
than necessary or limits the capabilities of the Cygwin32 layer.  Some
of these have been fixed since beta 16.

Missing POSIX functions
=======================

   There's still a lot of standard posix functionality that isn't
present that could be.   Also, some functions aren't implemented fully.
For example, sync returns 0, even though it doesn't do much.  We're
filling in the gaps slowly but surely.

Programs can't deal with // pathname scheme in arguments
========================================================

   gcc and other tools aren't fully compatible with the current pathname
scheme: it can't grok an argument of -I//d/foo which means it is vital
that when attempting to self-host, that only normal paths with single
slashes are used.

DOS special filenames
=====================

   Files cannot be named com1, lpt1, or aux (to name a few); either as
the root filename or as the extension part.  If you do, you'll have
trouble.  Unix programs don't avoid these names which can make things
interesting.  Eg, the perl distribution has a file called `aux.sh'.
The perl configuration tries to make sure that `aux.sh' is there, but
an operation on a file with the magic letters 'aux' in it will hang.

User defined mallocs.
=====================

   If you define a function called `malloc' in your own code, and link
with the DLL, the DLL *will* call your `malloc'.  You'd better make
sure that your malloc more or less works.

   If you run any programs from the DOS command prompt, rather than
from in bash, the DLL will try and expand the wildcards on the command
line.  This process uses `malloc' *before* your main line is started.
If you have written your own `malloc' to need some initialization to
occur after `main' is called, then this will surely break.

Mixed case filenames.
=====================

   The perl config causes some other problems too; the config<foo>.SH
scripts generate a file called "Makefile", and use and delete a file
called "makefile" on the way.  Because of NT's case insensitivity, this
will nuke Makefile, leaving you with nothing.  You can fix this by
mounting with the 'mixed' option.

