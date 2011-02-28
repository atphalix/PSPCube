mkdir PSP_Quake1_HW_KM
mkdir PSP_Quake1_HW_KM\PSP\GAME\Quake
set PSP_MOUNT=.\PSP_Quake1_HW_KM
make -f MakefileHW-KM clean
make -f MakefileHW-KM install
