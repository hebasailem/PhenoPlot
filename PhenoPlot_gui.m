function varargout = PhenoPlot_gui(varargin)
% PHENOPLOT_GUI MATLAB code for PhenoPlot_gui.fig
%      PHENOPLOT_GUI, by itself, creates a new PHENOPLOT_GUI or raises the existing
%      singleton*.
%
%      H = PHENOPLOT_GUI returns the handle to a new PHENOPLOT_GUI or the handle to
%      the existing singleton*.
%
%      PHENOPLOT_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PHENOPLOT_GUI.M with the given input arguments.
%
%      PHENOPLOT_GUI('Property','Value',...) creates a new PHENOPLOT_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PhenoPlot_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PhenoPlot_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PhenoPlot_gui

% Last Modified by GUIDE v2.5 02-Jun-2014 12:18:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PhenoPlot_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @PhenoPlot_gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before PhenoPlot_gui is made visible.
function PhenoPlot_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PhenoPlot_gui (see VARARGIN)

% Choose default command line output for PhenoPlot_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PhenoPlot_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PhenoPlot_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in chkNorm.
function chkNorm_Callback(hObject, eventdata, handles)
% hObject    handle to chkNorm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkNorm


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in chkEllipse.
function chkEllipse_Callback(hObject, eventdata, handles)
% hObject    handle to chkEllipse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkEllipse
if (get(hObject,'Value') == get(hObject,'Max'))
   % Checkbox is checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuEllipse,'Enable','on');
   set(handles.pmnuEllipseColor,'Enable','on');
   guidata(hObject, handles);

else
   % Checkbox is not checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuEllipse,'Enable','off');
   set(handles.pmnuEllipseColor,'Enable','off');
   guidata(hObject, handles);
end


% --- Executes on button press in chkRect.
function chkRect_Callback(hObject, eventdata, handles)
% hObject    handle to chkRect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkRect
if (get(hObject,'Value') == get(hObject,'Max'))
   % Checkbox is checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuRect,'Enable','on');
   set(handles.pmnuRectColor,'Enable','on');
   guidata(hObject, handles);

else
   % Checkbox is not checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuRect,'Enable','off');
   set(handles.pmnuRectColor,'Enable','off');
   guidata(hObject, handles);
end

% --- Executes on button press in checkbox18.
function checkbox18_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox18


% --- Executes on button press in chkLine.
function chkLine_Callback(hObject, eventdata, handles)
% hObject    handle to chkLine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkLine
if (get(hObject,'Value') == get(hObject,'Max'))
   % Checkbox is checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuLine,'Enable','on');
   set(handles.pmnuLineColor,'Enable','on');
   guidata(hObject, handles);

else
   % Checkbox is not checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuLine,'Enable','off');
   set(handles.pmnuLineColor,'Enable','off');
   guidata(hObject, handles);
end


% --- Executes on button press in chkNuc.
function chkNuc_Callback(hObject, eventdata, handles)
% hObject    handle to chkNuc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkNuc
if (get(hObject,'Value') == get(hObject,'Max'))
   % Checkbox is checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuNucLength,'Enable','on');
   set(handles.pmnuNucWidth,'Enable','on');
   set(handles.pmnuNBordColor,'Enable','on');
   guidata(hObject, handles);

else
   % Checkbox is not checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuNucLength,'Enable','off');
   set(handles.pmnuNucWidth,'Enable','off');
   set(handles.pmnuNBordColor,'Enable','off');
   guidata(hObject, handles);
end


% --- Executes on button press in chkNucText.
function chkNucText_Callback(hObject, eventdata, handles)
% hObject    handle to chkNucText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkNucText
if (get(hObject,'Value') == get(hObject,'Max'))
   % Checkbox is checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuNucText,'Enable','on');
   set(handles.pmnuNucTextSymb,'Enable','on');
   set(handles.pmnuNucTextColor,'Enable','on');
   guidata(hObject, handles);

else
   % Checkbox is not checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuNucText,'Enable','off');
   set(handles.pmnuNucTextSymb,'Enable','off');
   set(handles.pmnuNucTextColor,'Enable','off');
   guidata(hObject, handles);
end

% --- Executes on button press in chkNucNumb.
function chkNucNumb_Callback(hObject, eventdata, handles)
% hObject    handle to chkNucNumb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkNucNumb
if (get(hObject,'Value') == get(hObject,'Max'))
   % Checkbox is checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuNucNumb,'Enable','on');
   set(handles.pmnuNucNumC,'Enable','on');
   guidata(hObject, handles);

else
   % Checkbox is not checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuNucNumb,'Enable','off');
   set(handles.pmnuNucNumC,'Enable','off');
   guidata(hObject, handles);
end

% --- Executes on button press in chkNucColor.
function chkNucColor_Callback(hObject, eventdata, handles)
% hObject    handle to chkNucColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkNucColor
if (get(hObject,'Value') == get(hObject,'Max'))
   % Checkbox is checked-take appropriate action
   handles.output = hObject;
   set(handles.rdbtnNucFColor,'Enable','on');
   set(handles.rdbtnNucVColor,'Enable','on');
   
   guidata(hObject, handles);

else
   % Checkbox is not checked-take appropriate action
   handles.output = hObject;
   
   set(handles.rdbtnNucFColor,'Enable','off');
   set(handles.rdbtnNucVColor,'Enable','off');
   set(handles.pmnuNucFColor,'Enable','off');
   set(handles.pmnuNucVColor,'Enable','off');
   set(handles.pmnuNucClrmap,'Enable','off');
   
   set(handles.rdbtnNucFColor,'Value',0);
   set(handles.rdbtnNucVColor,'Value',0);
   
   guidata(hObject, handles);
end


% --- Executes on button press in checkbox14.
function checkbox14_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox14


% --- Executes on button press in cellellipse.
function cellellipse_Callback(hObject, eventdata, handles)
% hObject    handle to cellellipse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cellellipse


% --- Executes on button press in chkCellColor.
function chkCellColor_Callback(hObject, eventdata, handles)
% hObject    handle to chkCellColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of chkCellColor
if (get(hObject,'Value') == get(hObject,'Max'))
   % Checkbox is checked-take appropriate action
   handles.output = hObject;
   set(handles.rdbtnFColor,'Enable','on');
   set(handles.rdbtnVColor,'Enable','on');
   
   guidata(hObject, handles);

else
   % Checkbox is not checked-take appropriate action
   handles.output = hObject;
   
   set(handles.rdbtnFColor,'Enable','off');
   set(handles.rdbtnVColor,'Enable','off');
   set(handles.pmnuCellFColor,'Enable','off');
   set(handles.pmnuCellVColor,'Enable','off');
   set(handles.pmnuClrmap,'Enable','off');
   set(handles.rdbtnFColor,'Value',0);
   set(handles.rdbtnVColor,'Value',0);
   
   guidata(hObject, handles);
end



function checkbox1_Callback(hObject,eventdata)


