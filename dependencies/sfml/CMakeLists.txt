message(STATUS "Fetching SFML 2.6.1 from https://github.com/SFML/SFML | TAG: 69ea0cd863aed1d4092b970b676924a7    16ff718b ...")

set(SFML_BUILD_NETWORK FALSE)

FetchContent_MakeAvailable(sfml)
