function tdata=scale_data(data)
% scale data to the interval 0-1
% Copyright (c) Heba Sailem 2013

mi=min(data);
minmat=repmat(mi,size(data,1),1);
ma=max(data);
rangemat=repmat(ma-mi,size(data,1),1);
%tdata=(data-minmat)./rangemat;
tdata=.1+.9.*(data-minmat)./rangemat;
