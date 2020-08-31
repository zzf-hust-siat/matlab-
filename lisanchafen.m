function varargout = lisanchafen(varargin)
% LISANCHAFEN M-file for lisanchafen.fig
%      LISANCHAFEN, by itself, creates a new LISANCHAFEN or raises the existing
%      singleton*.
%
%      H = LISANCHAFEN returns the handle to a new LISANCHAFEN or the handle to
%      the existing singleton*.
%
%      LISANCHAFEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LISANCHAFEN.M with the given input arguments.
%
%      LISANCHAFEN('Property','Value',...) creates a new LISANCHAFEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lisanchafen_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lisanchafen_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help lisanchafen

% Last Modified by GUIDE v2.5 02-Jan-2019 23:57:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @lisanchafen_OpeningFcn, ...
    'gui_OutputFcn',  @lisanchafen_OutputFcn, ...
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

% --- Executes just before lisanchafen is made visible.
function lisanchafen_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lisanchafen (see VARARGIN)

% Choose default command line output for lisanchafen
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lisanchafen wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = lisanchafen_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
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
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double

% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

% 计算单位冲激响应
function pushbutton2_Callback(hObject, eventdata, handles)
f1=str2num(get(handles.edit1,'String'));% a
f2=str2num(get(handles.edit2,'String'));% 初始条件
f3=str2num(get(handles.edit3,'String'));% b
K=str2num(get(handles.edit4,'String'));% k
global h;
syms z;%z变换后的变量
global hzy hzx hzz ht;
global ht1;
%判断输入是否合法
if isempty(f1)
    msgbox('a should not be empty','warn','warn');
    return
else
    L1=length(f1);% a
end
if isempty(f3)
    msgbox('b should not be empty','warn','warn');
    return
else
    L3=length(f3);% b
end
if isempty(K)
    msgbox('K should not be empty','warn','warn');
    return
else
    if length(K)>1
        msgbox('K should be a single number','warn','warn');
        return
    else
        if (K<=0)||(K~=fix(K))% fix:向下取整
            msgbox('K should be integer number','warn','warn');
            return
        else
            K=K-1;% k
        end
    end
end
%获取分子分母部分的表达式
for i=1:L1
    if i==1
        hzy=f1(i);
    else
        hzy=hzy+f1(i)*z^(-i+1);
    end
end
for i=1:L3
    if i==1
        hzx=f3(i);
    else
        hzx=hzx+f3(i)*z^(-i+1);
    end
end
hzz=hzx./hzy;
ht=iztrans(hzz);
ht1=strcat('(',char(ht),')','u(n)');
M=L1-1;
%获取初始条件
L2=length(f2);
if ~(L2==M)%如果初始条件不够，或者多了，报错。
    msgbox('number of initial value error','warn','warn');
    return
end
%判断系数是否为全零
i=1;
while i<=L1
    if f1(i)~=0
        break
    end
    i=i+1;
end
if i>L1
    msgbox('a should not be all zeros','warn','warn');
    return
end
if i>K+1
    msgbox('difference order too high','warn','warn');
    return
end
m=-M:(K-i+1);
h=(impz(f3,f1,m))';%impz函数用于求单位冲激响应
text
cla;
axes(handles.axes1)
stem(m,h);

% 计算零输入响应：激励信号为0
function pushbutton3_Callback(hObject, eventdata, handles)
f1=str2num(get(handles.edit1,'String'));%y的系数
f2=str2num(get(handles.edit2,'String'));%初始条件
f3=str2num(get(handles.edit3,'String'));%x的系数
K=str2num(get(handles.edit4,'String'));%所求响应的点数
global hl;
global hzy;
global hz0input;
if isempty(f1)
    msgbox('a should not be empty','warn','warn');
    return
else
    L1=length(f1);
end
if isempty(f3)
    msgbox('b should not be empty','warn','warn');
    return
else
    L3=length(f3);
end
if isempty(K)
    msgbox('K should not be empty','warn','warn');
    return
else
    if length(K)>1
        msgbox('K should be a single number','warn','warn');
        return
    else
        if (K<=0)||(K~=fix(K))
            msgbox('K should be integer number','warn','warn');
            return
        else
            K=K-1;
        end
    end
end
N=L3-1;
M=L1-1;
if isempty(f2)
    zi=zeros(1,M);
else
    L2=length(f2);
    if ~(L2==M)
        msgbox('number of initial value error','warn','warn');
        return
    else
        zi=f2;
    end
