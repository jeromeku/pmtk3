function C = cellfunR(fun, C, varargin)
% Recursive version of cellfun, which operates on nested cell arrays
if cellDepth(C) < 2
    C = cellfuncell(fun, C, varargin{:});
else
    C = cellfuncell(@(cl)cellfunR(fun, cl, varargin{:}), C);
end
end