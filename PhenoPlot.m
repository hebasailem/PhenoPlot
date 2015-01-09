function PhenoPlot(CellEllipse,varargin)
%   PhenoPlot Plot Cells from multivariate data.
%   PhenoPlot({X,Y}) draws cells as ellipses with major
%   diameter=X, minor diameter=Y where CellLength and CellWidth is
%   n-by-1 matrix are n-by-1 matrices. {X,Y} is the only mandotry input.

%   PhenoPlot({X,Y,Z}) draws ellipse border using Z
%   Linespec (same as matlab Linespec syntax) where Z is a string
%   used for all cells
%
%   PhenoPlot({X,Y,...,'legend',X_label,Y_label}) label the cell ellipse length and
%   width using X_label and Y_label.
%
%   PhenoPlot({X,Y}, ...,'NucEllipse',{NucLength, NucWidth, linespec,...
%   'legend',NucLength_label,NucWidth_label}) draws cells with nuclei ellipses
%   where major diameter=NucLength, minor diameter=NucWidth and
%   ellipse border using the optional linespec (same as matlab Linespec syntax)
%   where NucLength and NucWidth are n-by-1 matrix, and Linespec is a
%   string. If NucLength_label and NucWidth_label are specified they will
%   be used to annotate this element in the legend figure.
%
%   PhenoPlot({X,Y}, ...,'NumNuc',{A, linespec,'legend',A_label})  Draws A sub circles in the
%   nuclei. If Z is a natural number draw Z full circles. If Z is postive
%   rational number, draw floor(A) circles and a circular sector that its arc
%   length is propotional to the rational part of A. Linespec is optional and
%   specify the style and color of circle border. This option will be ignored
%   if 'NucEllipse' is not defined. A is n-by-1 matrix. if A_label is specified it will
%   be used to annotate this element in the legend figure.
%
%   PhenoPlot({X,Y}, ...,'DivNuc',{B, linespec,'legend',B_label}) divides nuclei into B parts
%   where B is n-by-1 matrix of natural numbers. Linespec is optional and specify the style
%   and color of the dividing line. This option will be ignored if 'NucEllipse'
%   is not defined. If B_label is specified it will be used to annotate this element in the legend figure.
%
%   PhenoPlot({X,Y}, ...,'PeriNucEllipse',{PeriNucLength, PeriNucWidth, linespec,...
%   'legend',PeriNucLength_label,'PeriNucWidth',PeriNucWidth_label})
%   draws a cell with peri-nuclei ellipses  with major diameter=PeriNucLength,
%   minor diameter=PeriNucWidth and ellipse border using the optional linespec
%   (same as matlab LineSpec syntax) where PeriNucLength and PeriNucWidth
%   are n-by-1 matrices and Linespec is a string. if PeriNucLength_label and...
%   PeriNucWidth_label are specified they will be used to annotate these elements
%   in the legend figure.
%
%   PhenoPlot({X,Y}, ...,'RelativeProtArea',{C,COLOR},'legend',C_label) draws cells with protrusions
%   where each protrusion is drawn as half ellipse with same center as the cell
%   ellipse and the major diameter=X+X*C and the minor diameter=Y. C is a n-by-1 matrix.
%   The color of the protrusion is specified by COLOR where COLOR is single character
%   from Matlab short color names. If C_label is specified it will be used to annotate
%	this element in the legend figure.
%
%   PhenoPlot({X,Y}, ..., 'Spikes',{SpikinessFactor, SpikesHeight,linespec,'legend',...
%   SpikinessFactor_label,SpikesHeight_label}) draws cells with jagged
%   border. If  'RelativeProtArea' is used then it draws the jagged border on the
%   specify the fraction of the border to be jagged. protrusion half ellipse. SpikinessFactor
%   is a n-by-1 matrix. scaled between 0-1 and SpikesHeight is a n-by-1 matrix
%   scaled between 0-1 to and specify the  height of the spike. If SpikinessFactor_label or
%	SpikesHeight_label are specified they will be used to annotate these elements in the legend figure.
%   Where SpikesHeight_label is optional.
%
%   PhenoPlot({X,Y}, ..., 'ThickMembraneFraction',{D,linespec,'legend',D_label}) draws cell ellipses with
%   fraction D of thier border thickened using the specified linespec. D is
%   n-by-1 matrix scaled between 0-1. If D_label is specified it will be used to annotate
%	this element in the legend figure.
%
%   PhenoPlot({X,Y}, ..., 'MembraneProcess',{E,linespec,'legend',E_label}) draws cell ellipses with
%   fraction P of thier border drawn using Linespec. E is n-by-1 matrix scaled between 0-1
%   and linespec is a string (same as matlab Linespec syntax). If E_label is specified it
%	will be used to annotate this element in the legend figure.
%
%   PhenoPlot({X,Y}, ..., 'CellIntensity',{cInt,colormap,'legend',cInt_label}) draws cell ellipses with
%   forecolor cInt. If cInt is a single color vector (1-by-3) all cells
%   will have the same color. If cInt is a n-by-1 matrix, then values will
%   be mapped to a color map of choice. The colormap can either be red or blue. If cInt is an array of
%   color vectors (n-by-3 matrix), each cell will be colored by the ith
%   color vector.   If cInt_label is specified it will be used to annotate
%	this element in the legend figure.
%
%   PhenoPlot({X,Y}, ...,'PeriNucIntensity',pnInt,colormap,'legend',pnInt_label) requires 'PeriNucEllipse' to be
%   specified. pnInt will be used as the PeriNucEllipse forecolor. If pnInt is a single
%   color vector (1-by-3) all peri nuclear ellipses will have the same color. If pnInt is a
%   n-by-1 matrix, then values will be mapped to a color map of choice.
%   The colormap can either be red or blue. If pnInt is an array
%   of color vectors (n-by-3 matrix), each peri nuclear ellipses will be colored
%   by the ith color vector. If pnInt_label is specified it will be used to annotate
%	this element in the legend figure.
%
%   PhenoPlot({X,Y}, ..., 'NucIntensity',nInt,colormap,'legend',nInt_label) requires 'NucEllipse' to be
%   specified. nInt will be used as the nuclues forecolor. If nInt is a single
%   color vector (1-by-3) all nuclei will have the same color. If nInt is a
%   n-by-1 matrix, then values will be mapped to a color
%   map of choice. The colormap can either be red or blue. If nInt is an array
%   of color vectors (n-by-3 matrix), each nuclei will be colored by the ith color vector.
%   If nInt_label is specified it will be used to annotate this element in the legend figure.
%
%   PhenoPlot({X,Y}, ..., 'CellTexture',{cT, Pos, linespec,'legend',cT_label}) fills proportion of
%   the cell ellipses propotional to cT (factor between 0-1) with the specified
%   marker and color in linespec (string). Pos is the direction of the filling.
%   Possible values: 'Top','Middle', 'Bottom', 'Left', 'Right'.  If cT_label is specified
%   it will be used to annotate this element in the legend figure.
%
%   PhenoPlot({X,Y}, ..., 'NucTexture',{nT, Pos, linespec,'legend',nT_label}) requires 'NucEllipse' to be
%   specified. It fills proportion of the nuclues ellipses propotional to nT (factor between 0-1)
%   with the specified marker and color in linespec (string). Pos is the
%   direction of filling. Possible values: 'Top','Middle', 'Bottom', 'Left', 'Right'
%   If nT_label is specified it will be used to annotate this element in the legend figure.
%
%   PhenoPlot({X,Y}, ..., 'organelle_ellipse',{orgE, BackgroundColor, ForeColor,'legend',orgE_label})
%   draws small ellipses inside cytosol using BackgroundColor. To represent
%   the ith value of orgE, the ellipse is filled propotional to orgE(i) with ForeColor.
%   orgE is a n-by-1 matrix scaled between 0-1. The height ellipse represent. If orgE_label is specified
%   it will be used to annotate this element in the legend figure.
%
%   PhenoPlot({X,Y}, ..., 'organelle_rectangle',{orgE, FullColor, PartColor})
%   similar to 'organelle_ellipse' but draws rectangle instead.
%
%   PhenoPlot({X,Y}, ..., 'organelle_line',{orgE, FullColor, PartColor})
%   similar to 'organelle_ellipse' but draws line instead.
%
%   PhenoPlot({X,Y}, ..., 'organelle_zigzag',{orgE, FullColor, PartColor})
%   similar to 'organelle_ellipse' but draws zigzag instead.
%
%   PhenoPlot({X,Y}, ..., 'LegendColor',RGBColor) use RGBColor for legend
%   annotations where RGBColor is a single color vector (1-by-3)
%
%   PhenoPlot({X,Y}, ..., 'Grid',G) organizes the cells into a square grid if G=1.
%
%   PhenoPlot({X,Y}, ..., 'PlotCenters',{F,COLOR}) plot the cell ellipse centers if
%   F=1 using matlab color short name 'COLOR'.
%
%   PhenoPlot({X,Y}, ..., 'xcoord',xC,'ycoord',yC) creates a plot with each cell centered
%   at the locations specified by xC and yC vectors. xC and yC values will be
%   ignored if 'Gird' is set to 1. If 'Gird' is set to 0 then 1:n will be
%   used for xC and zeros(n,1) will be usedfor yC.
%
%   PhenoPlot({X,Y}, ..., 'labels',H) H is n-by-1 string. If specified it
%   will be used as cell names when displaying data cursors.
%
%   PhenoPlot ({X,Y}, ..., 'Standardize',1) Standardizes X by shifting and
%   scaling numerical paramters. If the parameters measure the dimension of
%   the cell/subcellular structures (Cell length, Cell width, Nuclei
%   Length...) then they will be scaled based on the maximum and minimum
%   value of cell length onto interval [.1,1]. This ensure that different
%   dimensions of the cell are in the right propotion. Other numberical parameters
%   will be scaled onto interval [0,1]. If 'Standardize' is set to 0 then the
%   code will check if the all numerical prameters are in the interval
%   [0,1]. Default is 0
% 
% Copyright (c) Heba Sailem 2014
%

p = inputParser;
addOptional(p,'NucEllipse',{},@iscell);%Length width linespec
addOptional(p,'NumNuc',{},@iscell);%num linespec
addOptional(p,'DivNuc',{},@iscell);%num linespec
addOptional(p,'PeriNucEllipse',{},@iscell);%Length, width, linespec

addOptional(p,'RelativeProtArea',{},@iscell);%{Value,color}
addOptional(p,'Spikes',{},@iscell);%{Spikes Factor, Spikes Length,linespec};
addOptional(p,'ThickMembraneFraction',{},@iscell);%{Value,linespec}
addOptional(p,'MembraneProcess',{},@iscell);%{Value,linespec}

