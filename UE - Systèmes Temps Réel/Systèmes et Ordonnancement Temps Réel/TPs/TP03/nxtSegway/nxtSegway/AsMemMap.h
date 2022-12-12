/**
 * @file AsMemMap.h
 *
 * @section desc File description
 *
 * Memory mapping using Metrowerks CodeWarrior pragmas
 * Memory Mapping of Application test
 * Automatically generated by goil on Mon Dec 12 15:55:37 2022
 * from root OIL file nxtSegway.oil
 *
 * @section copyright Copyright
 *
 * Trampoline OS
 *
 * Trampoline is copyright (c) IRCCyN 2005-2007
 * Trampoline is protected by the French intellectual property law.
 *
 * This software is distributed under the Lesser GNU Public Licence
 *
 * @section infos File informations
 *
 * $Date$
 * $Rev$
 * $Author$
 * $URL$
 */

#define MEMMAP_ERROR

/*=============================================================================
 * OS memory mapping
 *
 * Code section
 */
#ifdef OS_START_SEC_CODE
  #undef OS_START_SEC_CODE
  #ifdef CURRENT_LINKER_CODE_SECTION
    #error "Starting a .osCode while a section is already started"
  #else
    #undef MEMMAP_ERROR
    .section ".osCode", "ax"
    .code 32
    .align 2
    #define CURRENT_LINKER_CODE_SECTION
  #endif
#endif

#ifdef OS_STOP_SEC_CODE
  #undef OS_STOP_SEC_CODE
  #ifdef CURRENT_LINKER_CODE_SECTION
    #undef MEMMAP_ERROR
    #undef CURRENT_LINKER_CODE_SECTION
  #else
    #error "No section .osCode started"
  #endif
#endif

#ifdef OS_START_SEC_VECTBL
  #undef OS_START_SEC_VECTBL
  #ifdef CURRENT_LINKER_CODE_SECTION
    #error "Starting a .osCode while a section is already started"
  #else
    #undef MEMMAP_ERROR
    .section ".vectbl", "ax"
    .code 32
    .align 2
    #define CURRENT_LINKER_CODE_SECTION
  #endif
#endif

#ifdef OS_STOP_SEC_VECTBL
  #undef OS_STOP_SEC_VECTBL
  #ifdef CURRENT_LINKER_CODE_SECTION
    #undef MEMMAP_ERROR
    #undef CURRENT_LINKER_CODE_SECTION
  #else
    #error "No section .osCode started"
  #endif
#endif

#ifdef OS_START_SEC_VAR
  #undef OS_START_SEC_VAR
  #ifdef CURRENT_LINKER_DATA_SECTION
    #error "Starting a .osVar data section while a section is already started"
  #else
    #undef MEMMAP_ERROR
    .section ".osVar", "ax"
    .code 32
    .align 2
    #define CURRENT_LINKER_DATA_SECTION
  #endif
#endif
#ifdef OS_STOP_SEC_VAR
  #undef OS_STOP_SEC_VAR
  #ifdef CURRENT_LINKER_DATA_SECTION
    #undef MEMMAP_ERROR
    #undef CURRENT_LINKER_DATA_SECTION
  #else
    #error "No section started"
  #endif
#endif

/*
 * Const, Calibration, Carto, Configuration data sections
 */
#ifdef OS_START_SEC_CONST
  #undef OS_START_SEC_CONST
  #ifdef CURRENT_LINKER_DATA_SECTION
    #error "Starting a .osConst data section while a section is already started"
  #else
    #undef MEMMAP_ERROR
    .section ".osConst", "ax"
    .code 32
    .align 2
    #define CURRENT_LINKER_DATA_SECTION
  #endif
#endif

#ifdef OS_STOP_SEC_CONST
  #undef OS_STOP_SEC_CONST
  #ifdef CURRENT_LINKER_DATA_SECTION
    #undef MEMMAP_ERROR
    #undef CURRENT_LINKER_DATA_SECTION
  #else
    #error "No section started"
  #endif
#endif

#ifdef OS_START_SEC_STACKS
  #undef OS_START_SEC_STACKS
  #ifdef CURRENT_LINKER_DATA_SECTION
    #error "Starting a .osConst data section while a section is already started"
  #else
    #undef MEMMAP_ERROR
    .section ".stacks", "ax"
    .code 32
    .align 2
    #define CURRENT_LINKER_DATA_SECTION
  #endif
#endif

#ifdef OS_STOP_SEC_STACKS
  #undef OS_STOP_SEC_STACKS
  #ifdef CURRENT_LINKER_DATA_SECTION
    #undef MEMMAP_ERROR
    #undef CURRENT_LINKER_DATA_SECTION
  #else
    #error "No section started"
  #endif
#endif


/* .ltorg */
#ifdef OS_START_LTORG
  #undef OS_START_LTORG
  #ifdef CURRENT_LINKER_LTORG
    #error "Starting a .ltorg while one is already started"
  #else
    #undef MEMMAP_ERROR
    .ltorg
    #define CURRENT_LINKER_LTORG
  #endif
#endif

#ifdef OS_STOP_LTORG
  #undef OS_STOP_LTORG
  #ifdef CURRENT_LINKER_LTORG
    #undef MEMMAP_ERROR
    #undef CURRENT_LINKER_LTORG
  #else
    #error "No .ltorg started"
  #endif
#endif

#ifdef OS_START_SEC_TEXT
  #undef OS_START_SEC_TEXT
  #ifdef CURRENT_LINKER_CODE_SECTION
    #error "Starting a .text while a section is already started"
  #else
    #undef MEMMAP_ERROR
    .text
    .code 32
    .align 0
    #define CURRENT_LINKER_CODE_SECTION
  #endif
#endif

#ifdef OS_STOP_SEC_TEXT
  #undef OS_STOP_SEC_TEXT
  #ifdef CURRENT_LINKER_CODE_SECTION
    #undef MEMMAP_ERROR
    #undef CURRENT_LINKER_CODE_SECTION
  #else
    #error "No section .text started"
  #endif
#endif

#ifdef MEMMAP_ERROR
  #error "MemMap.h, wrong section command"
#endif