% --- Executes on button press in chkCellText.
function chkCellText_Callback(hObject, eventdata, handles)
% hObject    handle to chkCellText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkCellText
if (get(hObject,'Value') == get(hObject,'Max'))
   % Checkbox is checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuCellText,'Enable','on');
   set(handles.pmnuCellTextColor,'Enable','on');
   set(handles.pmnuCellTextSymb,'Enable','on');
   guidata(hObject, handles);

else
   % Checkbox is not checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuCellText,'Enable','off');
   set(handles.pmnuCellTextColor,'Enable','off');
   set(handles.pmnuCellTextSymb,'Enable','off');
   guidata(hObject, handles);
end

% --- Executes on button press in chkMembFract.
function chkMembFract_Callback(hObject, eventdata, handles)
% hObject    handle to chkMembFract (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkMembFract
if (get(hObject,'Value') == get(hObject,'Max'))
   % Checkbox is checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuMembFract,'Enable','on');
   set(handles.pmnuMembFractC,'Enable','on');
else
   % Checkbox is not checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuMembFract,'Enable','off');
   set(handles.pmnuMembFractC,'Enable','off');
end
guidata(hObject, handles);

% --- Executes on button press in chkCellSpikes.
function chkCellSpikes_Callback(hObject, eventdata, handles)
% hObject    handle to chkCellSpikes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkCellSpikes
if (get(hObject,'Value') == get(hObject,'Max'))
   % Checkbox is checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuCellSpikes,'Enable','on');
   set(handles.pmnuSpikesHght,'Enable','on');
   %set(handles.pmnuSpikesColor,'Enable','on');
  
else
   % Checkbox is not checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuCellSpikes,'Enable','off');
   set(handles.pmnuSpikesHght,'Enable','off');
   %set(handles.pmnuSpikesColor,'Enable','off');
end
guidata(hObject, handles);

% --- Executes on button press in chkProtArea.
function chkProtArea_Callback(hObject, eventdata, handles)
% hObject    handle to chkProtArea (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkProtArea
if (get(hObject,'Value') == get(hObject,'Max'))
   % Checkbox is checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuProtArea,'Enable','on');
   set(handles.pmnuProtColor,'Enable','on');
else
   % Checkbox is not checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuProtArea,'Enable','off');
   set(handles.pmnuProtColor,'Enable','off');
end
guidata(hObject, handles);

% --- Executes on button press in chkMembProc.
function chkMembProc_Callback(hObject, eventdata, handles)
% hObject    handle to chkMembProc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkMembProc
if (get(hObject,'Value') == get(hObject,'Max'))
   % Checkbox is checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuMembProc,'Enable','on');
   set(handles.pmnuMembProcSymb,'Enable','on');
   set(handles.pmnuMembProcColor,'Enable','on');
else
   % Checkbox is not checked-take appropriate action
   handles.output = hObject;
   set(handles.pmnuMembProc,'Enable','off');
   set(handles.pmnuMembProcSymb,'Enable','off');
   set(handles.pmnuMembProcColor,'Enable','off');   
end
guidata(hObject, handles);

% --- Executes on button press in btnLoadData.
function btnLoadData_Callback(hObject, eventdata, handles)
% hObject    handle to btnLoadData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename1,filepath1]=uigetfile({'*.csv','All Files'},...
  'Please select data file');
  if ~isequal(filename1,0)
      %cd(filepath1);
      loadeddata=importdata(strcat(filepath1,filename1),',');
      labels=loadeddata.textdata(2:size(loadeddata.textdata,1),1);
      features=loadeddata.textdata(1,2:size(loadeddata.textdata,2));
      handles.pmnulength = features;
      data= loadeddata.data;
      if isempty(labels) && size(data,2)>length(features)%labels are numericals
          labels=num2str(data(:,1));
          data= loadeddata.data(:,2:size(data,2));
      end
      
      assignin('base', 'data', data)
      assignin('base', 'features',features);
      assignin('base', 'labels',labels);
      
    handles.output = hObject;
    features=['Select feature',features];
    
    
    set(handles.pmnuLength, 'String', features);
    set(handles.pmnuCellWidth, 'String', features);
    set(handles.pmnuCellText, 'String', features);
    set(handles.pmnuCellVColor, 'String', features);
    set(handles.pmnuNucVColor, 'String', features);
    set(handles.pmnuPNucVColor, 'String', features);
    set(handles.pmnuCellSpikes, 'String', features);
    set(handles.pmnuSpikesHght, 'String', features);
    set(handles.pmnuProtArea, 'String', features);
    set(handles.pmnuMembFract, 'String', features);
    set(handles.pmnuMembProc, 'String', features);
    set(handles.pmnuMembProc, 'String', features);
    
    set(handles.pmnuNucLength, 'String', features);
    set(handles.pmnuNucWidth, 'String', features);
    
    set(handles.pmnuPNucLength, 'String', features);
    set(handles.pmnuPNucWidth, 'String', features);
    
    set(handles.pmnuNucText, 'String', features);
    set(handles.pmnuNucNumb, 'String', features);
    set(handles.pmnuEllipse, 'String', features);
    set(handles.pmnuRect, 'String', features);
    set(handles.pmnuLine, 'String', features);
    
    
    matlab_colors={'Select color';'Black';'Yellow';'Magenta';'Cyan';'Red';'Green';'Blue';'White'};
    set(handles.pmnuCellTextColor, 'String', matlab_colors);
    set(handles.pmnuNucTextColor, 'String', matlab_colors);
    set(handles.pmnuNBordColor, 'String', matlab_colors);
    set(handles.pmnuPNBordColor, 'String', matlab_colors);
    set(handles.pmnuCBordColor, 'String', matlab_colors);
    set(handles.pmnuEllipseColor, 'String', matlab_colors);
    set(handles.pmnuRectColor, 'String', matlab_colors);
    set(handles.pmnuLineColor, 'String', matlab_colors);
    set(handles.pmnuMembProcColor, 'String', matlab_colors);
    set(handles.pmnuProtColor, 'String', matlab_colors);
    set(handles.pmnuCellFColor, 'String', matlab_colors);
    set(handles.pmnuNucFColor, 'String', matlab_colors);
    set(handles.pmnuPNucFColor, 'String', matlab_colors);
    set(handles.pmnuNucNumC, 'String', matlab_colors);
    set(handles.pmnuMembFractC, 'String', matlab_colors);
    
    %Set all default colors to black
    set(handles.pmnuCellTextColor, 'Value', 2);
    set(handles.pmnuNucTextColor, 'Value', 2);
    set(handles.pmnuNBordColor, 'Value', 2);
    set(handles.pmnuPNBordColor, 'Value', 2);
    set(handles.pmnuCBordColor, 'Value', 2);
    set(handles.pmnuEllipseColor, 'Value', 2);
    set(handles.pmnuRectColor, 'Value', 2);
    set(handles.pmnuLineColor, 'Value', 2);
    set(handles.pmnuMembProcColor, 'Value', 2);
    set(handles.pmnuProtColor, 'Value', 9);
    set(handles.pmnuCellFColor, 'Value', 8);
    set(handles.pmnuNucFColor, 'Value', 6);
    set(handles.pmnuNucNumC, 'Value', 2);
    set(handles.pmnuMembFractC, 'Value', 2);
    
    
    matlab_symbols={'Select symbol';'+';'o';'*';'.';'x';'Diamond';'Square';'Star'};
    set(handles.pmnuCellTextSymb, 'String', matlab_symbols);
    set(handles.pmnuNucTextSymb, 'String', matlab_symbols);
    set(handles.pmnuMembProcSymb, 'String', matlab_symbols);
    
    %Default values for symbols
    set(handles.pmnuNucTextSymb, 'value',5);
    set(handles.pmnuCellTextSymb, 'value',6);
    set(handles.pmnuMembProcSymb, 'value',3);
    
    
    clrmp={'Select colormap';'reds';'blues';'greens';'purples';'greys';'yellow to red';'yellow to green';'yellow to blue';'green to blue';'blue to red'};
    set(handles.pmnuClrmap, 'String', clrmp);
    set(handles.pmnuNucClrmap, 'String', clrmp);
    set(handles.pmnuPNucClrmap, 'String', clrmp);
    
    set(handles.pmnuClrmap, 'value', 2);
    set(handles.pmnuNucClrmap, 'value', 3);
    set(handles.pmnuPNucClrmap, 'value', 4);
    guidata(hObject, handles);

  end
  


