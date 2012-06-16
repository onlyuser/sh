sh
--

Copyright (C) 2011-2012 Jerry Chen <mailto:onlyuser@gmail.com>

About:
------

sh is a collection of shell scripts used to maintain XLang.

<dl>
    <dt>Currently, it includes the following:</dt>
    <dd>xgrep   -- a grep wrapper that screens filenames before grepping</dd>
    <dd>xrefact -- a script for refactoring code</dd>
    <dd>xform   -- a script for applying my coding conventions</dd>
    <dd>diff.py -- a meld wrapper for better git diff experience</dd>
</dl>

xgrep:
------

<dl>
    <dt>Synopsis:</dt>
    <dd>xgrep <FILENAME> [SEARCH_STR]</dd>

    <dt>Description:</dt>
    <dd>Searches for SEARCH_STR in files matched by FILENAME.</dd>
    <dd>If SEARCH_STR not given, simply lists files matched by FILENAME.</dd>
</dl>

**Parameters:**

* FILENAME   -- regex describing which files to apply action
* SEARCH_STR -- grepped regex to apply to files matched

xrefact:
--------

<dl>
    <dt>Synopsis:</dt>
    <dd>xrefact <FILENAME> <SEARCH_STR> <REPLACE_STR> [IGNORE_COLLISION={1/0}]</dd>

    <dt>Description:</dt>
    <dd>Replaces SEARCH_STR with REPLACE_STR for files matched by FILENAME.</dd>
    <dd>If IGNORE_COLLISION is 0, skips replaces that produce new occurrences of SEARCH_STR.</dd>
    <dd>Replaces files named SEARCH_STR to REPLACE_STR as well.</dd>
    <dd>IGNORE_COLLISION also applies to file renaming, with analogous functionality.</dd>
</dl>

**Parameters:**

* FILENAME         -- regex describing which files to apply action
* SEARCH_STR       -- grepped regex to apply to files matched
* REPLACE_STR      -- string to replace SEARCH_STR
* IGNORE_COLLISION -- 1 for force replace, 0 for skipping collision case

xform:
------

<dl>
    <dt>Synopsis:</dt>
    <dd>xform <FILENAME></dd>

    <dt>Description:</dt>
    <dd>Applies formatting rules to files matched by FILENAME.</dd>
</dl>

**Parameters:**

* FILENAME -- regex describing which files to apply action

**Format rules:**

* unify indent
* trim trailing space
* unify empty brace spacing
* unify control-statement spacing
* unify spacing after "#include" and "namespace"
* STL headers (remove file extension + replace quotes with angle braces)
* C++ headers (remove file extension + replace quotes with angle braces)
* C headers (replace quotes with angle braces)

Requirements:
-------------

Add these lines to your .bashrc to gain PATH access (to my scripts):

    export PATH=sh:$PATH
    export PATH=sh/xargs:$PATH

Add these lines to your .bashrc to use diff.py:

    #git config --global diff.external meld
    git config --global diff.external sh/diff.py

Keywords:
---------

    shell scripting, bash, git, meld
