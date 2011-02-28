mkdir PSP_Quake1_SW_KM
mkdir PSP_Quake1_SW_KM\PSP\GAME\Quake
set PSP_MOUNT=.\PSP_Quake1_SW_KM
make -f MakefileSW-KM clean
make -f MakefileSW-KM install