% --- Executes on button press in pbtnPlot.
function pbtnPlot_Callback(hObject, eventdata, handles)
% hObject    handle to pbtnPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.output = hObject;
cLengthidx=get(handles.pmnuLength,'value');
cWidthidx=get(handles.pmnuCellWidth,'value');
cbcoloridx=get(handles.pmnuCBordColor,'value');
%we need to assign default values for colors and symbols

if strcmpi(get(handles.pmnuCellText,'Enable'),'on')
    cTextidx=get(handles.pmnuCellText,'value');
    cTextSymbidx=get(handles.pmnuCellTextSymb,'value');
    cTextCidx=get(handles.pmnuCellTextColor,'value');
else
    cTextidx=1;
    cTextSymbidx=1;
    cTextCidx=1;
end

if strcmpi(get(handles.pmnuCellFColor,'Enable'),'on')
    cFColoridx=get(handles.pmnuCellFColor,'value');
else
    cFColoridx=1;
end

if strcmpi(get(handles.pmnuCellVColor,'Enable'),'on') 
    cVColoridx=get(handles.pmnuCellVColor,'value');
    cVColormapidx=get(handles.pmnuClrmap,'value');
else
    cVColoridx=1;
    cVColormapidx=1;
end

if strcmpi(get(handles.pmnuCellSpikes,'Enable'),'on') 
    cSpikesidx=get(handles.pmnuCellSpikes,'value');
    cSpikesHghidx=get(handles.pmnuSpikesHght, 'value');
    %cSpikesCidx=get(handles.pmnuSpikesColor,'value');
else
    cSpikesidx=1;
    cSpikesHghidx=1;
    %cSpikesCidx=1;
end


if strcmpi(get(handles.pmnuProtArea, 'Enable'),'on')
    Protidx=get(handles.pmnuProtArea,'value');
    ProtCidx=get(handles.pmnuProtColor, 'value');
else
    Protidx=1;
    ProtCidx=1;
end


if strcmpi(get(handles.pmnuMembFract,'Enable'),'on')
    MembFidx=get(handles.pmnuMembFract,'value');
    MembFCidx=get(handles.pmnuMembFractC,'value');
else
    MembFidx=1;
    MembFCidx=1;
end

if strcmpi(get(handles.pmnuMembProc, 'Enable'),'on')
    MembPidx=get(handles.pmnuMembProc,'value');
    MembPCidx=get(handles.pmnuMembProcColor,'value');
    MembPSidx=get(handles.pmnuMembProcSymb, 'value');
else
    MembPidx=1;
    MembPCidx=1;
    MembPSidx=1;
end

if strcmpi(get(handles.pmnuNucLength,'Enable'),'on')
    nucLengthidx=get(handles.pmnuNucLength, 'value');
    nucWidthidx=get(handles.pmnuNucWidth, 'value');
    nbcoloridx=get(handles.pmnuNBordColor, 'value');
    
else
    nucLengthidx=1;
    nucWidthidx=1;
    nbcoloridx=1;
end

%outer (perinuclear) ellipse  dimensions
if strcmpi(get(handles.pmnuPNucLength,'Enable'),'on')
    pnucLengthidx=get(handles.pmnuPNucLength, 'value');
    pnucWidthidx=get(handles.pmnuPNucWidth, 'value');
    pnbcoloridx=get(handles.pmnuPNBordColor, 'value');
    
else
    pnucLengthidx=1;
    pnucWidthidx=1;
    pnbcoloridx=1;
end

if strcmpi(get(handles.pmnuNucText,'Enable'),'on')
    nucTextidx=get(handles.pmnuNucText, 'value');
    nucTextCidx=get(handles.pmnuNucTextColor, 'value');
    nucTextSidx=get(handles.pmnuNucTextSymb, 'value');
else
    nucTextidx=1;
    nucTextCidx=1;
    nucTextSidx=1;
end

% Nuc Fcolor
if strcmpi(get(handles.pmnuNucFColor,'Enable'),'on')
    NucFColoridx=get(handles.pmnuNucFColor, 'value');
else
    NucFColoridx=1;
end

% Nuc Vcolor
if strcmpi(get(handles.pmnuNucVColor,'Enable'),'on')
    NucVColoridx=get(handles.pmnuNucVColor, 'value');
    NucVColormapidx=get(handles.pmnuNucClrmap, 'value');
else
    NucVColoridx=1;
    NucVColormapidx=1;
end 


% PeriNuc Fcolor
if strcmpi(get(handles.pmnuPNucFColor,'Enable'),'on')
    PNucFColoridx=get(handles.pmnuPNucFColor, 'value');
else
    PNucFColoridx=1;
end

% PeriNuc Vcolor
if strcmpi(get(handles.pmnuPNucVColor,'Enable'),'on')
    PNucVColoridx=get(handles.pmnuPNucVColor, 'value');
    PNucVColormapidx=get(handles.pmnuPNucClrmap, 'value');
else
    PNucVColoridx=1;
    PNucVColormapidx=1;
end 

    
if strcmpi(get(handles.pmnuNucNumb,'Enable'),'on')
    nucNumbidx=get(handles.pmnuNucNumb, 'value');
    nucNumbCidx=get(handles.pmnuNucNumC, 'value');
else
    nucNumbidx=1;
    nucNumbCidx=1;
end 

if strcmpi(get(handles.pmnuEllipse,'Enable'),'on')
    orgEllipseidx=get(handles.pmnuEllipse, 'value');
    orgEllipseCidx=get(handles.pmnuEllipseColor, 'value');
else
    orgEllipseidx=1;
    orgEllipseCidx=1;
end 