%Intensity
addOptional(p,'CellIntensity',{},@iscell);
addOptional(p,'NucIntensity',{},@iscell);
addOptional(p,'PeriNucIntensity',{},@iscell);


%Texture
addOptional(p,'CellTexture',{},@iscell);%{Value,position, linespec} where position is 'top','middle','bottom'
addOptional(p,'NucTexture',{},@iscell);%{Value,position,linespec} where position is 'top','middle','bottom'

%oragnells
addOptional(p,'organelle_ellipse',{},@iscell);%{Value, BackgroundColor, ForeColor}
addOptional(p,'organelle_line',{},@iscell);%{Value, BackgroundColor, ForeColor}
addOptional(p,'organelle_zigzag',{},@iscell);%{Value, BackgroundColor, ForeColor}
addOptional(p,'organelle_rectangle',{},@iscell);%{Value, BackgroundColor, ForeColor}

%others
addOptional(p,'LegendColor',[],@isnumeric);
addOptional(p,'PlotCenters',0,@isnumeric);
addOptional(p,'Grid',0,@isnumeric);%%Boolean. if 1 ignore xcoord and ycoord
addOptional(p,'labels',{});%Array of strings
addOptional(p,'Standardize',[]);%Boolean


addOptional(p,'xcoord',[],@isnumeric);
addOptional(p,'ycoord',[],@isnumeric);


parse(p,varargin{:});

%Add the path of ellipse_grid
crfolder=cd;
addpath(strcat(crfolder,'/ellipse_grid'))
addpath(strcat(crfolder,'/export_fig'))
addpath(strcat(crfolder,'/maximize'))
addpath(strcat(crfolder,'/cbrewer'))

%########   Initilize prameters and validate parameters
load('colorbrewer.mat');
Legend_pram=[.8,.5,.6,.38,.35,.3,.3,3,.8,.4];
%Defaults
cLinespec='-k';
nLinespec='-k';
div_nuc_ln='-k';
num_nuc_ln='-k';
pnLinespec='-k';
protColor='w';

%legends defaults
cL_leg='Cell length';
cW_leg='Cell width';
nL_leg='Nucleus length';
nW_leg='Nucleus width';
pnL_leg='Perinuclear length';
pnW_leg='Perinuclear width';
div_nuc_leg='Nuclear divisions';
num_nuc_leg='Number of nucleus';
prot_leg='Protrusion area';
spikiness_leg='Spikiness';
spike_hgt_leg='Spike height';
nf_leg='Thick membrane fraction';
mp_leg='Membrane process';
cellC_leg='Cell intensity';
nucC_leg='Nucleus intensity';

pnucC_leg='Perinuclear intensity';
nText_leg='Nucleus texture';
cText_leg='Cell texture';
org_rect_leg='Rectangle organelle';
org_ellipse_leg='Ellipse organelle';
org_line_leg='Line organelle';
org_zigzag_leg='Zigzag organelle';

%Cell width and length
if(length(CellEllipse)<2)
    error('Two vectors for cell length and width are required')
elseif ~isnumeric(CellEllipse{1,1})
    error('Cell length failed validation isnumeric ')
elseif ~isnumeric(CellEllipse{1,2})
    error('Cell width failed validation isnumeric ')
end

cL=CellEllipse{1,1};
cL=addLegendCellPram(cL,Legend_pram(1));

%make cW column vector if it's not
cW=CellEllipse{1,2};
cW=addLegendCellPram(cW,Legend_pram(2));

if(length(CellEllipse)>2)
    if(~strcmpi(CellEllipse{1,3},'legend'))
        cLinespec=CellEllipse{1,3};
        if ~ischar(cLinespec)
            error('CellEllipse line specification failed validation ischar');
        end
    elseif(strcmpi(CellEllipse{1,3},'legend'))
        cL_leg=CellEllipse{1,4};
        cW_leg=CellEllipse{1,5};
    end
    if (length(CellEllipse)>3)
        if(strcmpi(CellEllipse{1,4},'legend'))
            cL_leg=CellEllipse{1,5};
            cW_leg=CellEllipse{1,6};
        end
    end
end

numCells=length(cL);

%Nuclei ellipse, DivNuc, and NumNuc
if ~isempty(p.Results.NucEllipse)
    if(length(p.Results.NucEllipse)<2)
        error('Two vectors for nucleus length and width are required')
    elseif ~isnumeric(p.Results.NucEllipse{1,1})
        error('Nucleus length failed validation isnumeric ')
    elseif ~isnumeric(p.Results.NucEllipse{1,2})
        error('Nucleus width failed validation isnumeric ')
    end
    nL=p.Results.NucEllipse{1,1};
    nL=addLegendCellPram(nL,Legend_pram(5));
    
    nW=p.Results.NucEllipse{1,2};
    nW=addLegendCellPram(nW,Legend_pram(6));
    if length(p.Results.NucEllipse)>2
        if(~strcmpi(p.Results.NucEllipse{1,3},'legend'))
            nLinespec=p.Results.NucEllipse{1,3};
            if ~ischar(nLinespec)
                error('NucEllipse line specification failed validation ischar')
            end
        elseif(strcmpi(p.Results.NucEllipse{1,3},'legend'))
            nL_leg=p.Results.NucEllipse{1,4};
            nW_leg=p.Results.NucEllipse{1,5};
        end
        if (length(p.Results.NucEllipse)>3)
            if(strcmpi(p.Results.NucEllipse{1,4},'legend'))
                nL_leg=p.Results.NucEllipse{1,5};
                nW_leg=p.Results.NucEllipse{1,6};
            end
        end
    end
    if ~isempty(p.Results.DivNuc)
        div_nuc=p.Results.DivNuc{1,1};
        div_nuc=addLegendCellPram(div_nuc,Legend_pram(8));
        if length(p.Results.DivNuc)>1
            if (~strcmpi(p.Results.DivNuc{1,2},'legend'))
                div_nuc_ln=p.Results.DivNuc{1,2};
            end
        end
        leg=find(strcmpi(p.Results.DivNuc,'legend'));
        if(leg)
            div_nuc_leg=p.Results.DivNuc{1,leg+1};
        end
    end
    if ~isempty(p.Results.NumNuc)
        num_nuc=p.Results.NumNuc{1,1};
        num_nuc=addLegendCellPram(num_nuc,Legend_pram(8));
        if length(p.Results.NumNuc)>1
            num_nuc_ln=p.Results.NumNuc{1,2};
        end
        leg=find(strcmpi(p.Results.NumNuc,'legend'));
        if(leg)
            num_nuc_leg=p.Results.NumNuc{1,leg+1};
        end
    end
end

%Peri-nuclei ellipse width and length
if ~isempty(p.Results.PeriNucEllipse)
    if(length(p.Results.PeriNucEllipse)<2)
        error('Two vectors are required for perinuclear length and width ')
    elseif ~isnumeric(p.Results.PeriNucEllipse{1,1})
        error('Perinuclear length failed validation isnumeric ')
    elseif ~isnumeric(p.Results.PeriNucEllipse{1,2})
        error('Perinuclear width failed validation isnumeric ')
    end
    pnL=p.Results.PeriNucEllipse{1,1};
    pnL=addLegendCellPram(pnL,Legend_pram(3));
    pnW=p.Results.PeriNucEllipse{1,2};
    pnW=addLegendCellPram(pnW,Legend_pram(4));
    if length(p.Results.PeriNucEllipse)>2
        if(~strcmpi(p.Results.PeriNucEllipse{1,3},'legend'))
            pnLinespec=p.Results.PeriNucEllipse{1,3};
            if ~ischar(pnLinespec)
                error('PeriNucEllipse line specification failed validation ischar')
            end
        end
    end
    leg=find(strcmpi(p.Results.PeriNucEllipse,'legend'));
    if(leg)
        pnL_leg=p.Results.PeriNucEllipse{1,leg+1};
        pnW_leg=p.Results.PeriNucEllipse{1,leg+2};
    end
end



%Protrusion area
if ~isempty(p.Results.RelativeProtArea)
    prot=p.Results.RelativeProtArea{1,1};
    prot=addLegendCellPram(prot,Legend_pram(7));
    if ~isnumeric(prot)
        error('RelativeProtArea failed validation isnumeric')
    end
    if length(p.Results.RelativeProtArea)>1
        if(~strcmpi(p.Results.RelativeProtArea{1,2},'legend'))
            protColor=p.Results.RelativeProtArea{1,2};
            if ~ischar(protColor)
                error('Protrusion color failed validation ischar')
            end
        end
    end
    leg=find(strcmpi(p.Results.RelativeProtArea,'legend'));
    if(leg)
        prot_leg=p.Results.RelativeProtArea{1,leg+1};
    end
end

%Spikes
spk=0;
if ~isempty(p.Results.Spikes)
    %defaults
    spike_hgt=ones(numCells,1).*.2;
    spkLinespec=cLinespec;
    spikiness=p.Results.Spikes{1,1};
    spikiness=addLegendCellPram(spikiness,Legend_pram(7));
    if ~isnumeric(spikiness)
        error('spikiness failed validation isnumeric')
    end
    if length(p.Results.Spikes)>2
        if(~strcmpi(p.Results.Spikes{1,2},'legend'))
            spike_hgt=p.Results.Spikes{1,2};
            spike_hgt=addLegendCellPram(spike_hgt,Legend_pram(7));
            if (~isempty(spike_hgt))
                spk=1;
            end
            if ~isnumeric(spike_hgt)
                error('Spike height failed validation isnumeric')
            end
            
            if(~strcmpi(p.Results.Spikes{1,3},'legend'))
                spkLinespec=p.Results.Spikes{1,3};
                if ~ischar(spkLinespec)
                    error('Spikes line specification failed validation ischar')
                end
            end
        end
        
    elseif length(p.Results.Spikes)>1
        if ~strcmpi(p.Results.Spikes{1,2},'legend')
            spike_hgt=p.Results.Spikes{1,2};
            spike_hgt=addLegendCellPram(spike_hgt,Legend_pram(7));
            spkLinespec=cLinespec;
            if (~isempty(spike_hgt))
                spk=1;
            end
            if ~isnumeric(spike_hgt)
                error('Spike height failed validation isnumeric')
            end
        end
    end
    
    
    leg=find(strcmpi(p.Results.Spikes,'legend'));
    if(leg)
        spikiness_leg=p.Results.Spikes{1,leg+1};
        if(length(p.Results.Spikes)==leg+2)
            spike_hgt_leg=p.Results.Spikes{1,leg+2};
        end
    end
