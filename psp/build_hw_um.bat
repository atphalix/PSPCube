mkdir PSP_Quake1_HW_UM
mkdir PSP_Quake1_HW_UM\PSP\GAME\Quake
set PSP_MOUNT=.\PSP_Quake1_HW_UM
make -f MakefileHW-UM clean
make -f MakefileHW-UM install
