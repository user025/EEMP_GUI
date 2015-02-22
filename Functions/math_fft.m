function [data] = math_fft(in_array)
    help_msg = 'fft(x), fft transformation for x';
    data = fft(in_array);
    data = abs(data);
