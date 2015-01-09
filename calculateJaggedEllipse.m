function [X Y nX nY] = calculateJaggedEllipse(x, y, a, b , spike_factor,spike_height,fraction,fraction_lower,angle)
    % This functions returns data points (X,Y) to draw an ellipse or jagged ellipse.  
    % It also can retrun data points (nX,nY) to draw a part of ellipse
    %  @param x: X coordinate
    %  @param y: Y coordinate
    %  @param a: Ellipse major dimension
    %  @param b: Ellipse minor dimension
    %  @param spike_factor: reflects the irregularity in the ellipse
    %  @param spike_height: the height of the spike
    %  @param fraction: if specified the data points for fration of the
    %  ellipse points will be returned in nX,nY
    %  @param fraction_lower: Boolean to specify whether the part of
    %  ellipse should start from middle right (0) upward or (1) downward.
    %  @param angle of the ellipse
    %  Acknowledgments: This code is adapted from http://stackoverflow.com/questions/2153768/draw-ellipse-and-ellipsoid-in-matlab
    %
    % Copyright (c) Heba Sailem 2014
    
    error(nargchk(4, 9, nargin));
    if nargin<5
        spike_factor=0;
        spike_height=0;
        fraction=0;
        fraction_lower=0;
        angle=0;

    end
    if nargin<6
        spike_height=0;
        fraction=0;
        fraction_lower=0;
        angle=0;
    end
    if nargin<7
        fraction=0;
        fraction_lower=0;   
        angle=0;
    end
    if nargin<8
        fraction_lower=0;   
        angle=0;
    end
    if nargin<9
        angle=0;
    end
    a=a/2;
    b=b/2;
    
    steps = 97;    
    beta = -angle * (pi / 180);
    %The points to generate X
    alpha = linspace(0, 360, steps)' .* (pi / 180);
    
    %Generate a zig zag propotional to ruffliness
    zsteps=floor(spike_factor*steps*fraction);

    
    %Creat smooth ruffles for the number of zsteps
    if fraction<1
        nsteps=floor(fraction*steps);
    else
        nsteps=steps;
    end
    
    
    X = x + (a * cos(alpha)  * cos(beta) - b * sin(alpha)  * sin(beta));
    Y = y + (a * cos(alpha) * sin(beta) + b * sin(alpha) * cos(beta));
    
    
    if (spike_factor>0)
        a2=spike_height*b;
        b2=spike_height*b;
        X2 = (a2 * cos(alpha)  * cos(beta) - b2 * sin(alpha)  * sin(beta));
        Y2 = (a2 * cos(alpha) * sin(beta) + b2 * sin(alpha) * cos(beta));
        idx=1:2:steps;
        X2(idx)=0;
        Y2(idx)=0;
    end
    
    %If fraction to be defined the ellipse need to be equally spaced,note
    %that this code take few seconds
    if (fraction>0)
        [X Y]=linspacearc(X,Y,steps);
        X=X';
        Y=Y';
    end
    if(zsteps>0)
        X(1:zsteps)=X(1:zsteps)+X2(1:zsteps);
        Y(1:zsteps)=Y(1:zsteps)+Y2(1:zsteps);
    end
    
    if(fraction_lower)
        nX=X(end-nsteps+1:end);
        nY=Y(end-nsteps+1:end);
    else
        nX=X(1:nsteps);
        nY=Y(1:nsteps);
    end
    if nargout==1, X = [X Y]; end
end
