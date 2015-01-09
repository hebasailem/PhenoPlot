 function [x2,y2] = linspacearc(x,y,n)
 %Divide a curve of data points (x,y) into n equally spaced data points.
 %copied from http://www.mathworks.co.uk/matlabcentral/newsreader/view_thread/238974
 m = length(x);
 t = linspace(0,1,m);
 ppx = spline(t,x);
 ppy = spline(t,y);
 
 dppx = pp_deriv(ppx);
 dppy = pp_deriv(ppy);
 integrand = @(tt) sqrt(ppval(dppx,tt).^2 + ppval(dppy,tt).^2);
 arc_length = quadgk(integrand,0,1);
 s = linspace(0,arc_length,n);
 
 inv_arc_len = @(arc,est) fzero(@(u)(quadgk(integrand,0,u)) - arc,est);
 
 t2 = zeros(1,n);
 t2(1) = inv_arc_len(s(1),0);
 for i = 2:n
 t2(i) = inv_arc_len(s(i),t2(i-1));
 end
 
 x2 = ppval(ppx,t2);
 y2 = ppval(ppy,t2);
 end
 
 function dpp = pp_deriv(pp)
 % pp_deriv: derivative of piecewise polynomial (pp)
 
 dpp = pp;
 n = pp.order;
 dpp.coefs = bsxfun(@times,n-1:-1:1,pp.coefs(:,1:n-1));
 dpp.order = n - 1;
 end