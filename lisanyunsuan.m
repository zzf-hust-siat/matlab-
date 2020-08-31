function varargout = lisanyunsuan(varargin)
% LISANYUNSUAN M-file for lisanyunsuan.fig
%      LISANYUNSUAN, by itself, creates a new LISANYUNSUAN or raises the existing
%      singleton*.
%
%      H = LISANYUNSUAN returns the handle to a new LISANYUNSUAN or the handle to
%      the existing singleton*.
%
%      LISANYUNSUAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LISANYUNSUAN.M with the given input arguments.
%
%      LISANYUNSUAN('Property','Value',...) creates a new LISANYUNSUAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lisanyunsuan_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lisanyunsuan_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help lisanyunsuan

% Last Modified by GUIDE v2.5 15-Dec-2018 16:03:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lisanyunsuan_OpeningFcn, ...
                   'gui_OutputFcn',  @lisanyunsuan_OutputFcn, ...
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

% --- Executes just before lisanyunsuan is made visible.
function lisanyunsuan_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lisanyunsuan (see VARARGIN)

% Choose default command line output for lisanyunsuan
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lisanyunsuan wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = lisanyunsuan_OutputFcn(hObject, eventdata, handles) 
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

% --- 绘制x1.
function sequence_x1_Callback(hObject, eventdata, handles)
% hObject    handle to sequence_x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;%序列
global n;%点数
global flag1;
flag1=1;
a0 = str2double(get(handles.edita1,'String'));
b0 = str2double(get(handles.editb1,'String'));
A0 = str2double(get(handles.editA,'String'));
t5=str2double(get(handles.edit5,'String'));
t14=str2double(get(handles.edit14,'String'));
%——判断能否运行
if isempty(a0)
    msgbox('input a first','warn','warn');
    return
else
    if length(a0)>1
        msgbox('a should be a single number','warn','warn');
        return
    else
        a=a0(1);
    end
end
if isempty(b0)
    msgbox('input b first','warn','warn');
    return
else
    if length(b0)>1
        msgbox('b should be a single number','warn','warn');
        return
    else
        b=b0(1);
    end
end
if isempty(A0)
    msgbox('input A first','warn','warn');
    return
else
    if length(A0)>1
        msgbox('A should be a single number','warn','warn');
        return
    else
        A=A0(1);
    end
end
if isempty(t5)
    msgbox('input n first','warn','warn');
    return
else
    if length(t5)>1
        msgbox('input single number','warn','warn');
        return
    else
        t5(1)=fix(t5(1));
    end
end
if isempty(t14)
    msgbox('input n first','warn','warn');
    return
else
    if length(t14)>1
        msgbox('input single number','warn','warn');
        return
    else
        t14(1)=fix(t14(1));
        if t14(1)<t5(1)
            msgbox('n input error','warn','warn');
            return
        end
    end
end
%——
n=t5(1):t14(1);
choose1 = get(handles.popupmenu1,'value');
switch choose1%选择信号类型
    case 1
        x=A*a.^(b*n);
    case 2
        x=A*exp((a+b*1j)*n);
        flag1=0;
    case 3
        if a==0
            msgbox('a should not be zero','warn','warn');
            return
        else
            x=A*n==(b/a);
        end
    case 4                    
        if a==0
            msgbox('a should not be zero','warn','warn');
            return
        elseif a<0
            x=A*n<=b/a;
        else 
            x=A*n>=b/a;
        end
    case 5
        Str1=get(handles.edit16,'String');
        Str=strrep(Str1,'u','heaviside1');
        if contains(Str,'j')%如果表达式中有虚部
            x=eval(Str);
            flag1=0;
        else
            x=eval(Str);
            flag1=1;
        end
end
if flag1==1
    axes(handles.axes_x1);
    cla
        stem(n,x,'filled');
end
if flag1==0
    axes(handles.axes_x1);
    cla
    xn= [real(x);imag(x)]';
    h = stem(n,xn);
    set(h(1),'MarkerFaceColor','red')%虚部为蓝色
    set(h(2),'MarkerFaceColor','blue','Marker','square')%实部为红色
end

% --- 绘制x2.
function sequence_x2_Callback(hObject, eventdata, handles)
% hObject    handle to sequence_x2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y;
global n;
global flag2;
flag2=1;
a0 = str2num(get(handles.edita2,'String'));
b0 = str2num(get(handles.editb2,'String'));
A0 = str2num(get(handles.editAA,'String'));
t5=str2num(get(handles.edit5,'String'));
t14=str2num(get(handles.edit14,'String'));
if isempty(a0)
    msgbox('input a first','warn','warn');
    return
