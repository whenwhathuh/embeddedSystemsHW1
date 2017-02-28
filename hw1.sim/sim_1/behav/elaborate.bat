@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 0d43aba5013248ebbfa9dc62d9b3cf34 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot sim_counter_lookup_behav xil_defaultlib.sim_counter_lookup -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
