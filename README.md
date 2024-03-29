## jinx: interactive tuning theory

<img  src="https://d2cqospqxtt8fw.cloudfront.net/personal-website/media/images/jinx.jpg" height="500"/>

### Description

This project consists of a variety of educational and interactive tools for learning about just intonation, xenharmonic music, and tuning theory more broadly. The primary goal of this project is to provide anyone interested in the subject with accesible and explorative tools, such that they can learn through play, and further solidify their musical intuition in tuning theory by connecting it to practice.

**NOTE**: `jinx` was developed as *supplementary* teaching and study material for the 2024 Spring course _Special Topics in Composition: Alternate Tuning Systems_ at the [University of Cincinnati's College-Conservatory of Music](https://ccm.uc.edu/). As such, not all included tools and examples are self-explanatory, and rely on the assumption that users will already have some context and theoretical foundation prior to using `jinx`.

### Requirements

This project was developed and has only been tested in macOS, but should also be functional in Windows computers. To use it, the following software is required:
- [Max](https://cycling74.com/products/max) programming environment. A commercial license is **not** required to use this project.
- The [bach](https://bachproject.net) and [ears](https://www.bachproject.net/ears/) libraries, which can be installed through the [Max Package Manager](https://docs.cycling74.com/max8/vignettes/package_manager).

Once these packages are installed, you will have to manually install the fonts included in the `jinx/fonts` folder: `Microtonal.ttf` and `HEJI2.otf`. To install the font in MacOS, double-click on each font file to open the _Font Book_, and then click on the `install font` button.

**NOTE**: In MacOS, installing `Microtonal.ttf` might open a font validation window, in which case you'd check the font box and click on `Installed Checked`. This should properly install the font.


### Usage
Once all software requirements are installed, open the `jinx.maxproj` file, located in the `jinx` folder. This will open the main menu, where all available interactive tools are listed and can be accessed from.

### Acknowledgements
Many of the examples and tools in `jinx` are inspired by and based on ideas from [*Tuning, timbre, spectrum, scale* [2nd Edition]](https://link.springer.com/book/10.1007/b138848) (2005) by William Sethares. Prospective users are encouraged to read it if interested in further understanding the functionalities of and motivations behind `jinx`.

Moreover, two fonts developed by Marc Sabat & Wolfgang von Schweinitz were needed for the `pitch notation` example: the [Extended Helmholtz-Ellis Just Intonation (HEJI)](https://marsbat.space/pdfs/notation.pdf) and Johnston's `Microtonal` notation fonts.

Lastly, this project would not be possible without the [bach](https://bachproject.net) library. If you are able to, please support their work through [Patreon](https://www.patreon.com/bachproject/).

### License
This project is distributed under the terms of the GNU General Public License version 3 (GPL-v3.0).