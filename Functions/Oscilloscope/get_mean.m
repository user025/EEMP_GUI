function [avg] = get_mean(data)
    len = length(data);
    tot = sum(data);
    avg = tot ./ len;

