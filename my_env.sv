`ifndef MY_ENV__SV
`define MY_ENV__SV

class my_env extends uvm_env;

   my_agent   i_agt;
   my_agent   o_agt;

   function new(string name = "my_env", uvm_component parent);
      super.new(name, parent);
   endfunction

   virtual function void build_phase(uvm_phase phase);
      super.build_phase(phase);
      i_agt = my_agent::type_id::create("i_agt", this);
      o_agt = my_agent::type_id::create("o_agt", this);
      i_agt.is_active = UVM_ACTIVE;
      o_agt.is_active = UVM_PASSIVE;
      uvm_config_db#(uvm_object_wrapper)::set(this,
                                              "i_agt.sqr.main_phase",
                                              "default_sequence",
                                               my_sequence::type_id::get());

   endfunction

   extern virtual function void connect_phase(uvm_phase phase);

   `uvm_component_utils(my_env)
endclass

function void my_env::connect_phase(uvm_phase phase);
   super.connect_phase(phase);
endfunction

`endif
