function obj = cascade(varargin)

obj = varargin{1};

W = eye(nb_dim(obj));
A = eye(nb_component(obj));
for i = 2:nargin
    W = projmat(varargin{i})*W;
    A = A*bprojmat(varargin{i});    
end

obj.W = W;
obj.A = A;
obj.ComponentSelection = 1:size(W,1);
obj.DimSelection = 1:size(A,1);
obj.ComponentSelectionH = {};
obj.DimSelectionH = {};


end