else
    spikiness=zeros(numCells,1);
    spike_hgt=spikiness;
end

%Thick Membrane
if ~isempty(p.Results.ThickMembraneFraction)
    %default
    nfColor=cLinespec(end);
    nf=p.Results.ThickMembraneFraction{1,1};
    nf=addLegendCellPram(nf,Legend_pram(7));
    if ~isnumeric(nf)
        error('ThickMembraneFraction failed validation isnumeric')
    end
    if length(p.Results.ThickMembraneFraction)>1
        if(~strcmpi(p.Results.ThickMembraneFraction{1,2},'legend'))
            nfColor=p.Results.ThickMembraneFraction{1,2};
            if ~ischar(nfColor)
                error('ThickMembraneFraction line specification failed validation ischar')
            end
        end
    end
    leg=find(strcmpi(p.Results.ThickMembraneFraction,'legend'));
    if(leg)
        nf_leg=p.Results.ThickMembraneFraction{1,leg+1};
    end
else
    nf=zeros(numCells,1);
    nfColor=cLinespec(2);
end

%Membrane Process
mp=zeros(numCells,1);
if ~isempty(p.Results.MembraneProcess)
    mp_Linespec='or';
    mp=p.Results.MembraneProcess{1,1};
    mp=addLegendCellPram(mp,Legend_pram(10));
    if ~isnumeric(mp)
        error('MembraneProcess failed validation isnumeric')
    end
    if(length(p.Results.MembraneProcess)>1)
        if(~strcmpi(p.Results.MembraneProcess{1,2},'legend'))
            mp_Linespec=p.Results.MembraneProcess{1,2};
            if ~ischar(mp_Linespec)
                error('MembraneProcess line specification failed validation ischar')
            end
        end
    end
    leg=find(strcmpi(p.Results.MembraneProcess,'legend'));
    if(leg)
        mp_leg=p.Results.MembraneProcess{1,leg+1};
    end
end


