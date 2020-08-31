function varargout = lisanxitong(varargin)
% LISANXITONG M-file for lisanxitong.fig
%      LISANXITONG, by itself, creates a new LISANXITONG or raises the existing
%      singleton*.
%
%      H = LISANXITONG returns the handle to a new LISANXITONG or the handle to
%      the existing singleton*.
%
%      LISANXITONG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LISANXITONG.M with the given input arguments.
%
%      LISANXITONG('Property','Value',...) creates a new LISANXITONG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lisanxitong_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lisanxitong_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help lisanxitong

% Last Modified by GUIDE v2.5 11-Jan-2019 23:01:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lisanxitong_OpeningFcn, ...
                   'gui_OutputFcn',  @lisanxitong_OutputFcn, ...
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

% --- Executes just before lisanxitong is made visible.
function lisanxitong_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lisanxitong (see VARARGIN)

% Choose default command line output for lisanxitong
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lisanxitong wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = lisanxitong_OutputFcn(hObject, eventdata, handles) 
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

% % 绘制系统极零图
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num=str2num(get(handles.edit1,'String'));
den=str2num(get(handles.edit3,'String'));
shoulianyu=get(handles.popupmenu1,'value');
%判断边界条件
if isempty(num)
    msgbox('numerator should not be empty','warn','warn');
    return
end
if isempty(num)
    msgbox('numerator should not be empty','warn','warn');
    return
end
if isempty(den)
    msgbox('denominator should not be empty','warn','warn');
    return
end
axes(handles.axes1);
h=tf(num,den);%根据给定的分子分母创建表达式
[p,z]=pzmap(h);%计算系统的极点和零点
pn=length(p);
for i=1:length(p)
    if (abs(p(i))>=1&&shoulianyu==1)||((abs(p(i))<=1)&&shoulianyu==2)
         msgbox('该系统不是稳定的！','Tips','help','modal');
    elseif i==length(p)
         msgbox('该系统是稳定的！','Tips','help','modal');
    end
end
axes(handles.axes1);
zplane(z,p);%绘制极零图
grid on
[num1,len1]=poly2str(num,'z');%数组转多项式
[den2,len2]=poly2str(den,'z');
len=max(len1,len2);
div=['H(z)=',' '*ones(1,5),'-'*ones(1,len+5),' '*ones(1,10)];%将表达式规范化
Num=[' '*ones(1,10),num1,' '*ones(1,10)];
Den=[' '*ones(1,10),den2,' '*ones(1,10)];
text={Num;div;Den};%显示出表达式
if(len>60)
   set(handles.text3,'string','too long,can not show')
else
   set(handles.text3,'string',text)
end

% 绘制幅频特性曲线
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num=str2num(get(handles.edit1,'String'));
den=str2num(get(handles.edit3,'String'));
if isempty(num)
    msgbox('numerator should not be empty','warn','warn');
    return
end
if isempty(num)
    msgbox('numerator should not be empty','warn','warn');
    return
end
if isempty(den)
    msgbox('denominator should not be empty','warn','warn');
    return
end
axes(handles.axes2);
[Hz,W]=freqz(num,den);%获取频率响应函数
magh=abs(Hz);%取模
zerosIndx=find(magh==0);
magh(zerosIndx)=1;
%magh=20*log10(magh);%纵坐标化为DB
magh(zerosIndx)=-inf;
plot(W,magh);
set(gca,'XTick',0:pi/2:pi);
set(gca,'xtickLabel',{'0','π/2','π'});
grid on
xlabel('the characteristics of angular frequency');
ylabel('amplitude-frequency');

% 绘制相频特性曲线
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num=str2num(get(handles.edit1,'String'));
den=str2num(get(handles.edit3,'String'));
if isempty(num)
    msgbox('numerator should not be empty','warn','warn');
    return
end
if isempty(den)
    msgbox('denominator should not be empty','warn','warn');
    return
end
axes(handles.axes3);
[Hz,W]=freqz(num,den);
W=W./pi;%归一化
angh=angle(Hz);%获取角度
angh=unwrap(angh);%换成弧度制
plot(W,angh);
grid on
xlabel('frequency/pi');
ylabel('phase-frequency');

% 返回主界面
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close gcf;
start;


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)





function ROC_edit1_Callback(hObject, eventdata, handles)
% hObject    handle to ROC_edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ROC_edit1 as text
%        str2double(get(hObject,'String')) returns contents of ROC_edit1 as a double
global flag1;
flag1=[0 0];

% --- Executes during object creation, after setting all properties.
function ROC_edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ROC_edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ROC_edit2_Callback(hObject, eventdata, handles)
% hObject    handle to ROC_edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ROC_edit2 as text
%        str2double(get(hObject,'String')) returns contents of ROC_edit2 as a double
global flag1;
flag1=[0 0];

% --- Executes during object creation, after setting all properties.
function ROC_edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ROC_edit2 (see GCBO)
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
