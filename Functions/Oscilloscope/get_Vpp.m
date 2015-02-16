function [Vpp] = get_Vpp(data)
    V_max = max(data);
    V_min = min(data);
    Vpp = V_max - V_min;
end
