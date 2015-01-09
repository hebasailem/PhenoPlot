function d=addLegendCellPram(data,Legend_pram)
    if(size(data,1)<length(data))
        data=data';
    end
    %add legend cell length
    d=[data;Legend_pram];
