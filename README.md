# Localization
This is the repository where `.po` (Portable object) and `.pot` (Portable Object Template) Files for various existing Linux Applications will be shared and reviewed.

The list of applications borrows heavily from the [arch linux list of applications](https://wiki.archlinux.org/index.php/List_of_applications)

# Contributing
One needs not be a developer to contribute to the swahili localization project. However, a good command of the Swahili language is desired. There are 2 ways of contributing; translation and proofreading/verification...

**Translate**

To translate on the project, identify an application of interest from the above list, it's `.po` file should be easily available in the repository. More applications should be added with time.

Use your favourite `.po` editor to translate the strings in the file. [Poedit](https://poedit.net/) has been found to be efficient

Once you are satisfied with your work, saving the file should trigger an auto-compile by Poedit. After compilation, a binary file with a `.mo` extension should be generated on the same directory as the `.po` file.

If you are using a different .po editor and would wish to compile your translation file, you can either use [an online converter](https://po2mo.net/) or run;
`msgfmt -o lang.mo lang.po`

**Verify**

In order to verify a translations that were done by other contributors, first install the application using your particular distribution's guidelines
After installing the application, ensure that the `swa_KE` locale has been enabled.
Navigate to the `/usr/share/locale/sw_KE/LC_MESSAGES` directory. You may wish to create them if they are non-existant.
Copy your compiled `.mo` files into `/usr/share/locale/sw_KE/LC_MESSAGES`
Open a terminalemulator, and type `LANG=sw_KE` to set the system language to Swahili for the duration of the terminal session.
Calling the application of interest from the terminal should give you the Swahili equivalent

Should you notice discrepancies in the translation, feel free to modify the .po file in question and create a merge request
