set clock_constraint { \
    name clk \
    module surf_Simplified \
    port ap_clk \
    period 10 \
    uncertainty 1.25 \
}

set all_path {}

set false_path {}

set one_path { \
    name conx_path_0 \
    type single_source \
    source { \
            module surf_Simplified \
            instance surf_Simplified_threshold_s_axi_U/int_threshold \
            bitWidth 32 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_0

