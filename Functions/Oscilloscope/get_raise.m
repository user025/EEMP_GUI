function [raise_percent] = get_raise(data)
    min_v = min(data);
    max_v = max(data);
    Vpp = max_v - min_v;
    time  = length(find(data>min_v+Vpp*0.1 and data<max_v-Vpp*0.1));
    raise_percent = time ./ length(data);