if strcmpi(get(handles.pmnuRect,'Enable'),'on')
     orgRectidx=get(handles.pmnuRect, 'value');
    orgRectCidx=get(handles.pmnuRectColor, 'value');
else
    orgRectidx=1;
    orgRectCidx=1;
end 


if strcmpi(get(handles.pmnuLine,'Enable'),'on')
    orgLineidx=get(handles.pmnuLine, 'value');
    orgLineCidx=get(handles.pmnuLineColor, 'value');
else
    orgLineidx=1;
    orgLineCidx=1;
end


   in_var=[cLengthidx,cWidthidx,cbcoloridx,cTextidx,cTextSymbidx,cTextCidx,...
   cFColoridx,cVColoridx,cSpikesidx,cSpikesHghidx,Protidx,ProtCidx,MembFidx,...
     MembPidx,MembPSidx,MembPCidx,nucLengthidx,nucWidthidx,nbcoloridx,nucTextidx,...
     nucTextCidx,nucTextSidx,NucFColoridx,NucVColoridx,nucNumbidx,nucNumbCidx,...
     orgEllipseidx,orgEllipseCidx,orgRectidx,orgRectCidx,orgLineidx, orgLineCidx,...
     MembFCidx,cVColormapidx,NucVColormapidx,pnucLengthidx,pnucWidthidx,pnbcoloridx,...
     PNucFColoridx,PNucVColoridx,PNucVColormapidx]';
 in_varh={'cLengthidx','cWidthidx','cbcoloridx','cTextidx','cTextSymbidx','cTextCidx',...
   'cFColoridx','cVColoridx','cSpikesidx','cSpikesHghidx','Protidx','ProtCidx','MembFidx',...
     'MembPidx','MembPCidx','MembPSidx','nucLengthidx','nucWidthidx','nbcoloridx','nucTextidx',...
     'nucTextCidx','nucTextSidx','NucFColoridx','NucVColoridx','nucNumbidx','nucNumbCidx',...
     'orgEllipseidx','orgEllipseCidx','orgRectidx','orgRectCidx','orgLineidx', 'orgLineCidx',...
     'MembFCidx','ClrMapidx','NucClrMapidx','pnucLengthidx','pnucWidthidx','pnbcoloridx',...
     'PNucFColoridx','PNucVColoridx','PNucVColormapidx'};
 in_var=in_var-1;
 %Build command
 
 matlab_colors_lnspec={'-k';'-y';'-m';'-c';'-r';'-g';'-b';'-w'};
 matlab_colors_short={'k';'y';'m';'c';'r';'g';'b';'w'};
 matlab_symbols_short={'+';'o';'*';'.';'x';'d';'s';'p'};