%Intensities can be either single color vector, array of color vectors  or n-by-1 data vector
if ~isempty(p.Results.CellIntensity)
    if size(p.Results.CellIntensity{1,1},1)>1 & size(p.Results.CellIntensity{1,1},2)<2
        cInt=scale_data(p.Results.CellIntensity{1,1});
        levels=64;
        
        if(length(p.Results.CellIntensity)>1) & ~strcmpi(p.Results.CellIntensity{1,2},'legend')%colormap value
            
            if(strcmpi(p.Results.CellIntensity{1,2},'blues'))
                ccmap = (interpolate_cbrewer(colorbrewer.seq.Blues{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.CellIntensity{1,2},'reds'))
                ccmap = (interpolate_cbrewer(colorbrewer.seq.Reds{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.CellIntensity{1,2},'purples'))
                ccmap = (interpolate_cbrewer(colorbrewer.seq.Purples{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.CellIntensity{1,2},'greens'))
                ccmap = (interpolate_cbrewer(colorbrewer.seq.Greens{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.CellIntensity{1,2},'greys'))
                ccmap = (interpolate_cbrewer(colorbrewer.seq.Greys{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.CellIntensity{1,2},'yellow to red'))
                ccmap = (interpolate_cbrewer(colorbrewer.seq.YlOrRd{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.CellIntensity{1,2},'yellow to blue'))
                ccmap = (interpolate_cbrewer(colorbrewer.seq.YlGnBu{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.CellIntensity{1,2},'yellow to green'))
                ccmap = (interpolate_cbrewer(colorbrewer.seq.YlGn{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.CellIntensity{1,2},'green to blue'))
                ccmap = (interpolate_cbrewer(colorbrewer.seq.GnBu{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.CellIntensity{1,2},'blue to red'))
                ccmap = (interpolate_cbrewer(colorbrewer.div.RdBu{1,9}, 'linear',levels))./256;
                ccmap=ccmap(end:-1:1,:)
            else
                ccmap = (interpolate_cbrewer(colorbrewer.seq.YlOrRd{1,9}, 'linear',levels))./256;
            end
        else
            ccmap = (interpolate_cbrewer(colorbrewer.seq.Reds{1,9}, 'linear',levels))./256;
        end
        
        cdata = round((cInt-min(cInt))/(max(cInt)-min(cInt))*(levels-1)+1);
        cellC=ccmap(cdata,:);
        colormap(ccmap)
        cellC=addLegendCellPram(cellC,ccmap(floor(mean(cdata)),:));
        leg=find(strcmpi(p.Results.CellIntensity,'legend'));
        if(leg)
            cellC_leg=p.Results.CellIntensity{1,leg+1};
        end
    elseif  size(p.Results.CellIntensity{1,1},2)==3
        cellC=p.Results.CellIntensity{1,1};
        if(size(p.Results.CellIntensity{1,1},1)>1)
            cellC=[cellC;cellC(1,:)];
        end
        leg=find(strcmpi(p.Results.CellIntensity,'legend'));
        if(leg)
            cellC_leg=p.Results.CellIntensity{1,leg+1};
        end
    else
        error('Cell Intensity should be either a array of color vectors, data vector, or single color vector');
    end
    
end

if ~isempty(p.Results.PeriNucIntensity)
    if size(p.Results.PeriNucIntensity{1,1},1)>1 & size(p.Results.PeriNucIntensity{1,1},2)<2
        pnInt=p.Results.PeriNucIntensity{1,1};
        levels=64;
        
        if(length(p.Results.PeriNucIntensity)>1  & ~strcmpi(p.Results.PeriNucIntensity{1,2},'legend'))%colormap value
            if(strcmpi(p.Results.PeriNucIntensity{1,2},'blues'))
                pncmap = (interpolate_cbrewer(colorbrewer.seq.Blues{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.PeriNucIntensity{1,2},'reds'))
                pncmap = (interpolate_cbrewer(colorbrewer.seq.Reds{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.PeriNucIntensity{1,2},'purples'))
                pncmap = (interpolate_cbrewer(colorbrewer.seq.Purples{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.PeriNucIntensity{1,2},'greens'))
                pncmap = (interpolate_cbrewer(colorbrewer.seq.Greens{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.PeriNucIntensity{1,2},'greys'))
                pncmap = (interpolate_cbrewer(colorbrewer.seq.Greys{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.PeriNucIntensity{1,2},'yellow to red'))
                pncmap = (interpolate_cbrewer(colorbrewer.seq.YlOrRd{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.PeriNucIntensity{1,2},'yellow to blue'))
                pncmap = (interpolate_cbrewer(colorbrewer.seq.YlGnBu{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.PeriNucIntensity{1,2},'yellow to green'))
                pncmap = (interpolate_cbrewer(colorbrewer.seq.YlGn{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.PeriNucIntensity{1,2},'green to blue'))
                pncmap = (interpolate_cbrewer(colorbrewer.seq.GnBu{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.PeriNucIntensity{1,2},'blue to red'))
                pncmap = (interpolate_cbrewer(colorbrewer.div.RdBu{1,9}, 'linear',levels))./256;
                pncmap=pncmap(end:-1:1,:);
            else
                pncmap = (interpolate_cbrewer(colorbrewer.seq.YlOrRd{1,9}, 'linear',levels))./256;
            end
        else
            pncmap = (interpolate_cbrewer(colorbrewer.seq.Reds{1,9}, 'linear',levels))./256;
        end
        
        cdata = round((pnInt-min(pnInt))/(max(pnInt)-min(pnInt))*(levels-1)+1);
        pnucC=pncmap(cdata,:);
        pnucC=addLegendCellPram(pnucC,pncmap(floor(mean(cdata)),:));
        leg=find(strcmpi(p.Results.PeriNucIntensity,'legend'));
        if(leg)
            pnucC_leg=p.Results.PeriNucIntensity{1,leg+1};
        end
    elseif  size(p.Results.PeriNucIntensity{1,1},2)==3
        pnucC=p.Results.PeriNucIntensity{1,1};
        if(size(p.Results.CellIntensity{1,1},1)>1)
            pnucC=[pnucC;pnucC(1,:)];
        end
        leg=find(strcmpi(p.Results.PeriNucIntensity,'legend'));
        if(leg)
            pnucC_leg=p.Results.PeriNucIntensity{1,leg+1};
        end
    else
        error('Peri-Nuclei Intensity should be either an array of color vectors, data vector, or single color vector');
    end
    
end


if ~isempty(p.Results.NucIntensity)
    if size(p.Results.NucIntensity{1,1},1)>1 & size(p.Results.NucIntensity{1,1},2)<2
        nInt=p.Results.NucIntensity{1,1};
        levels=64;
        
        if(length(p.Results.NucIntensity)>1 & ~strcmpi(p.Results.NucIntensity{1,2},'legend'))%colormap value
            if(strcmpi(p.Results.NucIntensity{1,2},'blues'))
                ncmap = (interpolate_cbrewer(colorbrewer.seq.Blues{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.NucIntensity{1,2},'reds'))
                ncmap = (interpolate_cbrewer(colorbrewer.seq.Reds{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.NucIntensity{1,2},'purples'))
                ncmap = (interpolate_cbrewer(colorbrewer.seq.Purples{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.NucIntensity{1,2},'greens'))
                ncmap = (interpolate_cbrewer(colorbrewer.seq.Greens{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.NucIntensity{1,2},'greys'))
                ncmap = (interpolate_cbrewer(colorbrewer.seq.Greys{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.NucIntensity{1,2},'yellow to red'))
                ncmap = (interpolate_cbrewer(colorbrewer.seq.YlOrRd{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.NucIntensity{1,2},'yellow to blue'))
                ncmap = (interpolate_cbrewer(colorbrewer.seq.YlGnBu{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.NucIntensity{1,2},'yellow to green'))
                ncmap = (interpolate_cbrewer(colorbrewer.seq.YlGn{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.NucIntensity{1,2},'green to blue'))
                ncmap = (interpolate_cbrewer(colorbrewer.seq.GnBu{1,9}, 'linear',levels))./256;
            elseif(strcmpi(p.Results.NucIntensity{1,2},'blue to red'))
                ncmap = (interpolate_cbrewer(colorbrewer.div.RdBu{1,9}, 'linear',levels))./256;
                ncmap=ncmap(end:-1:1,:);
            else
                ncmap = (interpolate_cbrewer(colorbrewer.seq.YlOrRd{1,9}, 'linear',levels))./256;
            end
        else
            ncmap = (interpolate_cbrewer(colorbrewer.seq.Reds{1,9}, 'linear',levels))./256;
        end
        cdata = round((nInt-min(nInt))/(max(nInt)-min(nInt))*(levels-1)+1);
        
        nucC=ncmap(cdata,:);
        colormap(ncmap)
        nucC=addLegendCellPram(nucC,ncmap(floor(mean(cdata)),:));
        
        leg=find(strcmpi(p.Results.NucIntensity,'legend'));
        if(leg)
            nucC_leg=p.Results.NucIntensity{1,leg+1};
        end
        
    elseif  size(p.Results.NucIntensity{1,1},2)==3
        nucC=p.Results.NucIntensity{1,1};
        if(size(p.Results.NucIntensity{1,1},1)>1)
            nucC=[nucC;nucC(1,:)];
        end
        
        leg=find(strcmpi(p.Results.NucIntensity,'legend'));
        if(leg)
            nucC_leg=p.Results.NucIntensity{1,leg+1};
        end
    else
        error('Nuclei Intensity should be either an array of color vectors, data vector, or single color vector');
    end
end


%Textures
if ~isempty(p.Results.CellTexture)
    cTextLinespec='xc';
    cTextPos='left';
    cText=p.Results.CellTexture{1,1};
    cText=addLegendCellPram(cText,Legend_pram(9));
    if ~isnumeric(cText)
        error('CellTexture failed validation isnumeric')
    end
    if length(p.Results.CellTexture)>2 & ~strcmpi(p.Results.CellTexture{1,2},'legend')
        cTextPos=p.Results.CellTexture{1,2};
        if ~ischar(cTextPos)
            error('CellTexture position failed validation ischar')
        end
        if(~strcmpi(p.Results.CellTexture{1,3},'legend'))
            cTextLinespec=p.Results.CellTexture{1,3};
            if ~ischar(cTextLinespec)
                error('CellTexture line specification failed validation ischar')
            end
        end
    elseif length(p.Results.CellTexture)>1 & ~strcmpi(p.Results.CellTexture{1,2},'legend')
        cTextPos=p.Results.CellTexture{1,2};
        if ~ischar(cTextPos)
            error('CellTexture position failed validation ischar')
        end
    end
    leg=find(strcmpi(p.Results.CellTexture,'legend'));
    if(leg)
        cText_leg=p.Results.CellTexture{1,leg+1};
    end
end

if ~isempty(p.Results.NucTexture)
    nTextPos='left';
    nTextLinespec='.k';
    nText=p.Results.NucTexture{1,1};
    nText=addLegendCellPram(nText,Legend_pram(9));
    if ~isnumeric(nText)
        error('NucTexture failed validation isnumeric')
    end
    if length(p.Results.NucTexture)>2 && ~strcmpi(p.Results.NucTexture{1,2},'legend')
        nTextPos=p.Results.NucTexture{1,2};
        if ~ischar(nTextPos)
            error('NucTexture position failed validation ischar')
        end
        if  ~strcmpi(p.Results.NucTexture{1,3},'legend')
            nTextLinespec=p.Results.NucTexture{1,3};
            if ~ischar(nTextLinespec)
                error('NucTexture line specification failed validation ischar')
            end
        end
    elseif length(p.Results.NucTexture)>1 && ~strcmpi(p.Results.NucTexture{1,2},'legend')
        nTextPos=p.Results.NucTexture{1,2};
        if ~ischar(nTextPos)
            error('NucTexture position failed validation ischar')
        end
    end
    leg=find(strcmpi(p.Results.NucTexture,'legend'));
    if(leg)
        nText_leg=p.Results.NucTexture{1,leg+1};
    end
end


%   Organells
if ~isempty(p.Results.organelle_rectangle)
    org_rect_max_color='w';
    org_rect_part_color='m';
    org_rect_d=p.Results.organelle_rectangle{1,1};
    org_rect_d=addLegendCellPram(org_rect_d,Legend_pram(7));
    
    if ~isnumeric(org_rect_d)
        error('Organelle_rectangle value failed validation isnumeric')
    end
    if(length(p.Results.organelle_rectangle)>2 && ~strcmpi(p.Results.organelle_rectangle{1,2},'legend'))
        org_rect_max_color=p.Results.organelle_rectangle{1,2};
        if ~ischar(org_rect_max_color)
            error('Organelle_rectangle background color failed validation ischar')
        end
        if ~strcmpi(p.Results.organelle_rectangle{1,3},'legend')
            org_rect_part_color=p.Results.organelle_rectangle{1,3};
            if ~ischar(org_rect_part_color)
                error('Organelle_rectangle foreground color failed validation ischar')
            end
        end
    elseif(length(p.Results.organelle_rectangle)>1 && ~strcmpi(p.Results.organelle_rectangle{1,2},'legend'))
        org_rect_max_color=p.Results.organelle_rectangle{1,2};
        org_rect_part_color='m';
        if ~ischar(org_rect_max_color)
            error('Organelle_rectangle background color failed validation ischar')
        end
    end
    leg=find(strcmpi(p.Results.organelle_rectangle,'legend'));
    if(leg)
        org_rect_leg=p.Results.organelle_rectangle{1,leg+1};
    end
end

if ~isempty(p.Results.organelle_ellipse)
    org_ellipse_max_color='w';
    org_ellipse_part_color='m';
    org_ellipse_d=p.Results.organelle_ellipse{1,1};
    org_ellipse_d=addLegendCellPram(org_ellipse_d,Legend_pram(7));
    
    if ~isnumeric(org_ellipse_d)
        error('Organelle_ellipse value failed validation isnumeric')
    end
    if(length(p.Results.organelle_ellipse)>2 && ~strcmpi(p.Results.organelle_ellipse{1,2},'legend'))
        org_ellipse_max_color=p.Results.organelle_ellipse{1,2};
        if ~ischar(org_ellipse_max_color)
            error('Organelle_ellipse background color failed validation ischar')
        end
        if ~strcmpi(p.Results.organelle_ellipse{1,3},'legend')
            org_ellipse_part_color=p.Results.organelle_ellipse{1,3};
            if ~ischar(org_ellipse_part_color)
                error('Organelle_ellipse foreground color failed validation ischar')
            end
        end
    elseif(length(p.Results.organelle_ellipse)>1 && ~strcmpi(p.Results.organelle_ellipse{1,2},'legend'))
        org_ellipse_max_color=p.Results.organelle_ellipse{1,2};
        if ~ischar(org_ellipse_max_color)
            error('Organelle_ellipse background color failed validation ischar')
        end
    end
    leg=find(strcmpi(p.Results.organelle_ellipse,'legend'));
    if(leg)
        org_ellipse_leg=p.Results.organelle_ellipse{1,leg+1};
    end
end

if ~isempty(p.Results.organelle_line)
    org_line_max_color='w';
    org_line_part_color='m';
    org_line_d=p.Results.organelle_line{1,1};
    org_line_d=addLegendCellPram(org_line_d,Legend_pram(7));
    
    if ~isnumeric(org_line_d)
        error('Organelle_line value failed validation isnumeric')
    end
    if(length(p.Results.organelle_line)>2 && ~strcmpi(p.Results.organelle_line{1,2},'legend'))
        org_line_max_color=p.Results.organelle_line{1,2};
        if ~ischar(org_line_max_color)
            error('Organelle_line background color failed validation ischar')
        end
        if ~strcmpi(p.Results.organelle_line{1,3},'legend')
            org_line_part_color=p.Results.organelle_line{1,3};
            if ~ischar(org_line_part_color)
                error('Organelle_line foreground color failed validation ischar')
            end
        end
    elseif(length(p.Results.organelle_line)>1 && ~strcmpi(p.Results.organelle_line{1,2},'legend'))
        org_line_max_color=p.Results.organelle_line{1,2};
        if ~ischar(org_line_max_color)
            error('Organelle_line background color failed validation ischar')
        end
    end
    leg=find(strcmpi(p.Results.organelle_line,'legend'));
    if(leg)
        org_line_leg=p.Results.organelle_line{1,leg+1};
    end
end

if ~isempty(p.Results.organelle_zigzag)
    org_zig_max_color='w';
    org_zig_part_color='m';
    org_zig_d=p.Results.organelle_zigzag{1,1};
    org_zig_d=addLegendCellPram(org_zig_d,Legend_pram(7));
    if ~isnumeric(org_zig_d)
        error('Organelle_zigzag value failed validation isnumeric')
    end
    if(length(p.Results.organelle_zigzag)>2 & ~strcmpi(p.Results.organelle_zigzag{1,2},'legend'))
        org_zig_max_color=p.Results.organelle_zigzag{1,2};
        if ~ischar(org_zig_max_color)
            error('Organelle_zigzag background color failed validation ischar')
        end
        if (~strcmpi(p.Results.organelle_zigzag{1,2},'legend'))
            org_zig_part_color=p.Results.organelle_zigzag{1,3};
            if ~ischar(org_zig_part_color)
                error('Organelle_zigzag foreground color failed validation ischar')
            end
        end
    elseif(length(p.Results.organelle_zigzag)>1 & ~strcmpi(p.Results.organelle_zigzag{1,2},'legend'))
        org_zig_max_color=p.Results.organelle_zigzag{1,2};
        org_zig_part_color='m';
        if ~ischar(org_line_max_color)
            error('Organelle_zigzag background color failed validation ischar')
        end
    end
    leg=find(strcmpi(p.Results.organelle_line,'legend'));
    if(leg)
        organelle_zigzag_leg=p.Results.organelle_zigzag{1,leg+1};
    end
end

if  ~isempty(p.Results.LegendColor)
    LegendColor=p.Results.LegendColor;
else
    LegendColor=[.45,.45,.45];
end

%Standardize
if ~isempty(p.Results.Standardize)
    if(p.Results.Standardize==1)
        try
            %scale dimension parameters together between .1 and 1
            try
                if exist('cL')
                    if size(cL,2)>size(cL,1)
                        cL=cL';
                    end
                end
                if exist('cW')
                    if size(cW,2)>size(cW,1)
                        cW=cW';
                    end
                end
                
                if exist('nL')
                    if size(nL,2)>size(nL,1)
                        nL=nL';
                    end
                end
                if exist('nW')
                    if size(cW,2)>size(nW,1)
                        nW=nW';
                    end
                end
                
                if exist('pnL')
                    if size(pnL,2)>size(pnL,1)
                        pnL=pnL';
                    end
                end
                if exist('pnW')
                    if size(pnW,2)>size(pnW,1)
                        pnW=pnW';
                    end
                end
                dim_d=[cL,cW,nL,nW,pnL,pnW];
            catch
                try
                    dim_d=[cL,cW,nL,nW];
                catch
                    dim_d=[cL,cW];
                end
            end
            dim_d_no_leg=dim_d(1:numCells-1,:);
            mn=min(min(dim_d_no_leg));
            mx=max(max(dim_d_no_leg));
            rg=mx-mn;
            dim_d_no_leg=.1+.9.*(dim_d_no_leg-mn)./rg;
            dim_d=[dim_d_no_leg;dim_d(end,:)];
            cL=dim_d(:,1);
            cW=dim_d(:,2);
            try
                nL=dim_d(:,3);
                nW=dim_d(:,4);
            end
            try
                pnL=dim_d(:,5);
                pnW=dim_d(:,6);
            end
            try
                if range(prot(1:numCells-1))
                    prot=[scale_data(prot(1:numCells-1));prot(numCells)];
                end
            end
            try
                if range(spikiness(1:numCells-1))
                    spikiness=[scale_data(spikiness(1:numCells-1));spikiness(numCells)];
                end
                if range(spike_hgt(1:numCells-1))
                    spike_hgt=[scale_data(spike_hgt(1:numCells-1));spike_hgt(numCells)];
                end
            end
            try
                if(range(nf(1:numCells-1)))
                    nf=[scale_data(nf(1:numCells-1)),nf(numCells)];
                end
            end
            try
                if(range(mp(1:numCells-1)))
                    mp=[scale_data(mp(1:numCells-1));mp(numCells)];
                end
            end
            try
                
                cText=[scale_data(cText(1:numCells-1));cText(numCells)];
            end
            try
                nText=[scale_data(nText(1:numCells-1));nText(numCells)];
            end
            try
                org_rect_d=[scale_data(org_rect_d(1:numCells-1));org_rect_d(numCells)];
            end
            try
                org_ellipse_d=[scale_data(org_ellipse_d(1:numCells-1));org_ellipse_d(numCells)];
            end
            try
                org_line_d=[scale_data(org_line_d(1:numCells-1));org_line_d(numCells)];
            end
            try
                org_zig_d=[scale_data(org_zig_d(1:numCells-1));org_zig_d(numCells)]
            end
        end
    end
else%check that parameters scaled.
    msg1='Use Standardize option to scale dimensional data onto interval [.1,1s]';
    msg2='Use Standardize option to scale numerical data onto interval [0,1]';
    if min(cL)<.1 || max(cL)>1 ,  error(msg1),end;
    if min(cW)<.1 || max(cW)>1 ,  error(msg1),end;
    if exist('nL'), if min(nL)<=0 || max(nL)>1 ,  error(msg1),end,end;
    if exist ('nW'), if min(nW)<=0 || max(nW)>1 ,  error(msg1),end,end;
    if exist ('pnL'), if min(pnL)<=0 || max(pnL)>1 ,  error(msg1),end,end;
    if exist ('pnW'), if min(pnW)<=0 || max(pnW)>1 ,  error(msg1),end,end;
    if exist ('prot'), if min(prot)<0 || max(prot)>1 ,  error(msg2),end,end;
    if exist ('spikiness'), if min(spikiness)<0 || max(spikiness)>1 ,  error(msg2),end,end;
    if exist ('spike_hgt'), if min(spike_hgt)<0 || max(spike_hgt)>1 ,  error(msg2),end,end;
    if exist ('nf'), if min(nf)<0 || max(nf)>1 ,  error(msg2),end,end;
    if exist ('mp'), if min(mp)<0 || max(mp)>1 ,  error(msg2),end,end;
    if exist ('cText'), if min(cText)<0 || max(cText)>1 ,  error(msg2),end,end;
    if exist ('nText'), if min(nText)<0 || max(nText)>1 ,  error(msg2),end,end;
    
    if exist ('org_rect_d'), if min(org_rect_d)<0 || max(org_rect_d)>1 ,  error(msg2),end,end;
    if exist ('org_ellipse_d'), if min(org_ellipse_d)<0 || max(org_ellipse_d)>1 ,  error(msg2),end,end;
    if exist ('org_line_d'), if min(org_line_d)<0 || max(org_line_d)>1 ,  error(msg2),end,end;
    if exist ('org_zig_d'), if min(org_zig_d)<0 || max(org_zig_d)>1 ,  error(msg2),end,end;
    
end


%Cells Position in 2D
%Consider different elements values to determine spacing between cells such that different cells don't overlap.
if exist('spike_hgt')
    c=2*max(spike_hgt)*max(cW);
else
    c=0;
end

if exist('prot')
    c2=max(cL)*max(prot)*.6;
else
    c2=0;
end

x_blcok=ceil(max(cW)+c);
y_blcok=ceil(max(cL)+c+c2);
numCells_no_leg=numCells-1;
if p.Results.Grid==1
    ngridy = floor(sqrt(numCells_no_leg));
    ngridx = ceil(numCells_no_leg./ngridy);
    ngrid = ngridx*ngridy;
    xcoord = repmat(linspace(1,ngridx*x_blcok,ngridx),1,ngridy);
    ycoord = ngridy - reshape(repmat(linspace(1,ngridy*y_blcok,ngridy),ngridx,1),1,ngrid);
    xcoord=addLegendCellPram(xcoord,0);
    ycoord=addLegendCellPram(ycoord,0);
elseif  ~p.Results.Grid
    if isempty(p.Results.xcoord)
        xcoord=linspace(1,numCells_no_leg*x_blcok,numCells);
    else
        xcoord=p.Results.xcoord;
        xcoord=addLegendCellPram(xcoord,0);
    end
    if isempty(p.Results.ycoord)
        ycoord=zeros(numCells,1);
    else
        ycoord=p.Results.ycoord;
        ycoord=addLegendCellPram(ycoord,0);
        
    end
end


%Labels of Cells
if ~isempty(p.Results.labels)
    cellLabel=p.Results.labels;
elseif isempty(p.Results.labels) & p.Results.Grid
    cellLabel=1:numCells_no_leg;
end


%%  Start drawing
hold on


for i=1:numCells
    %Determin basic ellipse
    %Regenerate ellipse points for Texture, NF and Organells positioning
    [pX pY pnX pnY] = calculateJaggedEllipse(xcoord(i), ycoord(i), cW(i), cL(i), 0,0,nf(i),1);
    maxx_cell_ellipse=max(pX);
    maxy_cell_ellipse=max(pY);
    minx_cell_ellipse=min(pX);
    miny_cell_ellipse=min(pY);
    %Draw protrusions
    if exist('prot')
        %Draw half ellips that its length extended propotionally by
        %relative protrusion area
        [pX pY pnX pnY] = calculateJaggedEllipse(xcoord(i),ycoord(i) ,cW(i), cL(i)+(cL(i)*prot(i)),spikiness(i),spike_hgt(i),.5);
        
        %open new figure for legend cell
        
        fill(pnX, pnY,protColor),axis equal
        if ~isempty(p.Results.Spikes)%if protrusions and spikes
            plot(pnX, pnY,spkLinespec,'linewidth',1),axis equal
            if (i==numCells)
                %legend: label spikes
                spike_posx1= pnX(12);
                right_arr_posx=pnX(12)+cW(i)*.3;
                spike_posx2= right_arr_posx;
                spike_posy1= pnY(12);
                plot(spike_posx1,spike_posy1,'<','color',LegendColor);
                plot([spike_posx1,spike_posx2],[spike_posy1,spike_posy1],'color',LegendColor);
                text(spike_posx2,spike_posy1,spikiness_leg,'HorizontalAlignment','left','verticalAlignment','Bottom','color',LegendColor);
                %Legend: label spikes height drawn on protrusions (on the 5th point of the ellipse border)
                if (spk)%we have spike height pram
                    spike_mid_x=(pnX(15)+pnX(14))/2;
                    spike_mid_y=(pnY(15)+pnY(14))/2;
                    spike_posy2=spike_mid_y+cL(i)*.2;
                    plot(spike_mid_x,spike_mid_y,'v','color',LegendColor);
                    plot([spike_mid_x,spike_mid_x],[spike_mid_y,spike_posy2],'color',LegendColor);
                    text(spike_mid_x,spike_posy2,spike_hgt_leg,'HorizontalAlignment','left','verticalAlignment','Bottom','color',LegendColor);
                end
            end
        else%only protrusions
            plot(pnX, pnY,cLinespec,'linewidth',1),axis equal
        end
        %The last cell is the legend cell
        if (i==numCells)
            %Legend: label protrusion (excluding spike points)
            [pX pY]=calculateJaggedEllipse(xcoord(i),ycoord(i) ,cW(i), cL(i)+(cL(i)*prot(i)));
            protE_posx2= max(pX);
            protE_posx1= min(pX);
            protE_posx3= (protE_posx2+protE_posx1)/2;
            protE_posy1=(maxy_cell_ellipse+max(pY))/2;
            protE_posy2=max(pY)+cL(i)*.14;
            top_arrow_pos=protE_posy2;
            plot(protE_posx3,protE_posy1,'v','color',LegendColor);
            plot([protE_posx3,protE_posx3],[protE_posy1,protE_posy2],'color',LegendColor);
            text(protE_posx3,protE_posy2,prot_leg,'HorizontalAlignment','left','verticalAlignment','Bottom','color',LegendColor);
        end
        %generate cell ellipse without spikes
        [pX pY pnX pnY] = calculateJaggedEllipse(xcoord(i), ycoord(i), cW(i), cL(i));
        
        
    elseif ~isempty(p.Results.Spikes)
        %generate cell ellipse with spikes prameters
        [pX pY pnX pnY] = calculateJaggedEllipse(xcoord(i), ycoord(i), cW(i), cL(i), spikiness(i),spike_hgt(i),1);
        right_arr_posx=pnX(8)+cW(i)*.3;
    else
        [pX pY pnX pnY] = calculateJaggedEllipse(xcoord(i), ycoord(i), cW(i), cL(i), spikiness(i),spike_hgt(i),0);
        
    end
    
    %Color Cell
    if exist('cellC')
        if(size(cellC,1)>1)
            fill(pX,pY,cellC(i,:),'linestyle','none'),axis equal
            if (i==numCells)
                %Legend: labels cell intensity (when used to represent a feature)
                cInt_posy1= miny_cell_ellipse+(maxy_cell_ellipse-miny_cell_ellipse)*.47;
                cInt_posx1= minx_cell_ellipse+(maxx_cell_ellipse-minx_cell_ellipse)*.95;
                
                if(~exist('right_arr_posx'))
                    right_arr_posx= cInt_posx1+cW(i)*.4;
                end
                plot(cInt_posx1,cInt_posy1,'<','color',LegendColor);
                plot([cInt_posx1,right_arr_posx],[cInt_posy1,cInt_posy1],'color',LegendColor);
                text(right_arr_posx,cInt_posy1,cellC_leg,'HorizontalAlignment','left','verticalAlignment','Bottom','color',LegendColor);
            end
        else
            fill(pX,pY,cellC(1,:),'linestyle','none'),axis equal
        end
    else
        fill(pX,pY,'w','linestyle','none'),axis equal
    end
    
    %Draw cell border
    plot(pX,pY,cLinespec,'linewidth',1),axis equal
    
    if exist('cellLabel')
        pos(i,:)=[min(pX),min(pY)];
    end
    if (i==numCells)
        %Legend: label cell length
        cellE_posx1= min(pX)-cW(i)*.4;
        cellE_posy1=min(pY);
        cellE_posy2=max(pY);
        cellE_posy3=cellE_posy1+(cellE_posy2-cellE_posy1)/2;
        plot(cellE_posx1,cellE_posy1,'v','color',LegendColor);
        plot(cellE_posx1,cellE_posy2,'^','color',LegendColor);
        plot([cellE_posx1,cellE_posx1],[cellE_posy1,cellE_posy2],'color',LegendColor);
        text(cellE_posx1,cellE_posy3,cL_leg,'HorizontalAlignment','center','verticalAlignment','Bottom','rotation',90,'color',LegendColor);
        
        %Legend: label cell width
        cellE_posx2= max(pX);
        cellE_posx1= min(pX);
        cellE_posx3= cellE_posx1+(cellE_posx2-cellE_posx1)/2;
        cellE_posy1=min(pY)-cW(i)*.4;
        annot=plot(cellE_posx1,cellE_posy1,'<','color',LegendColor);
        annot=plot(cellE_posx2,cellE_posy1,'>','color',LegendColor);
        annot=plot([cellE_posx1,cellE_posx2],[cellE_posy1,cellE_posy1],'-','color',LegendColor);
        text(cellE_posx3,cellE_posy1,cW_leg,'HorizontalAlignment','center','verticalAlignment','top','color',LegendColor);
        
        %legend: label spikes drawn on cell ellipse
        if ~isempty(p.Results.Spikes) & ~exist('prot')
            spike_posx1= pnX(14);
            spike_posx2= right_arr_posx;
            spike_posy1= pnY(14);
            plot(spike_posx1,spike_posy1,'<','color',LegendColor);
            plot([spike_posx1,spike_posx2],[spike_posy1,spike_posy1],'color',LegendColor);
            text(spike_posx2,spike_posy1,spikiness_leg,'HorizontalAlignment','left','verticalAlignment','Bottom','color',LegendColor);
            
            %Legend: label spikes height drawn on protrusions (on the 5th point of the ellipse border)
            if (spk)%we have spike height pram
                spike_mid_x=(pnX(17)+pnX(16))/2;
                spike_mid_y=(pnY(17)+pnY(16))/2;
                spike_posy2=spike_mid_y+cL(i)*.2;
                plot(spike_mid_x,spike_mid_y,'v','color',LegendColor);
                plot([spike_mid_x,spike_mid_x],[spike_mid_y,spike_posy2],'color',LegendColor);
                text(spike_mid_x,spike_posy2,spike_hgt_leg,'HorizontalAlignment','left','verticalAlignment','Bottom','color',LegendColor);
            end
        end
        
    end
    
    
    %Regenerate ellipse points for Texture, NF and Organells positioning
    [pX pY pnX pnY] = calculateJaggedEllipse(xcoord(i), ycoord(i), cW(i), cL(i), 0,0,nf(i),1);
    if ~isempty(p.Results.CellTexture)
        %Generate number of texture points  propotional to cell length and width
        n=5*sqrt(cW(i)*cL(i))+1;
        ng = ellipse_grid_count ( n, [cW(i)/2,cL(i)/2],[xcoord(i),ycoord(i)]);
        xy = ellipse_grid ( n, [cW(i)/2,cL(i)/2], [xcoord(i),ycoord(i)], ng );
        idx=~(xy(2,:)>max(pY) | xy(2,:)<min(pY));
        xy=xy(:,idx)';
        xy=sortrows(xy,[-2,1]);
        if(strcmpi(cTextPos,'top'))
            xy=sortrows(xy,[2,1]);
        elseif (strcmpi(cTextPos,'bottom'))
            xy=sortrows(xy,[-2,1]);
        elseif (strcmpi(cTextPos,'left'))
            xy=sortrows(xy,[1,-2]);
        elseif (strcmpi(cTextPos,'right'))
            xy=sortrows(xy,[-1,-2]);
        end
        %Plot number of points propotional to the texture feature
        num_pt=round(length(xy)*cText(i));
        scatter ( xy(1:num_pt,1), xy(1:num_pt,2), cTextLinespec );
        if (i==numCells)
            %Legend: labels cell texture
            cText_posx1=xy(2,1);
            cText_posy1=xy(2,2);
            if(~exist('top_arrow_pos'))
                ctpos=cText_posy1+(max(pY)-cText_posy1);
                cText_posy2=ctpos+cL(i)*.32;
            else
                cText_posy2=top_arrow_pos+cL(i)*.32;
            end
            
            plot(cText_posx1,cText_posy1,'v','color',LegendColor);
            plot([cText_posx1,cText_posx1],[cText_posy1,cText_posy2],'color',LegendColor);
            text(cText_posx1,cText_posy2,cText_leg,'HorizontalAlignment','left','verticalAlignment','Bottom','color',LegendColor);
        end
    end
    
    %Make NF bold (if NF is 0 nothing will be drawn)
    if(nf(i)>0)
        plot(pnX, pnY,strcat('-',nfColor(end)),'linewidth',3),axis equal
        if (i==numCells)
            %Legend: labels NF
            [lowp lowpi]=min(pnY);
            nf_pt=lowpi+5;
            nf_posx1= pnX(nf_pt);
            if(~exist('right_arr_posx'))
                right_arr_posx=pnX(nf_pt)+cW(i)*.3;
            end
            nf_posx2= right_arr_posx;
            nf_posy1= pnY(nf_pt);
            plot(nf_posx1,nf_posy1,'<','color',LegendColor);
            plot([nf_posx1,right_arr_posx],[nf_posy1,nf_posy1],'color',LegendColor);
            text(right_arr_posx,nf_posy1,nf_leg,'HorizontalAlignment','left','verticalAlignment','Bottom','color',LegendColor);
        end
    end
    
    % Membrane Process
    if(mp(i)>0)
        l=length(pX);
        nsteps=round(mp(i)*l);
        plot(pX(1:4:nsteps), pY(1:4:nsteps),mp_Linespec,'linewidth',1),axis equal
        if (i==numCells)
            %Legend: labels membrane Process
            mp_posx1=pX(33);
            mp_posy1=pY(33);
            if(~exist('top_arrow_pos'))
                top_arrow_pos=mp_posy1+(max(pY)-mp_posy1);
            end
            mp_posy2=top_arrow_pos+cL(i)*.23;
            
            plot(mp_posx1,mp_posy1,'v','color',LegendColor);
            plot([mp_posx1,mp_posx1],[mp_posy1,mp_posy2],'color',LegendColor);
            text(mp_posx1,mp_posy2,mp_leg,'HorizontalAlignment','left','verticalAlignment','Bottom','color',LegendColor);
        end
        
    end
    
    %Peri-Nuclei
    if ~isempty(p.Results.PeriNucEllipse)
        [ppX ppY] = calculateJaggedEllipse(xcoord(i),ycoord(i), pnW(i), pnL(i));
        if exist('pnucC')
            if(size(pnucC,1)>1)%plus the legend
                fill(ppX,ppY,pnucC(i,:),'linestyle','none'),axis equal
                if (i==numCells)
                    %Legend: labels peri nuclei intensity (when used to represent a feature)
                    pnInt_posy1=min(ppY)+(max(ppY)-min(ppY))*.2;
                    pnInt_posx1= min(ppX)+(max(ppX)-min(ppX))*.8;
                    if(~exist('right_arr_posx'))
                        right_arr_posx= pnInt_posx1+cW(i)*.4;
                    end
                    plot(pnInt_posx1,pnInt_posy1,'<','color',LegendColor);
                    plot([pnInt_posx1,right_arr_posx],[pnInt_posy1,pnInt_posy1],'color',LegendColor);
                    text(right_arr_posx,pnInt_posy1,pnucC_leg,'HorizontalAlignment','left','verticalAlignment','Bottom','color',LegendColor);
                end
            else
                fill(ppX,ppY,pnucC(1,:),'linestyle','none')
            end
        end
        plot(ppX,ppY,pnLinespec,'linewidth',1),axis equal
        if(numCells==i)
            %Legend: label perinuclear length
            pnucE_posx1= min(pX)-cW(i)*.25;
            pnucE_posy1=min(ppY);
            pnucE_posy2=max(ppY);
            pnucE_posy3=pnucE_posy1+(pnucE_posy2-pnucE_posy1)/2;
            plot(pnucE_posx1,pnucE_posy1,'v','color',LegendColor);
            plot(pnucE_posx1,pnucE_posy2,'^','color',LegendColor);
            plot([pnucE_posx1,pnucE_posx1],[pnucE_posy1,pnucE_posy2],'color',LegendColor);
            text(pnucE_posx1,pnucE_posy3,pnL_leg,'HorizontalAlignment','center','verticalAlignment','Bottom','rotation',90,'color',LegendColor);
            
            %Legend: label perinuclear width
            pnucE_posx2= max(ppX);
            pnucE_posx1= min(ppX);
            pnucE_posx3= pnucE_posx1+(pnucE_posx2-pnucE_posx1)/2;
            pnucE_posy1=min(pY)-cW(i)*.25;
            plot(pnucE_posx1,pnucE_posy1,'<','color',LegendColor);
            plot(pnucE_posx2,pnucE_posy1,'>','color',LegendColor);
            plot([pnucE_posx1,pnucE_posx2],[pnucE_posy1,pnucE_posy1],'-','color',LegendColor);
            text(pnucE_posx3,pnucE_posy1,pnW_leg,'HorizontalAlignment','center','verticalAlignment','top','color',LegendColor);
        end
    end
    
    %Nuclei
    if ~isempty(p.Results.NucEllipse)
        [npX npY] = calculateJaggedEllipse(xcoord(i),ycoord(i), nW(i), nL(i));
        
        if exist('nucC')
            if(size(nucC,1)>1)%plus the legend
                fill(npX,npY,nucC(i,:),'linestyle','none'),axis equal
                if (i==numCells)
                    %Legend: labels nuclei intensity (when used to represent a feature)
                    nInt_posy1=min(npY)+(max(npY)-min(npY))*.2;
                    nInt_posx1= min(npX)+(max(npX)-min(npX))*.8;
                    if(~exist('right_arr_posx'))
                        right_arr_posx= nInt_posx1+cW(i)*.4;
                    end
                    plot(nInt_posx1,nInt_posy1,'<','color',LegendColor);
                    plot([nInt_posx1,right_arr_posx],[nInt_posy1,nInt_posy1],'color',LegendColor);
                    text(right_arr_posx,nInt_posy1,nucC_leg,'HorizontalAlignment','left','verticalAlignment','Bottom','color',LegendColor);
                end
            else
                fill(npX,npY,nucC(1,:),'linestyle','none')
            end
        else
            fill(npX,npY,'w','linestyle','none')
        end
        %Draw nuclei border
        plot(npX,npY,nLinespec,'linewidth',1),axis equal
        if(numCells==i)
            %Legend: label nuclei length
            nucE_posx1= min(pX)-cW(i)*.1;
            nucE_posy1=min(npY);
            nucE_posy2=max(npY);
            nucE_posy3=nucE_posy1+(nucE_posy2-nucE_posy1)/2;
            plot(nucE_posx1,nucE_posy1,'v','color',LegendColor);
            plot(nucE_posx1,nucE_posy2,'^','color',LegendColor);
            plot([nucE_posx1,nucE_posx1],[nucE_posy1,nucE_posy2],'color',LegendColor);
            text(nucE_posx1,nucE_posy3,nL_leg,'HorizontalAlignment','center','verticalAlignment','Bottom','rotation',90,'color',LegendColor);
            
            %Legend: label nuclei width
            nucE_posx2= max(npX);
            nucE_posx1= min(npX);
            nucE_posx3= nucE_posx1+(nucE_posx2-nucE_posx1)/2;
            nucE_posy1=min(pY)-cW(i)*.1;
            annot=plot(nucE_posx1,nucE_posy1,'<','color',LegendColor);
            annot=plot(nucE_posx2,nucE_posy1,'>','color',LegendColor);
            annot=plot([nucE_posx1,nucE_posx2],[nucE_posy1,nucE_posy1],'-','color',LegendColor);
            text(nucE_posx3,nucE_posy1,nW_leg,'HorizontalAlignment','center','verticalAlignment','top','color',LegendColor);
        end
        
        if ~isempty(p.Results.NucTexture)
            %Generate number of texture points  propotional to nuclei length and width
            n=5*sqrt(nW(i)*nL(i))+1;
            ng = ellipse_grid_count ( n, [nW(i)/2,nL(i)/2],[xcoord(i),ycoord(i)]);
            xy = ellipse_grid ( n, [nW(i)/2,nL(i)/2], [xcoord(i),ycoord(i)], ng );
            idx=~(xy(2,:)>max(npY) | xy(2,:)<min(npY));
            xy=xy(:,idx)';
            if(strcmpi(nTextPos,'top'))
                xy=sortrows(xy,[2,1]);
            elseif (strcmpi(nTextPos,'bottom'))
                xy=sortrows(xy,[-2,1]);
            elseif (strcmpi(nTextPos,'left'))
                xy=sortrows(xy,[1,-2]);
            elseif (strcmpi(nTextPos,'right'))
                xy=sortrows(xy,[-1,-2]);
            end
            %Plot number of points propotional to the texture feature
            num_pt=round(length(xy)*nText(i));
            scatter ( xy(1:num_pt,1), xy(1:num_pt,2), nTextLinespec );
            if (i==numCells)
                %Legend: labels nuclear texture
                nText_posx1=xy(30,1);
                nText_posy1=xy(30,2);
                if(~exist('right_arr_posx'))
                    right_arr_posx=nText_posx1+(max(pX)-nText_posx1)+cW(i)*.2;
                end
                plot(nText_posx1,nText_posy1,'<','color',LegendColor);
                plot([nText_posx1,right_arr_posx],[nText_posy1,nText_posy1],'color',LegendColor);
                text(right_arr_posx,nText_posy1,nText_leg,'HorizontalAlignment','left','verticalAlignment','Bottom','color',LegendColor);
            end
        end
        
        if exist('div_nuc')
            if div_nuc(i)>1
                ns=length(npX)-1;
                n_parts=round(ns/div_nuc(i));
                div_pt=[npX(1),npY(1)];
                for k=1:div_nuc(i)-1
                    div_pt=[div_pt;npX(n_parts.*k),npY(n_parts.*k)];
                end
                %plot the line
                for k=1:div_nuc(i)
                    plot([xcoord(i),div_pt(k,1)],[ycoord(i),div_pt(k,2)],div_nuc_ln)
                end
                
                if (i==numCells)
                    %Legend: labels nuclear div
                    k=3;
                    mid_pt=[(xcoord(i)+div_pt(k,1))./2,(ycoord(i)+div_pt(k,2))./2];
                    div_nuc_posx1=mid_pt(1);
                    div_nuc_posy1=mid_pt(2);
                    if(~exist('right_arr_posx'))
                        right_arr_posx=div_nuc_posx1+(max(pX)-div_nuc_posx1)+cW(i)*.2;
                    end
                    plot(div_nuc_posx1,div_nuc_posy1,'<','color',LegendColor);
                    plot([div_nuc_posx1,right_arr_posx],[div_nuc_posy1,div_nuc_posy1],'color',LegendColor);
                    text(right_arr_posx,div_nuc_posy1,div_nuc_leg,'HorizontalAlignment','left','verticalAlignment','Bottom','color',LegendColor);
                end
            end
        end
        
        if exist('num_nuc')
            if num_nuc(i)>1
                num_circles=ceil(num_nuc(i));
                full_cricrl=floor(num_nuc(i));
                ns=length(npX)-1;
                n_parts=round(ns/num_circles);
                div_pt=[npX(1),npY(1)];
                for k=1:num_circles-1
                    div_pt=[div_pt;npX(n_parts.*k),npY(n_parts.*k)];
                end
                
                %plot an ellipse per nuclei
                diameter=(pdist2([xcoord(i),ycoord(i)],div_pt));
                xnew_ctrs=(repmat(xcoord(i),num_circles,1)+div_pt(:,1))./2;
                ynew_ctrs=(repmat(ycoord(i),num_circles,1)+div_pt(:,2))./2;
                if num_circles==full_cricrl
                    for k=1:num_nuc(i)
                        [snX snY]=calculateJaggedEllipse(xnew_ctrs(k),ynew_ctrs(k),min(diameter),min(diameter));
                        plot(snX,snY,num_nuc_ln)
                    end
                else
                    for k=1:full_cricrl
                        [snX snY]=calculateJaggedEllipse(xnew_ctrs(k),ynew_ctrs(k),min(diameter),min(diameter));
                        plot(snX,snY,num_nuc_ln)
                    end
                    %for the fraction nuclei
                    fract_nuc=num_nuc(i)-full_cricrl;
                    [snX snY psnX psnY]=calculateJaggedEllipse(xnew_ctrs(k+1),ynew_ctrs(k+1),min(diameter),min(diameter),0,0,fract_nuc);
                    plot([psnX;psnX(1)],[psnY;psnY(1)],num_nuc_ln)
                end
                if (i==numCells)
                    %Legend: labels number of nuclei
                    [max_last_nuc max_last_nuc_idx]=max(snX);
                    numnuc_posx1=snX(max_last_nuc_idx);
                    numnuc_posy1=snY(max_last_nuc_idx);
                    if(~exist('right_arr_posx'))
                        right_arr_posx=numnuc_posx1+(max(pX)-numnuc_posx1)+cW(i)*.2;
                    end
                    plot(numnuc_posx1,numnuc_posy1,'<','color',LegendColor);
                    plot([numnuc_posx1,right_arr_posx],[numnuc_posy1,numnuc_posy1],'color',LegendColor);
                    text(right_arr_posx,numnuc_posy1,num_nuc_leg,'HorizontalAlignment','left','verticalAlignment','Bottom','color',LegendColor);
                end
            end
        end
        
    end
    
    
    %Organelles
    minD=min([cW(i),cL(i)]);
    s=length(pX)-1;
    midpoints_pos=[3;1; 7;5]*round(s/8);
    midpoints=[pX(midpoints_pos),pY(midpoints_pos)];
    
    
    %Ellipse organelle
    if ~isempty(p.Results.organelle_ellipse)
        max_org_l=minD*.4;
        org_w=max_org_l*.6;
        [pX pY pnX pnY] = calculateJaggedEllipse(midpoints(1,1)+minD./8, midpoints(1,2)-minD./8, org_w,max_org_l, 0,0,1,0,30);
        ns=length(pX)-1;
        e_parts=round(ns/4);
        p1=1:e_parts;
        p2=e_parts*2:-1:e_parts+1;
        p3=e_parts*3:-1:e_parts*2+1;
        p4=e_parts*3+1:e_parts*4;
        fillp=ceil(ns*org_ellipse_d(i)/2);
        [mX mXidx]=min(pX);
        lower_curv=[p4 p1]';
        upper_curv=[p3 p2]';
        fill(pX,pY,org_ellipse_max_color,'LineStyle','-','EdgeColor','k')
        fill([pX(upper_curv(fillp:-1:1));pX(lower_curv(1:fillp))],[pY(upper_curv(fillp:-1:1));pY(lower_curv(1:fillp))],org_ellipse_part_color,'LineStyle','-','EdgeColor','k');
        if (i==numCells)
            %Legend: labels ellipse organelle
            [maxx_org_ellipse maxx_org_ellipse_idx]=max(pY);
            org_ellipse_posx1=pX(maxx_org_ellipse_idx);
            org_ellipse_posy1=pY(maxx_org_ellipse_idx);
            
            if(~exist('top_arrow_pos'))
                top_arrow_pos=org_ellipse_posy1+(maxy_cell_ellipse-org_ellipse_posy1);
            end
            org_ellipse_posy2=top_arrow_pos+cL(i)*.13;
            plot(org_ellipse_posx1,org_ellipse_posy1,'v','color',LegendColor);
            plot([org_ellipse_posx1,org_ellipse_posx1],[org_ellipse_posy1,org_ellipse_posy2],'color',LegendColor);
            text(org_ellipse_posx1,org_ellipse_posy2,org_ellipse_leg,'HorizontalAlignment','left','verticalAlignment','Bottom','color',LegendColor);
        end
    end
    
    
    %Rectangle organelle
    if ~isempty(p.Results.organelle_rectangle)
        max_org_l=minD*.3;
        org_w=max_org_l*.6;
        rectangle('position',[midpoints(3,1)-minD./4, midpoints(3,2), org_w,max_org_l],'facecolor',org_rect_max_color,'LineStyle','-','Curvature',[0,0],'LineStyle','-','EdgeColor','k')
        try
            rectangle('position',[midpoints(3,1)-minD./4, midpoints(3,2), org_w,max_org_l*org_rect_d(i)],'facecolor',org_rect_part_color,'Curvature',[0,0],'LineStyle','-','EdgeColor','k')
        end
        if (i==numCells)
            %Legend: labels line organelle
            org_rect_posy1=midpoints(3,2)+max_org_l/4;
            org_rect_posx1= midpoints(3,1)-minD./4+org_w;
            if(~exist('right_arr_posx'))
                right_arr_posx= org_rect_posx1+(maxx_cell_ellipse-org_rect_posx1)+cW(i)*.4;
            end
            plot(org_rect_posx1,org_rect_posy1,'<','color',LegendColor);
            plot([org_rect_posx1,right_arr_posx],[org_rect_posy1,org_rect_posy1],'color',LegendColor);
            text(right_arr_posx,org_rect_posy1,org_rect_leg,'HorizontalAlignment','left','verticalAlignment','Bottom','color',LegendColor);
        end
    end
    
    
    %Line organelle
    if ~isempty(p.Results.organelle_line)
        max_org_l=minD*.3;
        org_w=max_org_l*.35;
        x1=midpoints(2,1)-minD./12-max_org_l;
        x2=midpoints(2,1)-minD./12;
        y1=midpoints(2,2)-minD./9+max_org_l;
        y2=midpoints(2,2)-minD./9;
        fill([x1;x2;x2;x1],[y1;y2;y2-org_w;y1-org_w],org_line_max_color,'LineStyle','-');
        x_part=x2-max_org_l*org_line_d(i);
        y_part=interp1([x1;x2],[y1;y2],x_part);
        fill([x_part;x2;x2;x_part],[y_part-org_w;y2-org_w;y2;y_part],org_line_part_color);
        if (i==numCells)
            %Legend: labels line organelle
            org_line_posy1=y2+(y1-y2)*.25;
            org_line_posx1= x2;
            if(~exist('right_arr_posx'))
                right_arr_posx= x2+(maxx_cell_ellipse-x2)+cW(i)*.4;
            end
            plot(org_line_posx1,org_line_posy1,'<','color',LegendColor);
            plot([org_line_posx1,right_arr_posx],[org_line_posy1,org_line_posy1],'color',LegendColor);
            text(right_arr_posx,org_line_posy1,org_line_leg,'HorizontalAlignment','left','verticalAlignment','Bottom','color',LegendColor);
        end
    end
    
    
    %Zigzag line organelle
    if ~isempty(p.Results.organelle_zigzag)
        l=minD*.25;
        s=27;
        ps=s-round(s*org_zig_d);
        px=linspace(0,l,s);
        py=linspace(0,l,s)+repmat([0,l/4,l/2,l/4,0,-l/4,-l/2,-l/4,0],1,s/9);
        zigzag_X=px+midpoints(4,1)+minD./12;
        zigzag_Y=midpoints(4,2)+minD./6-py;
        plot(zigzag_X,zigzag_Y,'-k','linewidth',4,'MarkerEdgeColor','k')
        plot(zigzag_X,zigzag_Y,strcat('-',org_zig_max_color),'linewidth',2,'MarkerEdgeColor','k')
        if ps(i)~=0%organelle not full
            plot(zigzag_X(end:-1:ps(i)),zigzag_Y(end:-1:ps(i)),strcat('-',org_zig_part_color),'linewidth',2)
        else
            plot(zigzag_X,zigzag_Y,strcat('-',org_zig_part_color),'linewidth',2,'MarkerEdgeColor','k')
        end
    end
    
    
    if (i==numCells_no_leg)%last cell add labels and open new figure for the legend
        
        %Attach labels
        if exist('cellLabel')
            %If grid is used the labels of different cells will be aligned
            if p.Results.Grid
                xcoord_g=grp2idx(xcoord(1:numCells_no_leg));
                ycoord_g=grp2idx(ycoord(1:numCells_no_leg));
                [grid_posx gnx]=grpstats(pos(:,1),xcoord_g,{'min','gname'});
                [grid_posy gny]=grpstats(pos(:,2),ycoord_g,{'min','gname'});
            end
            for li=1:numCells_no_leg
                if isnumeric(cellLabel(li))
                    lbl=num2str(cellLabel(li));
                else
                    lbl=cellLabel(li);
                end
                if p.Results.Grid
                    posx=grid_posx(xcoord_g(li)==cellfun(@str2num,gnx));
                    posy=grid_posy(ycoord_g(li)==cellfun(@str2num,gnx));
                    text(posx,posy,lbl);
                    
                else
                    text(pos(li,1),pos(li,2)-cL(li).*.1,lbl);
                end
            end
            if p.Results.Grid
                set(gca,'xtick',[]);
                set(gca,'ytick',[]);
                a=get(gca,'ylim');
                set(gca,'ylim',[a(1)-.5,a(2)]);
            end
        end
        
        %Ellipse center
        if p.Results.PlotCenters
            numC=length(cL);
            scatter(xcoord(1:numC),ycoord(1:numC),10,[.5 0 0],'filled')
        end
        
        hold off
        figure
        hold on
        set(gca,'xtick',[])
        set(gca,'ytick',[])
        
    end
    if(i==numCells)%Legend cell operations
        h = findall(gca,'Type','text');
        texts_pos=cell2mat(get(h,'Extent'));
        innermost_x=min(texts_pos(:,1))-texts_pos(1,4);
        outmost_x=max(texts_pos(:,1)+texts_pos(:,3))+texts_pos(1,4);
        innermost_y=min(texts_pos(:,2))-texts_pos(1,4);
        outmost_y=max(texts_pos(:,2)+texts_pos(:,4))+texts_pos(1,4);
        
        %plot color bars using fill
        %colorbars width is .05 of legend figure size
        %label these values
        lbl_points=[1,16,32,48,64];
        %color bar width fixed
        cbw=(outmost_x-innermost_x)*.03;
        cby_init= miny_cell_ellipse+(maxy_cell_ellipse-miny_cell_ellipse)*.47;
        %cell color bar
        if exist('ccmap')
            
            cb1=outmost_x+cbw;
            cbX=[cb1,cb1+cbw,cb1+cbw,cb1];
            cby=maxy_cell_ellipse-cby_init;
            yincrement=cby./64;
            ylevel=cby_init;
            for i=1:levels
                cbY=[ylevel,ylevel,ylevel+yincrement,ylevel+yincrement];
                fill(cbX,cbY,ccmap(i,:),'linestyle','none');
                ylevel=ylevel+yincrement;
                if (ismember(i,lbl_points))
                    if i==1
                        text(cb1+cbw+cbw/10,ylevel,'0','color',LegendColor);
                    else
                        text(cb1+cbw+cbw/10,ylevel,num2str(i/64),'color',LegendColor);
                    end
                end
            end
            h = findall(gca,'Type','text');
            texts_pos=cell2mat(get(h,'Extent'));
            outmost_x=max(texts_pos(:,1)+texts_pos(:,3))+texts_pos(1,4);
            
            plot([right_arr_posx,cbX(1)],[cInt_posy1,cInt_posy1],'color',LegendColor);
            plot([cbX(1),cbX(1)],[cInt_posy1,cby_init],'color',LegendColor);
            plot(cbX(1),cby_init,'>','color',LegendColor);
        end
        
        %nuclei color bar
        if exist('ncmap')
            cb1=outmost_x+cbw;
            cbX=[cb1,cb1+cbw,cb1+cbw,cb1];
            cby=maxy_cell_ellipse-cby_init;
            yincrement=cby./64;
            ylevel=cby_init;
            for i=1:levels
                cbY=[ylevel,ylevel,ylevel+yincrement,ylevel+yincrement];
                fill(cbX,cbY,ncmap(i,:),'linestyle','none');
                ylevel=ylevel+yincrement;
                if (ismember(i,lbl_points))
                    if i==1
                        text(cb1+cbw+cbw/10,ylevel,'0','color',LegendColor);
                    else
                        text(cb1+cbw+cbw/10,ylevel,num2str(i/64),'color',LegendColor);
                    end
                end
            end
            h = findall(gca,'Type','text');
            texts_pos=cell2mat(get(h,'Extent'));
            outmost_x=max(texts_pos(:,1)+texts_pos(:,3))+texts_pos(1,4);
            
            plot([right_arr_posx,cbX(1)],[nInt_posy1,nInt_posy1],'color',LegendColor);
            plot([cbX(1),cbX(1)],[nInt_posy1,cby_init],'color',LegendColor);
            plot(cbX(1),cby_init,'^','color',LegendColor);
        end
        
        %perinuclear color bar
        if exist('pncmap')
            cb1=outmost_x+cbw;
            cbX=[cb1,cb1+cbw,cb1+cbw,cb1];
            cby=maxy_cell_ellipse-cby_init;
            yincrement=cby./64;
            ylevel=cby_init;
            for i=1:levels
                cbY=[ylevel,ylevel,ylevel+yincrement,ylevel+yincrement];
                fill(cbX,cbY,pncmap(i,:),'linestyle','none');
                ylevel=ylevel+yincrement;
                if (ismember(i,lbl_points))
                    if i==1
                        text(cb1+cbw+cbw/10,ylevel,'0','color',LegendColor);
                    else
                        text(cb1+cbw+cbw/10,ylevel,num2str(i/64),'color',LegendColor);
                    end
                end
            end
            h = findall(gca,'Type','text');
            texts_pos=cell2mat(get(h,'Extent'));
            outmost_x=max(texts_pos(:,1)+texts_pos(:,3))+texts_pos(1,4);
            plot([right_arr_posx,cbX(1)],[pnInt_posy1,pnInt_posy1],'color',LegendColor);
            plot([cbX(1),cbX(1)],[pnInt_posy1,cby_init],'color',LegendColor);
            plot(cbX(1),cby_init,'^','color',LegendColor);
        end
        
        
        axes_x=get(gca,'xlim');
        axes_y=get(gca,'ylim');
        if (outmost_x<axes_x(2))
            outmost_x=axes_x(2)+texts_pos(1,4);
        end
        if (outmost_y<axes_y(2))
            outmost_y=axes_y(2)+texts_pos(1,4);
        end
        
        set(gca,'xlim',[innermost_x,outmost_x]);
        set(gca,'ylim',[innermost_y,outmost_y]);
    end
end


