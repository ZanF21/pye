## GCC 11 Compiler Lands Intel Sapphire Rapids + Alder Lake Support

### INTELLanding in the GNU Compiler Collection 11 (GCC 11) codebase this morning is the Sapphire Rapids and Alder Lake enablement.

- GCC 11 is bringing the compiler support for these 2021 Xeon and desktop CPUs succeeding Ice Lake Xeon and Rocket Lake, respectively. This is exposed via new -march=sapphirerapids and -march=alderlake compiler switches for generating binaries optimized for these CPU families.

- On top of generic x86_64 support, the current GCC 11 support for Sapphire Rapids enables: MOVBE, MMX, SSE, SSE2, SSE3, SSSE3, SSE4.1, SSE4.2, POPCNT, PKU, AVX, AVX2, AES, PCLMUL, FSGSBASE, RDRND, FMA, BMI, BMI2, F16C, RDSEED, ADCX, PREFETCHW, CLFLUSHOPT, XSAVEC, XSAVES, AVX512F, CLWB, AVX512VL, AVX512BW, AVX512DQ, AVX512CD, AVX512VNNI, AVX512BF16, MOVDIRI, MOVDIR64B, AVX512VP2INTERSECT, ENQCMD, CLDEMOTE, PTWRITE, WAITPKG, SERIALIZE and TSXLDTRK instruction set support.

- New with Sapphire Rapids is the SERIALIZE instruction, TSXLDTRK for TSX Suspend Load Address Tracking, WAITPKG for the UMWAIT functionality, PTWRITE for writing to a processor trace packet, CLDEMOTE for cache line demote, and ENQCMD for enqueue stores. The Sapphire Rapids target isn't flipping on Intel AMX with the current patches.

- Targeting Alder Lake meanwhile is flipping on MOVBE, MMX, SSE, SSE2, SSE3, SSSE3, SSE4.1, SSE4.2, POPCNT, AVX, AVX2, AES, PCLMUL, FSGSBASE, RDRND, FMA, CLDEMOTE, PTWRITE, WAITPKG and SERIALIZE instruction set support.

- Alder Lake has some of the new instructions also with Sapphire Rapids like SERIALIZE / WAITPKG / CLDEMOTE but overall much less than other recent CPU families. Notably no AVX-512 either. With Alder Lake being based on a hybrid architecture of small and large cores, it looks like the Alder Lake target is taking the least common denominator of the architecture.

- The GCC 11 compiler with this Sapphire Rapids and Alder Lake support will be out in early 2021.