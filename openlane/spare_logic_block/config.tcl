# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0

# This is an analog design. It will be designed by hand.
# This is a placeholder to get things going.
set script_dir [file dirname [file normalize [info script]]]

set ::env(DESIGN_NAME) spare_logic_block

set ::env(VERILOG_FILES) $script_dir/../../../../verilog/rtl/spare_logic_block.v

set ::env(CLOCK_PORT) ""
set ::env(CLOCK_TREE_SYNTH) 0
set ::env(RT_MAX_LAYER) Metal3

## Synthesis
set ::env(SYNTH_READ_BLACKBOX_LIB) 1

## Floorplan
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 75 70"

set ::env(TOP_MARGIN_MULT) "2"
set ::env(BOTTOM_MARGIN_MULT) "2"
set ::env(LEFT_MARGIN_MULT) "10"
set ::env(RIGHT_MARGIN_MULT) "10"

## PDN
set ::env(FP_PDN_VSPACING) {6.375}
set ::env(FP_PDN_VPITCH) {15.95}
set ::env(FP_PDN_HSPACING) {5.19}
set ::env(FP_PDN_VPITCH) {15.95}
set ::env(FP_PDN_AUTO_ADJUST) {0}


## Placement
# set ::env(PL_TARGET_DENSITY) 0.45
set ::env(DIODE_INSERTION_STRATEGY) 4


set ::env(PL_RESIZER_DESIGN_OPTIMIZATIONS) 0
set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS) 0

# ## Routing
set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS) 0

##LVS
set ::env(MAGIC_EXT_USE_GDS) 1