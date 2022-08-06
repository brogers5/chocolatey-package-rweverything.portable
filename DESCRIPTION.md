
---
### [choco://rweverything.portable](choco://rweverything.portable)
To use choco:// protocol URLs, install [(unofficial) choco:// Protocol support ](https://community.chocolatey.org/packages/choco-protocol-support)

---

RWEverything can access almost all computer hardware, including PCI (PCI Express), PCI Index/Data, Memory, Memory Index/Data, I/O Space, I/O Index/Data, Super I/O, Clock Generator, DIMM SPD, SMBus Device, CPU MSR Registers, ATA/ATAPI Identify Data, Disk Read Write, ACPI Tables Dump (include AML decode), Embedded Controller, USB Information, SMBIOS Structures, PCI Option ROMs, MP Configuration Table, E820, EDID and Remote Access. A Command Window is provided to access hardware manually.

Powerful utility for hardware engineers, firmware (BIOS) engineers, driver developers, QA engineers, performance test engineers, diagnostic engineers, etc.

![RWEverything Screenshot](https://cdn.jsdelivr.net/gh/brogers5/chocolatey-package-rweverything.portable@a17d2d8f04410806c68a9ff8e032d7df79faed72/Screenshot.png)

### **NOTE**: RWEverything comes with ABSOLUTELY NO WARRANTY. As it allows you to modify hardware settings, this may damage your system if something goes wrong. Use at your own risk!

---

## **PACKAGE NOTES**

Chocolatey will create a [shim](https://docs.chocolatey.org/en-us/features/shim) for `Rw.exe`, as is typical for a portable application package. However, this application was not designed for global execution. Therefore, you may experience issues when launching the GUI or using the command-line interface via the shim. Users requiring this functionality should pass the `--shimgen-usetargetworkingdirectory` switch for the application to run correctly.
