
export WORK_HOME=/store_121/zgd/my_uvm_test/
# export UVM_HOME=/store_121/EDA/INCISIV131S013/tools.lnx86/uvm-1.1/uvm_lib/uvm_sv
export UVM_HOME=/home/zgd/Desktop/zgd/uvm-1.1d
irun -gui -access rwc -64bit -uvmhome $UVM_HOME +sv -f filelist.f -licqueue -timescale 1ns/1ps
