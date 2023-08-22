#ifndef _HARDWARE_ABSTRACTION_H_
#define _HARDWARE_ABSTRACTION_H_

/* API exported to Ada/SPARK */

void blink(uint32_t n); // nb : Blink() n'est pas reconnu par le linker (undefined reference to `Blink') si le fichier main.c est en c++ (main.cpp)

void __gnat_last_chance_handler(void);

/* API imported from Ada/SPARK */

extern void mainLoop(void);    // extern "C" si fichier cpp

extern void Test_Cinit(void);  // extern "C" si fichier cpp

#endif /* ! _HARDWARE_ABSTRACTION_H_ */