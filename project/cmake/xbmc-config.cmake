message(WARNING "find_package(xbmc) has been deprecated, please use find_package(kodi)")

find_package(kodi REQUIRED)
set(XBMC_INCLUDE_DIR ${KODI_INCLUDE_DIR})