end
syms z;
for i=1:L1
    if i==1
        h0input=0;
    else
        for j=1:i
            if i-j-1>=0
                h0input=simplify(h0input-f2(j)*z^(i-j-1));
            end
        end
    end
end
h0input=h0input./hzy;
hz0input=strcat('(',char(iztrans(h0input)),')','u(n)');
L2=length(zi);
n=-N:K;
x=zeros(size(n));%将输入置为0
i=1;
while i<=L1
    if f1(i)~=0
        break
    end
    i=i+1;
end
if i>L1
    msgbox('a should not be all zeros','warn','warn');
    return
end
if i>K+1
    msgbox('difference order too high','warn','warn');
    return
end
f1=f1./f1(i);
f3=f3./f1(i);
m=-M:(K-i+1);
hl=zeros(size(m));
%按y[n]表达式来计算
for j=1:L2
    hl(j)=zi(j);
end
for j=(L2+1):(K+M-i+2)
    for p=1:L3
        hl(j)=hl(j)+f3(p)*x((i+j-L2-2)+(N+1)-(p-1));
    end
    for q=(i+1):L1
        hl(j)=hl(j)-f1(q)*hl((j-L2-1)+(M+1)-(q-1));
    end
end
axes(handles.axes2)
stem(m,hl);

% 计算零状态响应：初始状态为0
function pushbutton4_Callback(hObject, eventdata, handles)
f1=str2num(get(handles.edit1,'String'));
f2=str2num(get(handles.edit2,'String'));
f3=str2num(get(handles.edit3,'String'));
K=str2num(get(handles.edit4,'String'));
choose=get(handles.popupmenu1,'value');
syms z;
global hz0state;
global hz;
global hzz;
if isempty(f1)
    msgbox('a should not be empty','warn','warn');
    return
else
    L1=length(f1);
end
if isempty(f3)
    msgbox('b should not be empty','warn','warn');
    return
else
    L3=length(f3);
end
if isempty(K)
    msgbox('K should not be empty','warn','warn');
    return
else
    if length(K)>1
        msgbox('K should be a single number','warn','warn');
        return
    else
        if (K<=0)||(K~=fix(K))
            msgbox('K should be integer number','warn','warn');
            return
        else
            K=K-1;
        end
    end
end
N=L3-1;
M=L1-1;
zi=zeros(1,M);
L2=length(zi);
n=-N:K;
switch choose
    case 1
        x=[n>=0];
        x1=1/(1-z^(-1));
        i=1;
    while i<=L1 
        if f1(i)~=0
            break
        end
        i=i+1;
    end
    if i>L1
        msgbox('a should not be all zeros','warn','warn');
        return
    end
    if i>K+1
        msgbox('difference order too high','warn','warn');
        return
    end
    f1=f1./f1(i);
    f3=f3./f1(i);
    m=[-M:(K-i+1)];
    hz=zeros(size(m));
    for j=1:L2 
        hz(j)=0;
    end
    for j=(L2+1):(K+M-i+2)
        for p=1:L3
            hz(j)=hz(j)+f3(p)*x((i+j-L2-2)+(N+1)-(p-1));
        end
        for q=(i+1):L1
            hz(j)=hz(j)-f1(q)*hz((j-L2-1)+(M+1)-(q-1));
        end
    end
    axes(handles.axes3)
    stem(m,hz);
    case 2
        x=exp(n).*heaviside1(n);
        x1=exp(-1)/(1-z^(-1));
        i=1;
    while i<=L1 
        if f1(i)~=0
            break
        end
        i=i+1;
    end
    if i>L1
        msgbox('a should not be all zeros','warn','warn');
        return
    end
    if i>K+1
        msgbox('difference order too high','warn','warn');
        return
    end
    f1=f1./f1(i);
    f3=f3./f1(i);
    m=[-M:(K-i+1)];
    hz=zeros(size(m));
    for j=1:L2 
        hz(j)=0;
    end
    for j=(L2+1):(K+M-i+2)
        for p=1:L3
            hz(j)=hz(j)+f3(p)*x((i+j-L2-2)+(N+1)-(p-1));
        end
        for q=(i+1):L1
            hz(j)=hz(j)-f1(q)*hz((j-L2-1)+(M+1)-(q-1));
        end
    end
    axes(handles.axes3)
    stem(m,hz);
