mkdir PSP_Quake1_SW_UM
mkdir PSP_Quake1_SW_UM\PSP\GAME\Quake
set PSP_MOUNT=.\PSP_Quake1_SW_UM
make -f MakefileSW-UM clean
make -f MakefileSW-UM install
