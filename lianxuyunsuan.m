function varargout = lianxuyunsuan(varargin)
% LIANXUYUNSUAN M-file for lianxuyunsuan.fig
%      LIANXUYUNSUAN, by itself, creates a new LIANXUYUNSUAN or raises the existing
%      singleton*.
%
%      H = LIANXUYUNSUAN returns the handle to a new LIANXUYUNSUAN or the handle to
%      the existing singleton*.
%
%      LIANXUYUNSUAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LIANXUYUNSUAN.M with the given input arguments.
%
%      LIANXUYUNSUAN('Property','Value',...) creates a new LIANXUYUNSUAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lianxuyunsuan_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lianxuyunsuan_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help lianxuyunsuan

% Last Modified by GUIDE v2.5 15-Dec-2018 15:17:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lianxuyunsuan_OpeningFcn, ...
                   'gui_OutputFcn',  @lianxuyunsuan_OutputFcn, ...
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

% --- Executes just before lianxuyunsuan is made visible.
function lianxuyunsuan_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lianxuyunsuan (see VARARGIN)

% Choose default command line output for lianxuyunsuan
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lianxuyunsuan wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = lianxuyunsuan_OutputFcn(hObject, eventdata, handles) 
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

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edita1_Callback(hObject, eventdata, handles)
% hObject    handle to edita1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edita1 as text
%        str2double(get(hObject,'String')) returns contents of edita1 as a double

% --- Executes during object creation, after setting all properties.
function edita1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edita1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function editb1_Callback(hObject, eventdata, handles)
% hObject    handle to editb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editb1 as text
%        str2double(get(hObject,'String')) returns contents of editb1 as a double

% --- Executes during object creation, after setting all properties.
function editb1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2

% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edita2_Callback(hObject, eventdata, handles)
% hObject    handle to edita2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edita2 as text
%        str2double(get(hObject,'String')) returns contents of edita2 as a double

% --- Executes during object creation, after setting all properties.
function edita2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edita2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.

if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function editb2_Callback(hObject, eventdata, handles)
% hObject    handle to editb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editb2 as text
%        str2double(get(hObject,'String')) returns contents of editb2 as a double

% --- Executes during object creation, after setting all properties.
function editb2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double

% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
%set(gcbo,'String','-10:0.001:10');
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3

% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

% 绘制X1
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global t;
global flag1;
flag1=1;
a = str2double(get(handles.edita1,'String'));
b = str2double(get(handles.editb1,'String'));
t=eval(get(handles.edit5,'String'));
choose1 = get(handles.popupmenu1,'value');
min=t([1]);
max=t([length(t)]);
guidata(hObject, handles);
switch choose1
    case 1
        if (isempty(a)||isempty(b))
            msgbox('input error','warn','warn');
            return;   
        end
        x=a*sin(b*t);
    case 2
        if (isempty(a)||isempty(b))
            msgbox('input error','warn','warn');
            return;   
        end
        x=a*cos(b*t);
    case 3
        if (isempty(a)||isempty(b))
            msgbox('input error','warn','warn');
            return;   
        end        
        x=a*exp(b*t);
    case 4
        if (isempty(a)||isempty(b))
            msgbox('input error','warn','warn');
            return;   
        end        
        x=a*t+b;
    case 5
        x=heaviside(t);
        flag1=0;
    case 6
        Str=get(handles.edit11,'String');
        newStr1=strrep(Str,'u','heaviside');%判断阶跃函数的情况
        newStr2=strrep(newStr1,'*','.*');%为了界面友好，把需要输入点乘的都用乘代替
        newStr3=strrep(newStr2,'/','./');%把需要输入点除的用除代替
        newStr=strrep(newStr3,'^','.^');%把需要输入点乘方的用乘方代替
        x=eval(newStr);     
end
axes(handles.axes1);
plot(t,x);
grid on
if flag1==0
    axis([min max -0.5 1.5])
end
% 绘制X2
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y;
global t;
global flag2;
flag2=1;
a = str2double(get(handles.edita2,'String'));
b = str2double(get(handles.editb2,'String'));
t=eval(get(handles.edit5,'String'));
choose2 = get(handles.popupmenu2,'value');
guidata(hObject, handles);
min=t([1]);
max=t([length(t)]);

switch choose2
    case 1
        if (isempty(a)||isempty(b))
            msgbox('input error','warn','warn');
            return;   
        end
        y=a*sin(b*t);
    case 2
        if (isempty(a)||isempty(b))
            msgbox('input error','warn','warn');
            return;   
        end        
        y=a*cos(b*t);
    case 3
        if (isempty(a)||isempty(b))
            msgbox('input error','warn','warn');
            return;   
        end        
        y=a*exp(b*t);
    case 4
        if (isempty(a)||isempty(b))
            msgbox('input error','warn','warn');
            return;   
        end        
        y=a*t+b;
    case 5
        y=heaviside(t);
        flag2=0;
    case 6
        Str=get(handles.edit12,'String');
        newStr1=strrep(Str,'u','heaviside');%判断阶跃函数的情况
        newStr2=strrep(newStr1,'*','.*');%为了界面友好，把需要输入点乘的都用乘代替
        newStr3=strrep(newStr2,'/','./');%把需要输入点除的用除代替
        newStr=strrep(newStr3,'^','.^');%把需要输入点乘方的用乘方代替
        y=eval(newStr);
end
axes(handles.axes2);
plot(t,y);
grid on
if flag2==0
    axis([min max -0.5 1.5])
end

% 绘制运算后的图形
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global y;
global t;
global flag1;
global flag2;
t=eval(get(handles.edit5,'String'));
min=t([1]);
max=t([length(t)]);
if isempty(x)
    msgbox('select x1 first','warn','warn');
    return
