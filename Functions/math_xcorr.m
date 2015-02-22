function [data]=math_xcorr(in_data_1, in_data_2)
    help_msg='cov of in_data_1 and in_data_2';
    data = xcorr(in_data_1, in_data_2);
    data = abs(data);