end
i=1;
h0state=x1.*hzz;
hz0state=strcat('(',char(iztrans(h0state)),')','u(n)');
% while i<=L1
%     if f1(i)~=0
%         break
%     end
%     i=i+1;
% end
% if i>L1
%     msgbox('a should not be all zeros','warn','warn');
%     return
% end
% if i>K+1
%     msgbox('difference order too high','warn','warn');
%     return
% end
% m=-M:(K-i+1);
% hz=zeros(size(m));%将初始状态清0
% h0state1=iztrans(h0state);
% axes(handles.axes3);
% syms n;
% n=-M:(K-i+1);
% for i=1:length(hz)
%     f=matlabFunction(h0state1);
%     hz(i)=round(f(-M+i-1)*10^4)/10^4;%保留小数点后四位
% end
% stem(n,eval(h0state1));

% 计算全响应
function pushbutton5_Callback(hObject, eventdata, handles)
f1=str2num(get(handles.edit1,'String'));
f2=str2num(get(handles.edit2,'String'));
f3=str2num(get(handles.edit3,'String'));
K=str2num(get(handles.edit4,'String'));
choose=get(handles.popupmenu1,'value');
global hq;
global hz0state hz0input hz0all;
hz0all=strcat(hz0state,'+',hz0input);
%判断边界条件
if isempty(f1)
    msgbox('a should not be empty','warn','warn');
    return
else
    L1=length(f1);
end
if isempty(f3)
    msgbox('b should not be empty','warn','warn');
    return
else
    L3=length(f3);
end
if isempty(K)
    msgbox('K should not be empty','warn','warn');
    return
else
    if length(K)>1
        msgbox('K should be a single number','warn','warn');
        return
    else
        if (K<=0)||(K~=fix(K))
            msgbox('K should be integer number','warn','warn');
            return
        else
            K=K-1;
        end
    end
end
N=L3-1;
M=L1-1;
if isempty(f2)
    zi=zeros(1,M);
else
    L2=length(f2);
    if ~(L2==M)
        msgbox('number of initial value error','warn','warn');
        return
    else
        zi=f2;
    end
end
L2=length(zi);
n=-N:K;
switch choose
    case 1
       x=heaviside1(n);
    case 2
        x=exp(n).*heaviside1(n);
end
i=1;
while i<=L1
    if f1(i)~=0
        break
    end
    i=i+1;
end
if i>L1
    msgbox('a should not be all zeros','warn','warn');
    return
end
if i>K+1
    msgbox('difference order too high','warn','warn');
    return
end
f1=f1./f1(i);
f3=f3./f1(i);
m=-M:(K-i+1);
hq=zeros(size(m));
for j=1:L2
    hq(j)=zi(j);
end
%直接利用原始的求y[n]公式计算
for j=(L2+1):(K+M-i+2)
    for p=1:L3
        hq(j)=hq(j)+f3(p)*x((i+j-L2-2)+(N+1)-(p-1));
    end
    for q=(i+1):L1
        hq(j)=hq(j)-f1(q)*hq((j-L2-1)+(M+1)-(q-1));
    end
end
axes(handles.axes5)
stem(m,hq);

% 文本显示结果
function pushbutton8_Callback(hObject, eventdata, handles)
global h;
global hl;
global hz;
global hq;
global ht1 hz0state hz0input hz0all;
if (isempty(h)||isempty(hl)||isempty(hz)||isempty(hq))
    msgbox('data need calculation','warn','warn');
    return
end
text={...
    ''
    '单位冲激响应序列'
    ''
    [' '*ones(1,12),num2str(h)]
     ''
    '单位冲激响应'
    ''
    [' '*ones(1,12),ht1]
    ''
    '零输入响应序列'
    ''
    [' '*ones(1,12),num2str(hl)]
     ''
    '零输入响应'
    ''
    [' '*ones(1,12),hz0input]
    ''
    '零状态响应序列'
    ''
    [' '*ones(1,12),num2str(hz)]
     ''
    '零状态响应'
    ''
    [' '*ones(1,12),hz0state]
    ''
    '全响应序列'
    ''
    [' '*ones(1,12),num2str(hq)]
    ''
    '全响应'
    ''
    [' '*ones(1,12),hz0all]
    ''};
textwin(' ',text)

% 返回主界面
function pushbutton9_Callback(hObject, eventdata, handles)
close gcf;
start;

% 改变窗口大小
function figure1_ResizeFcn(hObject, eventdata, handles)


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

function f = heaviside1(n)
    f=length(n); 
    for i=1:1:length(n)
        if n(i)<0
            f(i)=0;
        elseif n(i)>=0
            f(i)=1;
        end
    end
