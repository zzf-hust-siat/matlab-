function varargout = lisanjuanji(varargin)
% LISANJUANJI M-file for lisanjuanji.fig
%      LISANJUANJI, by itself, creates a new LISANJUANJI or raises the existing
%      singleton*.
%
%      H = LISANJUANJI returns the handle to a new LISANJUANJI or the handle to
%      the existing singleton*.
%
%      LISANJUANJI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LISANJUANJI.M with the given input arguments.
%
%      LISANJUANJI('Property','Value',...) creates a new LISANJUANJI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lisanjuanji_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lisanjuanji_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help lisanjuanji

% Last Modified by GUIDE v2.5 04-Jan-2019 10:52:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lisanjuanji_OpeningFcn, ...
                   'gui_OutputFcn',  @lisanjuanji_OutputFcn, ...
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

% --- Executes just before lisanjuanji is made visible.
function lisanjuanji_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lisanjuanji (see VARARGIN)

% Choose default command line output for lisanjuanji
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lisanjuanji wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = lisanjuanji_OutputFcn(hObject, eventdata, handles) 
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

% 开始计算卷积和
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla;
global z;
F1=str2num(get(handles.edit1,'String'));
F2=str2num(get(handles.edit2,'String'));
a=str2double(get(handles.edit3,'String'));
b=str2double(get(handles.edit6,'String'));
E1=get(handles.edit8,'String');
E2=get(handles.edit10,'String');
N11=str2double(get(handles.edit12,'String'));
N12=str2double(get(handles.edit13,'String'));
N21=str2double(get(handles.edit14,'String'));
N22=str2double(get(handles.edit15,'String'));
choose=get(handles.popupmenu1,'value');
switch choose
    case 1
        if isempty(F1)
            msgbox('X1 should not be empty','warn','warn');
            return
        else
            L1=length(F1);
        end
        if isempty(F2)
            msgbox('X2 should not be empty','warn','warn');
        else
            L2=length(F2);
        end
        if isempty(a)
            a=0;
        else
            if (round(a)~=a)
                msgbox('please input integer','warn','warn');
                return
            end
        end
        if isempty(b)
            b=0;
        elseif (round(b)~=b)
                msgbox('please input integer','warn','warn');
                return
        end
    %绘制序列1和序列2
        f1=F1;
        n1=a:(a+L1-1);
        axes(handles.axes1)
        stem(n1,F1);
        h3=stem(n1,F1);
        set(h3,'MarkerFaceColor','red')
        xlim([a a+L1+3]) ;
        n2=b:(b+L2-1);
        axes(handles.axes2)
        stem(n2,F2);
        h4=stem(n2,F2);
        set(h4,'MarkerFaceColor','blue')
        xlim([b b+L2+3]);
        %开始计算
        F2=fliplr(F2);%序列反转
        f2=F2;
        F1=[zeros(1,L2) F1];%补零后的序列1
        f2=[f2 zeros(1,L1)];%反转后的序列2
        l=(a+b-1):(a+L1+b+L2-1);
        z=zeros(size(length(l)));
        for i=0:L1+L2
            xmin=i+a-L2;
            xmax=i+a-1;
            axes(handles.axes3)
            cla
            y=n1;
            stem(y,f1);
            h1=stem(y,f1);
            set(h1,'MarkerFaceColor','red')
            hold on
            x=xmin:xmax ;
            stem(x,F2);
            h2=stem(x,F2);
            set(h2,'MarkerFaceColor','BLUE')
            xlim([a-L2 L1+a+L2-1]);
            pause(2) ;
            ff2=circshift(f2,[0,i]);%循环移位
            w=F1.*ff2;
            e=sum(w);
            axes(handles.axes5)
            stem(i+a+b-1,e);%一位一位显示
            z(i+1)=e;
            h=stem(i+a+b-1,e);
            set(h,'MarkerFaceColor','green');
            xlim([a+b-1 L1+L2+a+b-1]);
            hold on
        end
    case 2
        %判断边界条件
        if isempty(E1)
            msgbox('X1 should not be empty','warn','warn');
            return
        else
            L1=N12-N11+1;
        end
        if isempty(E2)
            msgbox('X2 should not be empty','warn','warn');
            return
        else
            L2=N22-N21+1;
        end
        if isempty(N11)||isempty(N12)
            msgbox('请输入完整的序列1的范围！','warn','warn');
        elseif (round(N11)~=N11)||(round(N12)~=N12)
                msgbox('请输入整数！','warn','warn');
                return
        end
        if isempty(N21)||isempty(N22)
            msgbox('请输入完整的序列2的范围！','warn','warn');
        elseif (round(N21)~=N21)||(round(N22)~=N22)
                msgbox('请输入整数！','warn','warn');
                return
        end
        %开始动态运算
        %绘制序列1
        n1=N11:N12;
        Str1=strrep(E1,'u','heaviside1');
        e1=eval(Str1);
        axes(handles.axes1)
        stem(n1,e1);
        h3=stem(n1,e1);
        set(h3,'MarkerFaceColor','red')
        xlim([N11 N12+3]) ;
        %绘制序列2
        n2=N21:N22;
        Str2=strrep(E2,'u','heaviside1');
        e2=eval(Str2);
        axes(handles.axes2)
        stem(n2,e2);
        h4=stem(n2,e2);
        set(h4,'MarkerFaceColor','blue');
        xlim([N21 N22+3]);
        %开始计算
        e22=fliplr(e2);%序列反转
        e11=[zeros(1,L2) e1];%补零后的序列1
        e222=[e22 zeros(1,L1)];%反转后的序列2
        l=(N11+N21-1):(N12+N22+1);
        z=zeros(size(length(l)));
        for i=0:L1+L2
            xmin=i+N11-L2;
            xmax=i+N11-1;
            axes(handles.axes3)
            cla
            y=n1;
            stem(y,e1);
            h1=stem(y,e1);
            set(h1,'MarkerFaceColor','red')
            hold on
            x=xmin:xmax ;
            stem(x,e22);
            h2=stem(x,e22);
            set(h2,'MarkerFaceColor','BLUE')
            xlim([N11-L2 N12+L2]);
            pause(2) ;
            ff2=circshift(e222,[0,i]);
            w=e11.*ff2;
            e=sum(w);
            axes(handles.axes5)
            stem(i+N11+N21-1,e);
            z(i+1)=e;
            h=stem(i+N11+N21-1,e);
            set(h,'MarkerFaceColor','green');
            xlim([N11+N21-1 N12+N22+1]);
            hold on
        end
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

function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

% 文本显示结果
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global z;
if isempty(z)
    msgbox('calculate conv first','warn','warn');
    return
end
text={...
     ''
     '卷积结果'
     ''
      [' '*ones(1,12),num2str(z)]
      ''};
textwin('',text);

% 返回主界面
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close gcf;
start;


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)





function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% 用于选择是写表达式还是写一个有限序列
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
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
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
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