end
if isempty(y)
     msgbox('select x2 first ','warn','warn');
    return
end
choose = get(handles.popupmenu3,'value');
switch choose
    case 1
        f=x+y;%加法
    case 2
        f=x.*y;%乘法
end
axes(handles.axes3);
plot(t,f);
if (flag1+flag2)==0
    axis([min max -0.5 2.5]);
end
grid on
% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4

% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

% 绘制X
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t;
global flag;
global Ft;
flag=1;
a = str2num(get(handles.edita3,'String'));
b = str2num(get(handles.editb3,'String'));
t=eval(get(handles.edit5,'String'));
choice = get(handles.popupmenu4,'value');
guidata(hObject, handles);
min=t([1]);
max=t([length(t)]);
switch choice
    case 1
        if (isempty(a)||isempty(b))
            msgbox('input error','warn','warn');
            return;   
        end
        Ft=a*sin(b*t);
    case 2
        if (isempty(a)||isempty(b))
            msgbox('input error','warn','warn');
            return;   
        end
        Ft=a*cos(b*t);
    case 3
        if (isempty(a)||isempty(b))
            msgbox('input error','warn','warn');
            return;   
        end
        Ft=a*exp(b*t);
    case 4
        if (isempty(a)||isempty(b))
            msgbox('input error','warn','warn');
            return;   
        end
        Ft=a*t+b;
    case 5
        Ft=heaviside(t);
        flag=0;
    case 6
        Str=get(handles.edit13,'String');
        newStr1=strrep(Str,'u','heaviside');%判断阶跃函数的情况
        newStr2=strrep(newStr1,'*','.*');%为了界面友好，把需要输入点乘的都用乘代替
        newStr3=strrep(newStr2,'/','./');%把需要输入点除的用除代替
        newStr=strrep(newStr3,'^','.^');%把需要输入点乘方的用乘方代替
        Ft=eval(newStr);
end
axes(handles.axes4);
plot(t,Ft);
grid on
if flag==0
    axis([min max -0.5 1.5])
end

function edita3_Callback(hObject, eventdata, handles)
% hObject    handle to edita3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edita3 as text
%        str2double(get(hObject,'String')) returns contents of edita3 as a double

% --- Executes during object creation, after setting all properties.
function edita3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edita3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function editb3_Callback(hObject, eventdata, handles)
% hObject    handle to editb3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editb3 as text
%        str2double(get(hObject,'String')) returns contents of editb3 as a double

% --- Executes during object creation, after setting all properties.
function editb3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editb3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edit_yiwei_Callback(hObject, eventdata, handles)
% hObject    handle to edit_yiwei (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_yiwei as text
%        str2double(get(hObject,'String')) returns contents of edit_yiwei as a double

% --- Executes during object creation, after setting all properties.
function edit_yiwei_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_yiwei (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1

% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2

% --- Executes on button press in pushbutton_yiwei.
function pushbutton_yiwei_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_yiwei (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t;
global Ft;
global flag;
N = str2num(get(handles.edit_yiwei,'String'));
if (isempty(N))
     msgbox('input error','warn','warn');
     return;   
end
guidata(hObject, handles);
t=eval(get(handles.edit5,'String'));
choice_yiwei = get(handles.popupmenu_yiwei,'value');
min=t([1]);
max=t([length(t)]);
if isempty(Ft)
     msgbox('select x first','warn','warn');
    return
end
switch choice_yiwei
    case 1
        t=t-N;
    case 2
        t=t+N;
end
axes(handles.axes5);
plot(t,Ft);
axis([min-N max+N -20 20])
axis 'auto y'
grid on
if flag==0
    axis([min max -0.5 1.5])
end


% --- Executes on selection change in popupmenu_yiwei.
function popupmenu_yiwei_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu_yiwei (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu_yiwei contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu_yiwei

% --- Executes during object creation, after setting all properties.
function popupmenu_yiwei_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu_yiwei (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double

% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edit_scale_Callback(hObject, eventdata, handles)
% hObject    handle to edit_scale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_scale as text
%        str2double(get(hObject,'String')) returns contents of edit_scale as a double

% --- Executes during object creation, after setting all properties.
function edit_scale_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_scale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

% --- Executes on button press in pushbutton_scale.
function pushbutton_scale_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_scale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t;
global Ft;
global flag;
m = str2num(get(handles.edit_scale,'String'));
if (isempty(m))
     msgbox('input error','warn','warn');
     return;   
end
guidata(hObject, handles);
t=eval(get(handles.edit5,'String'));
choice_scale = get(handles.popupmenu_scale,'value');
min=t([1]);
max=t([length(t)]);
if isempty(Ft)
      msgbox('select x first','warn','warn');
    return
end
switch choice_scale
    case 1
        t=t/m;
    case 2
        t=t*m;
end
axes(handles.axes5);
plot(t,Ft);
axis([min max -20 20])
axis 'auto y'
grid on
if flag==0
    axis([min max -0.5 1.5])
end

% --- Executes on selection change in popupmenu_scale.
function popupmenu_scale_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu_scale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu_scale contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu_scale

% --- Executes during object creation, after setting all properties.
function popupmenu_scale_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu_scale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

% --- Executes on button press in pushbutton_fanzhuan.
function pushbutton_fanzhuan_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_fanzhuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t;
global Ft;
global flag;
t=eval(get(handles.edit5,'String'));
min=t([1]);
max=t([length(t)]);
if isempty(Ft)
     msgbox('select x first','warn','warn');
    return
end
t=-t;
axes(handles.axes5);
plot(t,Ft);
grid on
if flag==0
    axis([min max -0.5 1.5])
end



% 返回主界面
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close gcf;
start;


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