else
    if length(a0)>1
        msgbox('a should be a single number','warn','warn');
        return
    else
        a=a0(1);
    end
end
if isempty(b0)
    msgbox('input b first','warn','warn');
    return
else
    if length(b0)>1
        msgbox('b should be a single number','warn','warn');
        return
    else
        b=b0(1);
    end
end
if isempty(A0)
    msgbox('input A first','warn','warn');
    return
else
    if length(A0)>1
        msgbox('A should be a single number','warn','warn');
        return
    else
        A=A0(1);
    end
end
if isempty(t5)
    msgbox('input n first','warn','warn');
    return
else
    if length(t5)>1
        msgbox('input single number','warn','warn');
        return
    else
        t5(1)=fix(t5(1));
    end
end
if isempty(t14)
    msgbox('input n first','warn','warn');
    return
else
    if length(t14)>1
        msgbox('input single number','warn','warn');
        return
    else
        t14(1)=fix(t14(1));
        if t14(1)<t5(1)
            msgbox('n input error','warn','warn');
            return
        end
    end
end
n=t5(1):t14(1);
choose2 = get(handles.popupmenu2,'value');
switch choose2
    case 1
        y=A*a.^(b*n);
    case 2
        y=A*exp((a+b*1j)*n);
        flag2=0;
    case 3
        if a==0
            msgbox('a should not be zero','warn','warn');
            return
        else
            y=A*[n==(b/a)];
        end
    case 4             
        if a==0
            msgbox('a should not be zero','warn','warn');
            return
        elseif a<0
            y=A*n<=b/a;
        else 
            y=A*n>=b/a;
        end
    case 5
        Str1=get(handles.edit17,'String');
        Str=strrep(Str1,'u','heaviside1');
        if strfind(Str,'j')%如果表达式中有虚部
            y=eval(Str);
            flag2=0;
        else
            y=eval(Str);
            flag2=1;
        end
end
if flag2==1
    axes(handles.axes_x2);
    cla
        stem(n,y,'filled');
end
if flag2==0
    axes(handles.axes_x2);
    cla
    yn= [real(y);imag(y)]';
    h1 = stem(n,yn);
    set(h1(1),'MarkerFaceColor','red')
    set(h1(2),'MarkerFaceColor','blue','Marker','square')
end

% --- 绘制运算后的序列
function sequence_after_operation_Callback(hObject, eventdata, handles)
% hObject    handle to sequence_after_operation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global y;
global n;
global flag1;
global flag2;
if isempty(x)
    msgbox('select x first','warn','warn');
    return
end
if isempty(y)
    msgbox('select y first','warn','warn');
    return
end
choose = get(handles.popupmenu3,'value');
switch choose
    case 1
        f=x+y;
    case 2
        f=x.*y;
end
axes(handles.axes_x_after_operation);
cla
stem(n,f,'filled');
if flag1*flag2==0
    axes(handles.axes_x_after_operation);
    cla
    fn= [real(f);imag(f)]';
    hf = stem(n,fn);
    set(hf(1),'MarkerFaceColor','red')
    set(hf(2),'MarkerFaceColor','blue','Marker','square')
end

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