clrmp={'reds';'blues';'greens';'purples';'greys';'yellow to red';'yellow to green';'yellow to blue';'green to blue';'blue to red'};
 matlab_colors_rgb=[0 0 0; 1 1 0; 1 0 1; 0 1 1; 1 0 0; 0 1 0; 0 0 1; 0 0 0];
 cmd_str='PhenoPlot(';
 
 %Cell ellipse
 if (in_var(1)>0 && in_var(2)>0)
    cmd_str=strcat(cmd_str,'{data(:,',num2str(in_var(1)),'),data(:,',num2str(in_var(2)),')');
    
    %Cell border color
    if (in_var(3)>0)
        cmd_str=strcat(cmd_str,',''',matlab_colors_lnspec(in_var(3)),'''');
    end
    
    %Add legend label
    cmd_str=strcat(cmd_str,',''legend'',features(',num2str(in_var(1)),'),features(',num2str(in_var(2)),')}');
 else
     msgbox('Please select features for the main ellipse length and width','Error');
     error('Please select features for the main ellipse length and width');
 end
 
 
 %Cell texture
 if (in_var(4)>0)
     cmd_str=strcat(cmd_str,',''CellTexture'',{data(:,',num2str(in_var(4)),'),''left''');
     if in_var(5)>0 
         cmd_str=strcat(cmd_str,',''',matlab_symbols_short(in_var(5)));
     else
         cmd_str=strcat(cmd_str,',''x');
     end
     if in_var(6)>0
        cmd_str=strcat(cmd_str,matlab_colors_short(in_var(6)),'''');
     else
         cmd_str=strcat(cmd_str,'k''');
     end    
    
    %Add legend label
    cmd_str=strcat(cmd_str,',''legend'',features(',num2str(in_var(4)),')}');
 end
 
 %Cell intensity
 if (in_var(7)>0 | in_var(8)>0)
    if (in_var(7)>0)
        d1=num2str(matlab_colors_rgb(in_var(7),1));
        d2=num2str(matlab_colors_rgb(in_var(7),2));
        d3=num2str(matlab_colors_rgb(in_var(7),3));
       cmd_str=strcat(cmd_str,',''CellIntensity'',{[',d1,',',d2,',',d3,']}'); 
    elseif(in_var(8)>0)
       cmd_str=strcat(cmd_str,',''CellIntensity'',{data(:,',num2str(in_var(8)),')');
       cmd_str=strcat(cmd_str,',''',clrmp(in_var(34)),'''');
        %Add legend label
        cmd_str=strcat(cmd_str,',''legend'',features(',num2str(in_var(8)),')}');
    end
 end
 
 %Spikes
  if (in_var(9)>0)
      cmd_str=strcat(cmd_str,',''Spikes'',{data(:,',num2str(in_var(9)),')');
      if (in_var(10)>0)
          cmd_str=strcat(cmd_str,',data(:,',num2str(in_var(10)),')');
          %Add legend label
          cmd_str=strcat(cmd_str,',''legend'',features(',num2str(in_var(9)),'),features(',num2str(in_var(10)),')}');
      else
          cmd_str=strcat(cmd_str,',''legend'',features(',num2str(in_var(9)),')}');
      end
  end

  %Protrusion
  if (in_var(11)>0)
      cmd_str=strcat(cmd_str,',''RelativeProtArea'',{data(:,',num2str(in_var(11)),')');
      if (in_var(12)>0)
          cmd_str=strcat(cmd_str,',''',matlab_colors_short(in_var(12)),'''');
      end
      %Add legend label
      cmd_str=strcat(cmd_str,',''legend'',features(',num2str(in_var(11)),')}');
  end
 
 
  %Thick membrane
  if (in_var(13)>0)
      cmd_str=strcat(cmd_str,',''ThickMembraneFraction'',{data(:,',num2str(in_var(13)),')');
      if (in_var(33)>0)
          cmd_str=strcat(cmd_str,',''',matlab_colors_lnspec(in_var(33)),'''');
      end
      %Add legend label
      cmd_str=strcat(cmd_str,',''legend'',features(',num2str(in_var(13)),')}');
  end

   
 
  %Membrane process
  if (in_var(14)>0)
      cmd_str=strcat(cmd_str,',''MembraneProcess'',{data(:,',num2str(in_var(14)),')');
      if (in_var(15)>0)
          cmd_str=strcat(cmd_str,',''',matlab_symbols_short(in_var(15)));
      else
          cmd_str=strcat(cmd_str,',''o');
      end
      if (in_var(16)>0)
          cmd_str=strcat(cmd_str,matlab_colors_short(in_var(16)),'''');
      else
          cmd_str=strcat(cmd_str,'r''');
      end
      %add legend label
      cmd_str=strcat(cmd_str,',''legend'',features(',num2str(in_var(14)),')}');
  end
  
  %Nucleus ellipse
  nuc_check=in_var(17)>0 && in_var(18);
 if (nuc_check)
    cmd_str=strcat(cmd_str,',''NucEllipse'',{data(:,',num2str(in_var(17)),'),data(:,',num2str(in_var(18)),')');
    %Nuclues border color
    if ( in_var(19)>0)
        cmd_str=strcat(cmd_str,',''',matlab_colors_lnspec(in_var(19)),'''');
    else
        cmd_str=strcat(cmd_str,',''-k''');
    end
    %Add legend label
    cmd_str=strcat(cmd_str,',''legend'',features(',num2str(in_var(17)),'),features(',num2str(in_var(18)),')}');
 elseif (in_var(17)>0 || in_var(18)>0)
     msgbox('Please select features for inner sub-ellipse length and width','Error');
     error('Please select features for inner sub-ellipse length and width');
 end
 

 
 %Nucleus texture
 if ( nuc_check>0 && in_var(20)>0)
     cmd_str=strcat(cmd_str,',''NucTexture'',{data(:,',num2str(in_var(20)),'),''left''');
     if in_var(22)>0 
         cmd_str=strcat(cmd_str,',''',matlab_symbols_short(in_var(22)));
     else
         cmd_str=strcat(cmd_str,',''x');
     end
     if in_var(21)>0
        cmd_str=strcat(cmd_str,matlab_colors_short(in_var(21)),'''');
     else
         cmd_str=strcat(cmd_str,'k''');
     end
     %add legend label
      cmd_str=strcat(cmd_str,',''legend'',features(',num2str(in_var(20)),')}');
 elseif (nuc_check==0 && in_var(20)>0)
     msgbox('Please select features for inner sub-ellipse texture','Error');
     error('Please select features for inner sub-ellipse texture');
 end
 
  %Nucleus intensity
 if (nuc_check>0 && (in_var(23)>0 || in_var(24)>0))
    if (in_var(23)>0)
        d1=num2str(matlab_colors_rgb(in_var(23),1));
        d2=num2str(matlab_colors_rgb(in_var(23),2));
        d3=num2str(matlab_colors_rgb(in_var(23),3));
       cmd_str=strcat(cmd_str,',''NucIntensity'',{[',d1,',',d2,',',d3,']}'); 
    elseif(in_var(24)>0)
       cmd_str=strcat(cmd_str,',''NucIntensity'',{data(:,',num2str(in_var(24)),')');
       cmd_str=strcat(cmd_str,',''',clrmp(in_var(35)),'''');
       %add legend label
      cmd_str=strcat(cmd_str,',''legend'',features(',num2str(in_var(24)),')}');
    end
 elseif (nuc_check==0 && (in_var(23)>0 || in_var(24)>0))   
     msgbox('Please select features for inner sub-ellipse color','Error');
     error('Please select features for inner sub-ellipse color');
 end

 %Nucleus number
 if (nuc_check>0 && in_var(25)>0 )
     if (evalin('base',strcat('max(data(:,',num2str(in_var(25)),'))>1')))
         if (in_var(26)>0)
             cmd_str=strcat(cmd_str,',''NumNuc'',{data(:,',num2str(in_var(25)),'),''-',matlab_colors_short(in_var(26)),'''');
         else
             cmd_str=strcat(cmd_str,',''NumNuc'',{data(:,',num2str(in_var(25)),'),''-k''');
         end
         %add legend label
         cmd_str=strcat(cmd_str,',''legend'',features(',num2str(in_var(25)),')}');
     else
         msgbox('Number of nuclei sub circle take values greater or equal to one','Error');
         error('Number of nuclei sub circle take values greater or equal to one');
     end
 elseif nuc_check==0 && in_var(25)>0
     msgbox('Please select features for sub ellipse length and width','Error');
     error('Please select features for sub ellipse length and width');
 end
 
 %PeriNucleus ellipse
  pnuc_check=in_var(36)>0 && in_var(37);
 if (pnuc_check)
    cmd_str=strcat(cmd_str,',''PeriNucEllipse'',{data(:,',num2str(in_var(36)),'),data(:,',num2str(in_var(37)),')');
    %Nuclues border color
    if ( in_var(38)>0)
        cmd_str=strcat(cmd_str,',''',matlab_colors_lnspec(in_var(38)),'''');
    else
        cmd_str=strcat(cmd_str,',''-k''');
    end
    %Add legend label
    cmd_str=strcat(cmd_str,',''legend'',features(',num2str(in_var(36)),'),features(',num2str(in_var(37)),')}');
 elseif (in_var(36)>0 || in_var(37)>0)
     msgbox('Please select features for outer sub-ellipse length and width','Error');
     error('Please select features for outer sub-ellipse length and width');
 end

 %Perinuclear intensity
 if (pnuc_check>0 && (in_var(39)>0 || in_var(40)>0))
    if (in_var(39)>0)
        d1=num2str(matlab_colors_rgb(in_var(39),1));
        d2=num2str(matlab_colors_rgb(in_var(39),2));
        d3=num2str(matlab_colors_rgb(in_var(39),3));
       cmd_str=strcat(cmd_str,',''PeriNucIntensity'',{[',d1,',',d2,',',d3,']}'); 
    elseif(in_var(40)>0)
       cmd_str=strcat(cmd_str,',''PeriNucIntensity'',{data(:,',num2str(in_var(40)),')');
       cmd_str=strcat(cmd_str,',''',clrmp(in_var(41)),'''');
       %add legend label
      cmd_str=strcat(cmd_str,',''legend'',features(',num2str(in_var(40)),')}');
    end
 elseif (nuc_check==0 && (in_var(39)>0 || in_var(40)>0))   
     msgbox('Please select features for outer sub-ellipse color','Error');
     error('Please select features for outer sub-ellipse color');
 end

 
 %Ellipse organelle
  if (in_var(27)>0 )
    if (in_var(28)>0)
       cmd_str=strcat(cmd_str,',''organelle_ellipse'',{data(:,',num2str(in_var(27)),'),''w'',''',matlab_colors_short(in_var(28)),'''');
    else
       cmd_str=strcat(cmd_str,',''organelle_ellipse'',{data(:,',num2str(in_var(27)),'),''w'',''k''');
    end
    %add legend label
    cmd_str=strcat(cmd_str,',''legend'',features(',num2str(in_var(27)),')}');
  end
 
%Rectangle organelle  
  if (in_var(29)>0 )
    if (in_var(30)>0)
       cmd_str=strcat(cmd_str,',''organelle_rectangle'',{data(:,',num2str(in_var(29)),'),''w'',''',matlab_colors_short(in_var(30)),'''');
    else
       cmd_str=strcat(cmd_str,',''organelle_rectangle'',{data(:,',num2str(in_var(29)),'),''w'',''k''');
    end
    %add legend label
    cmd_str=strcat(cmd_str,',''legend'',features(',num2str(in_var(29)),')}');
  end
 
 %Line organelle 
  if (in_var(31)>0 )
    if (in_var(32)>0)
       cmd_str=strcat(cmd_str,',''organelle_line'',{data(:,',num2str(in_var(31)),'),''w'',''',matlab_colors_short(in_var(32)),'''');
    else
       cmd_str=strcat(cmd_str,',''organelle_line'',{data(:,',num2str(in_var(31)),'),''w'',''k''');
    end
    %add legend label
    cmd_str=strcat(cmd_str,',''legend'',features(',num2str(in_var(31)),')}');
  end
  
  %Legend and annotation colors
  if(evalin('base','~exist(''legend_color'')'))
      legend_color=[.45,.45,.45];
      assignin('base', 'legend_color',legend_color);
  end
  %Normalization
  if (get(handles.chkNorm,'Value')==1)
      cmd_str=strcat(cmd_str,',''Standardize'',1');
  end
  cmd_str=strcat(cmd_str,',''LegendColor'',legend_color');
  
  % End of call
  nfigs1 = get(0,'Children');  
  cmd_str=strcat(cmd_str,',''labels'',labels,''grid'',1)');
  figure
  if ~ischar(cmd_str)
      cmd_str=char(cmd_str);
  end
  evalin('base',cmd_str);
  
  
  %export the legend figure to pdf and display it
  if (get(handles.chkPDF,'Value')==1)
      legfile=get(handles.editLegFile, 'string');
      legendfilename=strcat(legfile,'.pdf');
      export_fig(legendfilename,'-pdf')
 
      %save the figure to pdf and display
      nfigs2 = get(0,'Children'); 
      newfig=nfigs2(~(ismember(nfigs2,nfigs1)));
      %mainfig=get(min(newfig),'Children');
      set(0, 'currentfigure', min(newfig));
      maximize
      mainfile=get(handles.editFigFile, 'string');
      mainfilename=strcat(mainfile,'.pdf');
      export_fig(mainfilename,'-pdf')
      open(legendfilename)
      open(mainfilename)
  end

  



% --- Executes on selection change in pmnulength.
function pmnulength_Callback(hObject, eventdata, handles)
% hObject    handle to pmnulength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnulength contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnulength


% --- Executes during object creation, after setting all properties.
function pmnulength_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnulength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuCellWidth.
function pmnuCellWidth_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuCellWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuCellWidth contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuCellWidth


% --- Executes during object creation, after setting all properties.
function pmnuCellWidth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuCellWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuCellVColor.
function pmnuCellVColor_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuCellVColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuCellVColor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuCellVColor


% --- Executes during object creation, after setting all properties.
function pmnuCellVColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuCellVColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuCellText.
function pmnuCellText_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuCellText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuCellText contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuCellText


% --- Executes during object creation, after setting all properties.
function pmnuCellText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuCellText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuCellSpikes.
function pmnuCellSpikes_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuCellSpikes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuCellSpikes contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuCellSpikes


% --- Executes during object creation, after setting all properties.
function pmnuCellSpikes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuCellSpikes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuProtArea.
function pmnuProtArea_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuProtArea (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuProtArea contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuProtArea


% --- Executes during object creation, after setting all properties.
function pmnuProtArea_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuProtArea (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuMembFract.
function pmnuMembFract_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuMembFract (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuMembFract contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuMembFract


% --- Executes during object creation, after setting all properties.
function pmnuMembFract_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuMembFract (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuMembProc.
function pmnuMembProc_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuMembProc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuMembProc contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuMembProc


% --- Executes during object creation, after setting all properties.
function pmnuMembProc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuMembProc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuEllipse.
function pmnuEllipse_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuEllipse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuEllipse contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuEllipse


% --- Executes during object creation, after setting all properties.
function pmnuEllipse_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuEllipse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuRect.
function pmnuRect_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuRect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuRect contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuRect


% --- Executes during object creation, after setting all properties.
function pmnuRect_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuRect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu20.
function popupmenu20_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu20 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu20


% --- Executes during object creation, after setting all properties.
function popupmenu20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuEllipseColor.
function pmnuEllipseColor_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuEllipseColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuEllipseColor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuEllipseColor


% --- Executes during object creation, after setting all properties.
function pmnuEllipseColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuEllipseColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuNucText.
function pmnuNucText_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuNucText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuNucText contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuNucText


% --- Executes during object creation, after setting all properties.
function pmnuNucText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuNucText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuNucIntensity.
function pmnuNucIntensity_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuNucIntensity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuNucIntensity contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuNucIntensity


% --- Executes during object creation, after setting all properties.
function pmnuNucIntensity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuNucIntensity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuNucNumb.
function pmnuNucNumb_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuNucNumb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuNucNumb contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuNucNumb


% --- Executes during object creation, after setting all properties.
function pmnuNucNumb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuNucNumb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuNucLength.
function pmnuNucLength_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuNucLength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuNucLength contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuNucLength


% --- Executes during object creation, after setting all properties.
function pmnuNucLength_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuNucLength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuNucWidth.
function pmnuNucWidth_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuNucWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuNucWidth contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuNucWidth


% --- Executes during object creation, after setting all properties.
function pmnuNucWidth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuNucWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuNBordColor.
function pmnuNBordColor_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuNBordColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuNBordColor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuNBordColor


% --- Executes during object creation, after setting all properties.
function pmnuNBordColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuNBordColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox26.
function checkbox26_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox26


% --- Executes on selection change in pmnuRectColor.
function pmnuRectColor_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuRectColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuRectColor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuRectColor


% --- Executes during object creation, after setting all properties.
function pmnuRectColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuRectColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuLineColor.
function pmnuLineColor_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuLineColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuLineColor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuLineColor


% --- Executes during object creation, after setting all properties.
function pmnuLineColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuLineColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuLine.
function pmnuLine_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuLine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuLine contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuLine


% --- Executes during object creation, after setting all properties.
function pmnuLine_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuLine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuCBordColor.
function pmnuCBordColor_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuCBordColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuCBordColor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuCBordColor


% --- Executes during object creation, after setting all properties.
function pmnuCBordColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuCBordColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu26.
function popupmenu26_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu26 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu26


% --- Executes during object creation, after setting all properties.
function popupmenu26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu27.
function popupmenu27_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu27 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu27


% --- Executes during object creation, after setting all properties.
function popupmenu27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu28.
function popupmenu28_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu28 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu28


% --- Executes during object creation, after setting all properties.
function popupmenu28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnulength.
function popupmenu39_Callback(hObject, eventdata, handles)
% hObject    handle to pmnulength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnulength contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnulength


% --- Executes during object creation, after setting all properties.
function popupmenu39_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnulength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu40.
function popupmenu40_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu40 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu40


% --- Executes during object creation, after setting all properties.
function popupmenu40_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu42.
function popupmenu42_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu42 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu42


% --- Executes during object creation, after setting all properties.
function popupmenu42_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu43.
function popupmenu43_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu43 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu43


% --- Executes during object creation, after setting all properties.
function popupmenu43_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuLength.
function pmnuLength_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuLength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuLength contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuLength


% --- Executes during object creation, after setting all properties.
function pmnuLength_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuLength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuCellTextSymb.
function pmnuCellTextSymb_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuCellTextSymb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuCellTextSymb contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuCellTextSymb


% --- Executes during object creation, after setting all properties.
function pmnuCellTextSymb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuCellTextSymb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuCellTextColor.
function pmnuCellTextColor_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuCellTextColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuCellTextColor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuCellTextColor


% --- Executes during object creation, after setting all properties.
function pmnuCellTextColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuCellTextColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuNucTextSymb.
function pmnuNucTextSymb_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuNucTextSymb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuNucTextSymb contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuNucTextSymb


% --- Executes during object creation, after setting all properties.
function pmnuNucTextSymb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuNucTextSymb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuNucTextColor.
function pmnuNucTextColor_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuNucTextColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuNucTextColor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuNucTextColor


% --- Executes during object creation, after setting all properties.
function pmnuNucTextColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuNucTextColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuMembProcSymb.
function pmnuMembProcSymb_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuMembProcSymb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuMembProcSymb contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuMembProcSymb


% --- Executes during object creation, after setting all properties.
function pmnuMembProcSymb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuMembProcSymb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuMembProcColor.
function pmnuMembProcColor_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuMembProcColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuMembProcColor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuMembProcColor


% --- Executes during object creation, after setting all properties.
function pmnuMembProcColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuMembProcColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuSpikesHght.
function pmnuSpikesHght_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuSpikesHght (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuSpikesHght contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuSpikesHght


% --- Executes during object creation, after setting all properties.
function pmnuSpikesHght_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuSpikesHght (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuProtColor.
function pmnuProtColor_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuProtColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuProtColor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuProtColor


% --- Executes during object creation, after setting all properties.
function pmnuProtColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuProtColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuNucNumC.
function pmnuNucNumC_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuNucNumC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuNucNumC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuNucNumC


% --- Executes during object creation, after setting all properties.
function pmnuNucNumC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuNucNumC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rdbtnNucFColor.
function rdbtnNucFColor_Callback(hObject, eventdata, handles)
% hObject    handle to rdbtnNucFColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rdbtnNucFColor
if (get(hObject,'Value') == get(hObject,'Max'))
    set(handles.pmnuNucFColor,'Enable','on');
    set(handles.pmnuNucVColor,'Enable','off');
    set(handles.pmnuNucClrmap,'Enable','off');
    set(handles.rdbtnNucVColor,'Value',0);
else
    set(handles.pmnuNucFColor,'Enable','off');
end

   

% --- Executes on button press in rdbtnPNucVColor.
function rdbtnPNucVColor_Callback(hObject, eventdata, handles)
% hObject    handle to rdbtnPNucVColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rdbtnPNucVColor
if (get(hObject,'Value') == get(hObject,'Max'))
    set(handles.pmnuPNucFColor,'Enable','off');
    set(handles.pmnuPNucVColor,'Enable','on');
    set(handles.pmnuPNucClrmap,'Enable','on');
    
    set(handles.rdbtnPNucFColor,'Value',0);
else
    set(handles.pmnuPNucVColor,'Enable','off');
end
    
% --- Executes on selection change in pmnuCellFColor.
function pmnuCellFColor_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuCellFColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuCellFColor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuCellFColor


% --- Executes during object creation, after setting all properties.
function pmnuCellFColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuCellFColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuNucVColor.
function pmnuNucVColor_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuNucVColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuNucVColor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuNucVColor

set(handles.pmnuNucFColor,'Enable','off');
set(handles.pmnuNucVColor,'Enable','on');
set(handles.rdbtnNucFColor,'Value',0);


% --- Executes during object creation, after setting all properties.
function pmnuNucVColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuNucVColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rdbtnNucFColor.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to rdbtnNucFColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rdbtnNucFColor


% --- Executes on button press in rdbtnPNucVColor.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to rdbtnPNucVColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rdbtnPNucVColor


% --- Executes on selection change in pmnuNucFColor.
function pmnuNucFColor_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuNucFColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuNucFColor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuNucFColor


% --- Executes during object creation, after setting all properties.
function pmnuNucFColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuNucFColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rdbtnFColor.
function rdbtnFColor_Callback(hObject, eventdata, handles)
% hObject    handle to rdbtnFColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rdbtnFColor
if (get(hObject,'Value') == get(hObject,'Max'))
    set(handles.pmnuCellFColor,'Enable','on');
    set(handles.pmnuCellVColor,'Enable','off');
    set(handles.pmnuClrmap,'Enable','off');
    set(handles.rdbtnVColor,'Value',0);
else
    set(handles.pmnuCellFColor,'Enable','off');
        
end


% --- Executes on button press in rdbtnVColor.
function rdbtnVColor_Callback(hObject, eventdata, handles)
% hObject    handle to rdbtnVColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rdbtnVColor
if (get(hObject,'Value') == get(hObject,'Max'))
    set(handles.pmnuCellFColor,'Enable','off');
    set(handles.pmnuCellVColor,'Enable','on');
    set(handles.pmnuClrmap,'Enable','on');
    
    set(handles.rdbtnFColor,'Value',0);
else
    set(handles.pmnuCellVColor,'Enable','off');  
    set(handles.pmnuClrmap,'Enable','off');

end


% --- Executes on button press in chknucellipse.
function chknucellipse_Callback(hObject, eventdata, handles)
% hObject    handle to chknucellipse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chknucellipse
if (get(hObject,'Value') == get(hObject,'Max'))
    set(handles.pmnuNucLength,'Enable','on');
    set(handles.pmnuNucWidth,'Enable','on');
    set(handles.pmnuNBordColor,'Enable','on');  
    set(handles.chkNucText,'Enable','on');   
    set(handles.chkNucColor,'Enable','on');  
    set(handles.chkNucNumb,'Enable','on');  
    set(handles.pmnuPNucLength,'Enable','on');
    set(handles.pmnuPNucWidth,'Enable','on');
    set(handles.pmnuPNBordColor,'Enable','on');
    set(handles.chkPNucColor,'Enable','on');
else
    set(handles.pmnuNucLength,'Enable','off');
    set(handles.pmnuNucWidth,'Enable','off');
    set(handles.pmnuNBordColor,'Enable','off');   
    set(handles.pmnuNucText,'Enable','off');   
    set(handles.pmnuNucTextColor,'Enable','off');   
    set(handles.pmnuNucTextSymb,'Enable','off');   
    set(handles.pmnuNucFColor,'Enable','off');  
    set(handles.rdbtnNucFColor,'Enable','off'); 
    set(handles.pmnuNucVColor,'Enable','off');  
    set(handles.rdbtnPNucVColor,'Enable','off'); 
    set(handles.pmnuNucNumb,'Enable','off'); 
    set(handles.pmnuNucNumC,'Enable','off');     
    set(handles.chkNucText,'Enable','off');   
    set(handles.chkNucColor,'Enable','off');  
    set(handles.chkNucNumb,'Enable','off');  
    set(handles.chkNucText,'Value',0);
    set(handles.chkNucColor,'Value',0);
    set(handles.chkNucNumb,'Value',0);
    set(handles.pmnuPNucLength,'Enable','off');
    set(handles.pmnuPNucWidth,'Enable','off');
    set(handles.pmnuPNBordColor,'Enable','off');
    set(handles.chkPNucColor,'Enable','off');
    set(handles.chkPNucColor,'Value',0);
    set(handles.pmnuPNucFColor,'Enable','off');
    set(handles.rdbtnPNucFColor,'Enable','off'); 
    set(handles.pmnuPNucVColor,'Enable','off');  
    set(handles.rdbtnPNucVColor,'Enable','off'); 
end
    


% --- Executes on selection change in pmnuMembFractC.
function pmnuMembFractC_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuMembFractC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuMembFractC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuMembFractC


% --- Executes during object creation, after setting all properties.
function pmnuMembFractC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuMembFractC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuClrmap.
function pmnuClrmap_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuClrmap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuClrmap contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuClrmap


% --- Executes during object creation, after setting all properties.
function pmnuClrmap_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuClrmap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuNucClrmap.
function pmnuNucClrmap_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuNucClrmap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuNucClrmap contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuNucClrmap


% --- Executes during object creation, after setting all properties.
function pmnuNucClrmap_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuNucClrmap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu66.
function popupmenu66_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu66 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu66
uisetcolor

% --- Executes during object creation, after setting all properties.
function popupmenu66_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over popupmenu66.
function popupmenu66_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pbtnLegColor.
function pbtnLegColor_Callback(hObject, eventdata, handles)
% hObject    handle to pbtnLegColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
legend_color=uisetcolor([.45,.45,.45]);
assignin('base', 'legend_color',legend_color);



function editFigFile_Callback(hObject, eventdata, handles)
% hObject    handle to editFigFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editFigFile as text
%        str2double(get(hObject,'String')) returns contents of editFigFile as a double


% --- Executes during object creation, after setting all properties.
function editFigFile_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editFigFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editLegFile_Callback(hObject, eventdata, handles)
% hObject    handle to editLegFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editLegFile as text
%        str2double(get(hObject,'String')) returns contents of editLegFile as a double


% --- Executes during object creation, after setting all properties.
function editLegFile_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editLegFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pbtnLegColor_.
function pbtnLegColor__Callback(hObject, eventdata, handles)
% hObject    handle to pbtnLegColor_ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
legend_color=uisetcolor([.45,.45,.45],'Legend Color');
assignin('base', 'legend_color',legend_color);


% --------------------------------------------------------------------
function data_Callback(hObject, eventdata, handles)
% hObject    handle to data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_5_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_6_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_7_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_8_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_9_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in chkPDF.
function chkPDF_Callback(hObject, eventdata, handles)
% hObject    handle to chkPDF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkPDF


% --- Executes on button press in checkbox40.
function checkbox40_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox40


% --- Executes on selection change in pmnuPNucWidth.
function pmnuPNucWidth_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuPNucWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuPNucWidth contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuPNucWidth


% --- Executes during object creation, after setting all properties.
function pmnuPNucWidth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuPNucWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuPNBordColor.
function pmnuPNBordColor_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuPNBordColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuPNBordColor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuPNBordColor


% --- Executes during object creation, after setting all properties.
function pmnuPNBordColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuPNBordColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuPNucLength.
function pmnuPNucLength_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuPNucLength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuPNucLength contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuPNucLength


% --- Executes during object creation, after setting all properties.
function pmnuPNucLength_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuPNucLength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rdbtnPNucVColor.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to rdbtnPNucVColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rdbtnPNucVColor


% --- Executes on button press in chkPNucColor.
function chkPNucColor_Callback(hObject, eventdata, handles)
% hObject    handle to chkPNucColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkPNucColor
if (get(hObject,'Value') == get(hObject,'Max'))
   % Checkbox is checked-take appropriate action
   handles.output = hObject;
   set(handles.rdbtnPNucFColor,'Enable','on');
   set(handles.rdbtnPNucVColor,'Enable','on');
   
   guidata(hObject, handles);

else
   % Checkbox is not checked-take appropriate action
   handles.output = hObject;
   
   set(handles.rdbtnPNucFColor,'Enable','off');
   set(handles.rdbtnPNucVColor,'Enable','off');
   set(handles.pmnuPNucFColor,'Enable','off');
   set(handles.pmnuPNucVColor,'Enable','off');
   set(handles.pmnuPNucClrmap,'Enable','off');
   
   set(handles.rdbtnPNucFColor,'Value',0);
   set(handles.rdbtnPNucVColor,'Value',0);
   
   guidata(hObject, handles);
end


% --- Executes on selection change in pmnuPNucVColor.
function pmnuPNucVColor_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuPNucVColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuPNucVColor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuPNucVColor


% --- Executes during object creation, after setting all properties.
function pmnuPNucVColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuPNucVColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rdbtnPNucFColor.
function rdbtnPNucFColor_Callback(hObject, eventdata, handles)
% hObject    handle to rdbtnPNucFColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rdbtnPNucFColor
if (get(hObject,'Value') == get(hObject,'Max'))
    set(handles.pmnuPNucFColor,'Enable','on');
    set(handles.pmnuPNucVColor,'Enable','off');
    set(handles.pmnuPNucClrmap,'Enable','off');
    set(handles.rdbtnPNucVColor,'Value',0);
else
    set(handles.pmnuPNucFColor,'Enable','off');
end

% --- Executes on selection change in pmnuPNucFColor.
function pmnuPNucFColor_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuPNucFColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuPNucFColor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuPNucFColor


% --- Executes during object creation, after setting all properties.
function pmnuPNucFColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuPNucFColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pmnuPNucClrmap.
function pmnuPNucClrmap_Callback(hObject, eventdata, handles)
% hObject    handle to pmnuPNucClrmap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmnuPNucClrmap contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmnuPNucClrmap


% --- Executes during object creation, after setting all properties.
function pmnuPNucClrmap_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmnuPNucClrmap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rdbtnNucVColor.
function rdbtnNucVColor_Callback(hObject, eventdata, handles)
% hObject    handle to rdbtnNucVColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rdbtnNucVColor
if (get(hObject,'Value') == get(hObject,'Max'))
    set(handles.pmnuNucFColor,'Enable','off');
    set(handles.pmnuNucVColor,'Enable','on');
    set(handles.pmnuNucClrmap,'Enable','on');
    
    set(handles.rdbtnNucFColor,'Value',0);
else
    set(handles.pmnuNucVColor,'Enable','off');
end
