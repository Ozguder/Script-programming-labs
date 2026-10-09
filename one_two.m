function varargout = one_two(varargin)

if nargin ~= 1
    error('The function requires exactly one input.')
end

x = varargin{1};

if nargout == 1

    varargout{1} = sin(x);

elseif nargout == 2

    varargout{1} = sin(x);
    varargout{2} = cos(x);

else

    error('Use one or two output arguments.')

end

end