% --- 绘制原序列
function original_sequence_Callback(hObject, eventdata, handles)
% hObject    handle to original_sequence (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global n;
global flag;%标记序列是否含虚部
global Fn;
flag=1;
a0 = str2num(get(handles.edita3,'String'));
b0 = str2num(get(handles.editb3,'String'));
A0 = str2num(get(handles.editAAA,'String'));
t5=str2num(get(handles.edit5,'String'));
t14=str2num(get(handles.edit14,'String'));
if isempty(a0)
    msgbox('input a first','warn','warn');
    return
else
    if length(a0)>1
        msgbox('a should be a single number','warn','warn');
        return
    else
        a=a0(1);
    end
end
if isempty(b0)
    msgbox('input b first','warn','warn');
    return
else
    if length(b0)>1
        msgbox('b should be a single number','warn','warn');
        return
    else
        b=b0(1);
    end
end
if isempty(A0)
    msgbox('input A first','warn','warn');
    return
else
    if length(A0)>1
        msgbox('A should be a single number','warn','warn');
        return
    else
        A=A0(1);
    end
end
if isempty(t5)
    msgbox('input n first','warn','warn');
    return
else
    if length(t5)>1
        msgbox('input single number','warn','warn');
        return
    else
        t5(1)=fix(t5(1));
    end
end
if isempty(t14)
    msgbox('input n first','warn','warn');
    return
else
    if length(t14)>1
        msgbox('input single number','warn','warn');
        return
    else
        t14(1)=fix(t14(1));
        if t14(1)<t5(1)
            msgbox('n input error','warn','warn');
            return
        end
    end
end
n=t5(1):t14(1);
choice = get(handles.popupmenu4,'value');
switch choice
    case 1
        Fn=A*a.^(b*n);
    case 2
        Fn=A*exp((a+1j*b)*n);
        flag=0;
    case 3
        if a==0
            msgbox('a should not be zero','warn','warn');
            return
        else
            Fn=A*[n==(b/a)];
        end
    case 4            
        if a==0
            msgbox('a should not be zero','warn','warn');
            return
        elseif a<0
            Fn=A*[n<=(b/a)];
        else
            Fn=A*[n>=(b/a)];
        end
        case 5
        Str1=get(handles.edit18,'String');
        Str=strrep(Str1,'u','heaviside1');%判定u为阶跃函数，然后替换
        if strfind(Str,'j')%如果表达式中有虚部
            Fn=eval(Str);
            flag=0;
        else
            Fn=eval(Str);
            flag=1;
        end
end
if flag==1
axes(handles.axes_original);
cla
stem(n,Fn,'filled');
end
if flag==0
    axes(handles.axes_original);
    cla
    yn= [real(Fn);imag(Fn)]';
    h1 = stem(n,yn);
    set(h1(1),'MarkerFaceColor','red')
    set(h1(2),'MarkerFaceColor','blue','Marker','square')
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

% --- 实现移位
function pushbutton_yiwei_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_yiwei (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global n;
global Fn;
global flag;
t5=str2num(get(handles.edit5,'String'));
t14=str2num(get(handles.edit14,'String'));
N0=str2num(get(handles.edit_yiwei,'String'));
if isempty(N0)
    msgbox('input N first','warn','warn');
    return
else
    if length(N0)>1
        msgbox('N should be a single number','warn','warn');
        return
    else
        N=N0(1);
    end
end
choice_yiwei = get(handles.popupmenu_yiwei,'value');
if(~(N>=0&&(round(N)==N)))
     msgbox('N should be natural number','warn','warn');
     return
end
if isempty(Fn)
    msgbox('select F first','warn','warn');
    return
end
n=t5(1):t14(1);
min=n([1]);
max=n([length(n)]);
switch choice_yiwei
    case 1
        n=n-N;
    case 2
        n=n+N;
end
if flag==1
axes(handles.axes_transfer);
cla
stem(n,Fn,'filled');
axis([min-N max+N -10 10])
axis 'auto y'
end
if flag==0
    axes(handles.axes_transfer);
    cla
    yn= [real(Fn);imag(Fn)]';
    h1 = stem(n,yn);
    axis([min-N max+N -10 10])
    axis 'auto y'
    set(h1(1),'MarkerFaceColor','red')
    set(h1(2),'MarkerFaceColor','blue','Marker','square')
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

% % --- Executes on button press in pushbutton_scale.
% function pushbutton_scale_Callback(hObject, eventdata, handles)
% % hObject    handle to pushbutton_scale (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% global n;
% global Fn;
% global flag;
% flag_scale=1;
% t5=str2num(get(handles.edit5,'String'));
% t14=str2num(get(handles.edit14,'String'));
% m0=str2num(get(handles.edit_scale,'String'));
% if isempty(m0)
%     msgbox('input m first','warn','warn');
%     return
% else
%     if length(m0)>1
%         msgbox('m shoulde be a single number','warn','warn');
%         return
%     else
%         m=m0(1);
%     end
% end
% n=eval(get(handles.edit5,'String'));
% choice_scale = get(handles.popupmenu_scale,'value');
% if(~(m>0&&(round(m)==m)))
%      msgbox('m should be positive integer','warn','warn');
%      return
% end
% n=t5(1):t14(1);
% min=n([1]);
% max=n([length(n)]);
% switch choice_scale
%     case 1
%         max1=max/m;
%         max1=fix(max1);
%         min1=min/m;
%         min1=fix(min1);
%         p=min1:1:max1;
%         k=find(round(n/m)==n/m);
%         x1=Fn(k);
%         flag_scale=0;
%     case 2
%         max1=max*m;
%         min1=min*m;
%         p=min1:1:max1;
%         x1=zeros(1,max1-min1+1);
%         k=(round(p/m)==p/m);
%         x1(k)=Fn;
% end
% if flag==1
% axes(handles.axes_transfer);
% cla
% stem(p,x1,'filled');
% if flag_scale==1
%     axis([min*m max*m -10 10])
%     axis 'auto y'
% end
% end
% if flag==0
%     axes(handles.axes_transfer);
%     cla
%     yn= [real(x1);imag(x1)]';
%     h1 = stem(p,yn);
%     if flag_scale==1
%         axis([min*m max*m -10 10])
%         axis 'auto y'
%     end
%     set(h1(1),'MarkerFaceColor','red')
%     set(h1(2),'MarkerFaceColor','blue','Marker','square')
% end

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

% --- 实现反转
function pushbutton_fanzhuan_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_fanzhuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global n;
global Fn;
global flag;
if isempty(Fn)
    msgbox('select F first','warn','warn');
    return
end
n=-n;%横坐标反转
if flag==1
axes(handles.axes_transfer);
cla
stem(n,Fn,'filled');
end
if flag==0
    axes(handles.axes_transfer);
    cla
    yn= [real(Fn);imag(Fn)]';
    h1 = stem(n,yn);
    set(h1(1),'MarkerFaceColor','red')
    set(h1(2),'MarkerFaceColor','blue','Marker','square')
end

function editA_Callback(hObject, eventdata, handles)
% hObject    handle to editA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editA as text
%        str2double(get(hObject,'String')) returns contents of editA as a double

% --- Executes during object creation, after setting all properties.
function editA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
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
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function editAA_Callback(hObject, eventdata, handles)
% hObject    handle to editAA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editAA as text
%        str2double(get(hObject,'String')) returns contents of editAA as a double

% --- Executes during object creation, after setting all properties.
function editAA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editAA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function editAAA_Callback(hObject, eventdata, handles)
% hObject    handle to editAAA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editAAA as text
%        str2double(get(hObject,'String')) returns contents of editAAA as a double

% --- Executes during object creation, after setting all properties.
function editAAA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editAAA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

% --- 实现倒相.
function pushbutton_daoxiang_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_daoxiang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global n;
global Fn;
global flag;
if isempty(Fn)
    msgbox('select F first','warn','warn');
    return
end
if flag==1
axes(handles.axes_transfer);
cla
stem(n,-Fn,'filled');
end
if flag==0
    axes(handles.axes_transfer);
    cla
    yn= [real(Fn);-imag(Fn)]';
    h1 = stem(n,yn);
    set(h1(1),'MarkerFaceColor','red')
    set(h1(2),'MarkerFaceColor','blue','Marker','square')
end

% --- Executes on button press in pushbutton_return.
function pushbutton_return_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_return (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close gcf;%关闭当前界面
start;%回到主界面


% --- 实现扩展/压缩.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global n;
global Fn;
global flag;
flag_scale=1;
m0=str2num(get(handles.edit_scale,'String'));
if isempty(m0)
    msgbox('input m first','warn','warn');
    return
else
    if length(m0)>1
        msgbox('m shoulde be a single number','warn','warn');
        return
    else
        m=m0(1);
    end
end
choice_scale = get(handles.popupmenu_scale,'value');
if(~(m>0&&(round(m)==m)))
     msgbox('m should be positive integer','warn','warn');
     return
end
if isempty(Fn)
    msgbox('select F first','warn','warn');
    return
end
min=n([1]);%序列序号下限
max=n([length(n)]);%序列序号上限
switch choice_scale
    case 1
        max1=max/m;
        max11=fix(max1);
        if max11>max1
            max11=max11-1;
        end
        min1=min/m;
        min11=fix(min1);
        if min11<min1
            min11=min11+1;
        end
        p=min11:1:max11;%新序列的上下限
        k=find(mod(n,m)==0);%找出原序列中可以被m整除的编号
        x1=Fn(k);%将可被m整除的编号所对应的值赋值给序列x1
        flag_scale=0;
    case 2
        max1=max*m;
        min1=min*m;
        p=min1:1:max1;%新序列的上下限
        x1=zeros(1,max1-min1+1);%初始化x1序列为0序列
        k=(mod(p,m)==0);
        x1(k)=Fn;
end
if flag==1
axes(handles.axes_transfer);
cla
stem(p,x1,'filled');
if flag_scale==1
    axis([min*m max*m -10 10])
    axis 'auto y'
end
end
if flag==0
    axes(handles.axes_transfer);
    cla
    yn= [real(x1);imag(x1)]';
    h1 = stem(p,yn);
    if flag_scale==1
        axis([min*m max*m -10 10])
        axis 'auto y'
    end
    set(h1(1),'MarkerFaceColor','red')
    set(h1(2),'MarkerFaceColor','blue','Marker','square')
end

function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end




% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)





function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%自定义一个阶跃函数
function f = heaviside1(n)
    f=length(n); 
    for i=1:1:length(n)
        if n(i)<0
            f(i)=0;
        elseif n(i)>=0
            f(i)=1;
        end
    end
            
