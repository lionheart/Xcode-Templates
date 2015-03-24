Lionheart Xcode Templates
=========================

_Keep it secret, keep it safe._ Seriously.

Installation
------------

```
make
```

You'll need to enter your password. This is because Xcode templates are stored in `/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/`, which is a write-protected folder. This command creates a symlink to the folder in which you downloaded the templates to (so you don't need to muck around in Xcode-land).

Removal
-------

Are these templates just too much awesome for you? Ok, fine.

```
make clean
```

You'll need to enter your password for the same reason as mentioned above.

Usage
-----

For now, only file templates are included. To use them, open up the new file dialog in Xcode, then select "LH Cocoa Touch Class". It's like a Cocoa Touch Class, but better. Then, create your file as usual.

Reference
---------

Xcode templates are stored in `/Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/` and `/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/`.
