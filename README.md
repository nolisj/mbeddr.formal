# FASTEN

## Homepage
- FASTEN Home - https://sites.google.com/site/fastenroot/

## Community
- Questions about using and extending FASTEN: fasten-support@googlegroups.com
- If you encounter problems, please open an issue [here](https://github.com/mbeddr/mbeddr.formal/issues)

## Versions
- Get the [latest release](https://github.com/mbeddr/mbeddr.formal/releases)

## Building (from command line)

1. for building FASTEN we have gradle-based scripts (please configure the needed variables in *gradle.properties*)
  - in *Windows* please note that the paths should use *slash* instead of *back-slash* 
    - e.g. mpsHomeDir=C:/work/MPS_2020_2_3
    - e.g. mbeddr.formal.home=C:/work/mbeddr.formal 
  - in Unix-based systems we have the "unix paths" (nothing changes)
2. for packaging FASTEN distribution, run `gradlew.bat`- this starts the default task `build_fasten_safety_distribution`

## Building (from MPS)
1. download MPS 2020.2.x
2. clone the repository https://github.com/danielratiu/mbeddr.formal.mps-plugins and copy the content of "platform_2020_2_3/" in the "plugins" directory of MPS
3. start MPS
4. the path variable mbeddr.formal.home in 'Settings->Appearance & Behavior->Path Variables' to point to the directory which contains the cloned 'mbeddr.formal' repository.
5. FASTEN sources are organized in several MPS projects. To build FASTEN, each of these projects need to be built. Please open and build the projects in the following order:
  5.1. `code\languages\com.mbeddr.formal.nusmv`
    5.1.1. after this build is successful, you should be able to open the `code\tutorial` project (contains only SMV-based DSLs)
  5.2. `code\languages\com.mbeddr.formal.req`
  5.3. `code\languages\com.mbeddr.formal.spin`
  5.4. `code\languages\com.mbeddr.formal.safety`
    5.4.1. after 5.1, 5.2, 5.3 and 5.4 you should be able to open `code\tutorial-safety` project - it contains the DSLs related to safety