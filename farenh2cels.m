function C = farenh2cels(F)
% FARENH2CELS Converts temperature from Fahrenheit to Celsius.
% C = FARENH2CELS(F) calculates temperature in Celsius
% when temperature F in Fahrenheit is given.
%
% Input:
% F - temperature in Fahrenheit
%
% Output:
% C - temperature in Celsius

C = 5.*(F - 32)./9;

end
