# imx-boot-image-builder : imx-bib.sh
Script to build i.MX Application Processor bootloader.  Similar to what is provided in Yocto Project, but using a simple bash script.

Supported i.MX targets: 
- 8mmini [8MMINILPD4-EVK](https://www.nxp.com/design/development-boards/i-mx-evaluation-and-development-boards/evaluation-kit-for-the-i-mx-8m-mini-applications-processor:8MMINILPD4-EVK)
- 8mplus [8MPLUSLPD4-EVK](https://www.nxp.com/design/development-boards/i-mx-evaluation-and-development-boards/evaluation-kit-for-the-i-mx-8m-plus-applications-processor:8MPLUSLPD4-EVK)
- 8mnano [8MNANOD4-EVK](https://www.nxp.com/design/development-boards/i-mx-evaluation-and-development-boards/evaluation-kit-for-the-i-mx-8m-nano-applications-processor:8MNANOD4-EVK)
- 8mquad [MCIMX8M-EVK](https://www.nxp.com/design/development-boards/i-mx-evaluation-and-development-boards/evaluation-kit-for-the-i-mx-8m-applications-processor:MCIMX8M-EVK) 
- 8ulp [8ULPLPD4-EVK]

## Example
To create the boot loader for 8ULPLPD4-EVK revison A0.1: `./imx-bib.sh -p 8ulp -w A0`

# Usage
```
Usage: imx-bib.sh [-h] -p <soc> -w <A0|A1> [-v release] [-c]
Create bootimage
   -p soc       mandatory. options: 8ulp 8mm 8mn 8mp 8mq
   -v release   release version, example: honister-5.15.5-1.0.0
   -w A0|A1     which 8ULP version 
   -c clean     make clean then make
   -r remove    remove all
   -d           enable script debug 
   -h           Help message

 Example:  ./imx-bib.sh -p 8ulp -w A0
 ```
