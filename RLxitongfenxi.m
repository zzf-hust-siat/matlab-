function varargout = RLxitongfenxi(varargin)
% RLXITONGFENXI M-file for RLxitongfenxi.fig
%      RLXITONGFENXI, by itself, creates a new RLXITONGFENXI or raises the existing
%      singleton*.
%
%      H = RLXITONGFENXI returns the handle to a new RLXITONGFENXI or the handle to
%      the existing singleton*.
%
%      RLXITONGFENXI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RLXITONGFENXI.M with the given input arguments.
%
%      RLXITONGFENXI('Property','Value',...) creates a new RLXITONGFENXI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RLxitongfenxi_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RLxitongfenxi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help RLxitongfenxi

% Last Modified by GUIDE v2.5 19-Dec-2018 15:40:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @RLxitongfenxi_OpeningFcn, ...
    'gui_OutputFcn',  @RLxitongfenxi_OutputFcn, ...
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


% --- Executes just before RLxitongfenxi is made visible.
function RLxitongfenxi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RLxitongfenxi (see VARARGIN)

% Choose default command line output for RLxitongfenxi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RLxitongfenxi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RLxitongfenxi_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% ---单位冲击响应（DWCJ）----- Executes on button press in pushbutton_DWCJ.
function pushbutton_DWCJ_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_DWCJ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
R0=get(handles.edit_DZ,'String');%将输入的值作为字符变量R0
R= str2num(R0);%得到R的值
L0=get(handles.edit_DG,'String');%将输入的值作为字符变量LO
L= str2num(L0);%得到L的值
I0=get(handles.edit_CSDL,'String');%将输入的值作为字符变量IO
i0 = str2num(I0);%得到i0的值
choose1= get(handles.popupmenu_XYXH,'value');
choose4= get(handles.popupmenu_JLXH,'value');
if (isempty(R)||isempty(L)||isempty(i0)||R<=0||L<=0)
    msgbox('input error,please check','warn','warn');
    return;
end
guidata(hObject, handles);

t=-10:0.01:10;
global k;
global z1;
switch choose1
    case 1
        k=0;%响应信号为电感电流
    case 2
        k=10;%响应信号为电阻电流
    case 3
        k=100;%响应信号为电感电压
end
switch choose4
    case 1
        k=k+1;%激励信号为u(t)
    case 2
        k=k+2;%激励信号为sin(t)u(t）
    case 3
        k=k+3;%激励信号为u(t)-u(t-5)
    case 4
        k=k+4;%激励信号为exp(-3t)u(t)
    case 5
        k=k+5;%激励信号为δ(t)
    case 6
        k=k+6;%激励信号为cos(t)u(t）
end
axes(handles.axes1);%绘制图形在坐标轴一
a0=num2str(R/L);
a1=num2str(R*R/L);%为简化表达式而做的计算
if (k==1||k==2||k==3||k==4||k==5||k==6)
    i=R/L*exp(-1/(L/R)*t).*(t>=0);%冲激响应的表达式
    z1=[a0,'*exp(-',a0,'*t)*u(t)'];%表达式的字符串形式
    plot(t,i);
elseif (k==11||k==12||k==13||k==14||k==15||k==16)
    i=-R/L*exp(-1/(L/R)*t).*(t>=0);
    z1=['-',a0,'*exp(-',a0,'*t)*u(t)'];
    plot(t,i);
elseif (k==101||k==102||k==103||k==104||k==105||k==106)
    i=-R*R/L*exp(-1/(L/R)*t).*(t>=0);
    z1=['-',a1,'*exp(-',a0,'*t)*(u(t)'];
    plot(t,i);
end
grid on;
axis([-2 7 min(i)-1 max(i)+1]);

% ---零输入（LSR）--- Executes on button press in pushbutton_LSR.
function pushbutton_LSR_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_LSR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
R0=get(handles.edit_DZ,'String');
R= str2num(R0);
L0=get(handles.edit_DG,'String');
L= str2num(L0);
I0=get(handles.edit_CSDL,'String');
i0 = str2num(I0);
choose1= get(handles.popupmenu_XYXH,'value');
choose4= get(handles.popupmenu_JLXH,'value');
if (isempty(R)||isempty(L)||isempty(i0)||R<=0||L<=0)
    msgbox('input error,please check','warn','warn');
    return;
end
guidata(hObject, handles);

t=-10:0.01:10;
global k;
global z2;

switch choose1
    case 1
        k=0;
    case 2
        k=10;
    case 3
        k=100;
end
switch choose4
    case 1
        k=k+1;
    case 2
        k=k+2;
    case 3
        k=k+3;
    case 4
        k=k+4;
    case 5
        k=k+5;
    case 6
        k=k+6;
end
axes(handles.axes2);%绘制零输入响应图形在坐标轴二
a0=num2str(R/L);
a1=num2str(i0*R);
if (k==1||k==2||k==3||k==4||k==5||k==6)
    i=i0*exp(-1/(L/R)*t).*(t>=0);
    z2=[I0,'*exp(-',a0,'*t)*u(t)'];
    plot(t,i);
elseif (k==11||k==12||k==13||k==14||k==15||k==16)
    i=-i0*exp(-1/(L/R)*t).*(t>=0);
    z2=['-',I0,'*exp(-',a0,'*t)*u(t)'];
    plot(t,i);
elseif (k==101||k==102||k==103||k==104||k==105||k==106)
    i=-i0*R*exp(-1/(L/R)*t).*(t>=0);
    z2=['-',a1,'*exp(-',a0,'*t)*u(t)'];
    plot(t,i);
end
grid on;
axis([-2 7 min(i)-1 max(i)+1]);

% ---零状态响应（LZT）--- Executes on button press in pushbutton_LZT.
function pushbutton_LZT_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_LZT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
R0=get(handles.edit_DZ,'String');
R= str2num(R0);
L0=get(handles.edit_DG,'String');
L= str2num(L0);
I0=get(handles.edit_CSDL,'String');
i0 = str2num(I0);
choose1= get(handles.popupmenu_XYXH,'value');
choose4= get(handles.popupmenu_JLXH,'value');
if (isempty(R)||isempty(L)||isempty(i0)||R<=0||L<=0)
    msgbox('input error,please check','warn','warn');
    return;
end
guidata(hObject, handles);

t=-10:0.01:10;
global k;
global z3;
switch choose1
    case 1
        k=0;
    case 2
        k=10;
    case 3
        k=100;
end
switch choose4
    case 1
        k=k+1;
    case 2
        k=k+2;
    case 3
        k=k+3;
    case 4
        k=k+4;
    case 5
        k=k+5;
    case 6
        k=k+6;
end
axes(handles.axes3);
a0=num2str(R/L);
a1=num2str(1/R);
a2=num2str(1/(R*R+L*L));
a3=num2str(L/(R*R*R+L*L*R));
a4=num2str(1/(R-3*L));
a5=num2str(1/L);
a6=num2str(L/(R*R+L*L));
a7=num2str(L*L/(R*(R*R+L*L)));
a8=num2str(-3*L/(R-3*L));
a14=num2str(R/(R*R+L*L));
a15=num2str(L/(R*R+L*L));
a16=num2str(L*L/(R*R+L*L));
a17=num2str(R*L/(R*R+L*L));%为了简化表达式而做的计算
if (k==1) %计算激励信号为u(t)时电感电流的零状态响应
    i=1/R*(1-exp(-1/(L/R)*t)).*(t>=0);
    z3=[a1,'*(1-exp(-',a0,'*t))*u(t)'];
    plot(t,i);
elseif (k==2)%计算激励信号为sin(t)u(t)时电感电流的零状态响应
    i=(1/(R*R+L*L)*sin(t)-L/(R*R*R+L*L*R)*cos(t)).*(t>=0);
    z3=['(',a2,'*sin(t)-',a3,'*cos(t))*u(t)'];
    plot(t,i);
elseif (k==3)%计算激励信号为u(t)-u(t-5)时电感电流的零状态响应
    i=(1-exp(-1/(L/R)*t)).*(t>=0)-(1-exp(-1/(L/R)*(t-5))).*(t>=5);
    z3=['(1-exp(-',a0,'*t))*u(t)-(1-exp(-',a0,'*(t-5)))*u(t-5)'];
    plot(t,i);
elseif (k==4) %计算激励信号为exp(-3t)u(t)时电感电流的零状态响应
    i=1/(R-3*L)*(exp(-3*t)).*(t>=0);
    z3=[a4,'*exp(-3t))*u(t)'];
    plot(t,i);
elseif (k==5) %计算激励信号为冲激信号时电感电流的零状态响应
    i=1/L*exp(-1/(L/R)*t).*(t>=0);
    z3=[a5,'*exp(-',a0,'*t)*u(t)'];
    plot(t,i);
    
elseif(k==6)
    i=(R/(R*R+L*L)*cos(t)+L/(R*R+L*L)*sin(t)).*(t>=0);
    z3=['(',a14,'*cos(t)+',a15,'*sin(t))'];
    plot(t,i);
    
elseif (k==11)%计算激励信号为u(t)时电阻电流的零状态响应
    i=1/R*(1-exp(-1/(L/R)*t)).*(t>=0);
    z3=[a1,'*(1-exp(-',a0,'*t))*u(t)'];
    plot(t,i);
elseif (k==12)%计算激励信号为sin(t)u(t)时电阻电流的零状态响应
    i=(1/(R*R+L*L)*sin(t)-L/(R*R*R+L*L*R)*cos(t)).*(t>=0);
    z3=['(',a2,'*sin(t)-',a3,'*cos(t))*u(t)'];
    plot(t,i);
elseif (k==13) %计算激励信号为u(t)-u(t-5)时电阻电流的零状态响应
     i=(1-exp(-1/(L/R)*t)).*(t>=0)-(1-exp(-1/(L/R)*(t-5))).*(t>=5);
    z3=['(1-exp(-',a0,'*t))*u(t)-(1-exp(-',a0,'*(t-5)))*u(t-5)'];
    plot(t,i);
elseif (k==14)%计算激励信号为exp(-3t)u(t)时电阻电流的零状态响应
    i=1/(R-3*L)*(exp(-3*t)).*(t>=0);
    z3=[a4,'*exp(-3t))*u(t)'];
    plot(t,i);
elseif (k==15)%计算激励信号为冲激信号时电阻电流的零状态响应
    i=1/L*exp(-1/(L/R)*t).*(t>=0);
    z3=[a5,'*exp(-',a0,'*t)*u(t)'];
    plot(t,i);
elseif(k==16)
    i=(R/(R*R+L*L)*cos(t)+L/(R*R+L*L)*sin(t)).*(t>=0);
    z3=['(',a14,'*cos(t)+',a15,'*sin(t))'];
    plot(t,i);
    
elseif (k==101) %计算激励信号为u(t)时电感电压的零状态响应
    i=exp(-1/(L/R)*t).*(t>=0);
    z3=['exp(-',a0,'*t)*u(t)'];
    plot(t,i);
elseif (k==102)%计算激励信号为sin(t)u(t)时电感电压的零状态响应
    i=(L/(R*R+L*L)*cos(t)+L*L/(R*(R*R+L*L))*sin(t)).*(t>=0);
    z3=['(',a6,'*cos(t)+',a7,'*sin(t))*u(t)'];
    plot(t,i);
elseif (k==103)%计算激励信号为u(t)-u(t-5)时电感电压的零状态响应
    i=exp(-1/(L/R)*t).*(t>=0)-exp(-1/(L/R)*(t-5)).*(t>=5);
    z3=['exp(-',a0,'*t)*u(t)-exp(-',a0,'*(t-5))*u(t-5)'];
    plot(t,i);
elseif (k==104)%计算激励信号为exp(-3t)u(t)时电感电压的零状态响应
    i=-3*L/(R-3*L)*exp(-3*t).*(t>=0);
    z3=[a8,'*exp(-3*t))*u(t)'];
    plot(t,i);
elseif (k==105)%计算激励信号为冲激信号时电感电压的零状态响应
    i=-R/L*exp(-1/(L/R)*t).*(t>=0);
    z3=['-',a0,'*exp(-',a0,'*t)*u(t)'];
    plot(t,i);
elseif(k==106)
    i=(L*L/(R*R+L*L)*cos(t)-R*L/(R*R+L*L)*sin(t)).*(t>=0);
    z3=[a16,'*cos(t)-',a17,'*sin(t)'];
    plot(t,i);
end
grid on;
axis([-2 7 min(i)-1 max(i)+1]);

% ---全响应（QXY）--- Executes on button press in pushbutton_QXY.
function pushbutton_QXY_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_QXY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
R0=get(handles.edit_DZ,'String');
R= str2num(R0);
L0=get(handles.edit_DG,'String');
L= str2num(L0);
I0=get(handles.edit_CSDL,'String');
i0 = str2num(I0);
choose1= get(handles.popupmenu_XYXH,'value');
choose4= get(handles.popupmenu_JLXH,'value');
if (isempty(R)||isempty(L)||isempty(i0)||R<=0||L<=0)
    msgbox('input error,please check','warn','warn');
    return;
end
guidata(hObject, handles);

t=-10:0.01:10;
global k;
global z4;
switch choose1
    case 1
        k=0;
    case 2
        k=10;
    case 3
        k=100;
end
switch choose4
    case 1
        k=k+1;
    case 2
        k=k+2;
    case 3
        k=k+3;
    case 4
        k=k+4;
    case 5
        k=k+5;
    case 6
        k=k+6;
end
axes(handles.axes4);
a0=num2str(R/L);
a1=num2str(1/R);
a2=num2str(1/(R*R+L*L));
a3=num2str(L/(R*R*R+L*L*R));
a4=num2str(1/(R-3*L));
a5=num2str(1/L);
a6=num2str(L/(R*R+L*L));
a7=num2str(L*L/(R*(R*R+L*L)));
a8=num2str(-3*L/(R-3*L));
a9=num2str(i0/(L/R));
a10=num2str(R/L+i0/(L/R));
a11=num2str(R/L+i0);
a12=num2str(i0*R);
a13=num2str(-(R*R/L+i0*R));
a14=num2str(R/(R*R+L*L));
a15=num2str(L/(R*R+L*L));
a16=num2str(L*L/(R*R+L*L));
a17=num2str(R*L/(R*R+L*L));%为了简化表达式而做的计算
if (k==1)%计算激励信号为u(t)时电感电流的全响应
    i=(1/R*(1-exp(-1/(L/R)*t)).*(t>=0)+i0*exp(-1/(L/R)*t)).*(t>=0);
    z4=['(',I0,'*exp(-',a0,'*t)+',a1,'*(1-exp*(-',a0,'*t))u(t)'];
    plot(t,i);
elseif (k==2)%计算激励信号为sin(t)u(t)时电感电流的全响应
    i=(1/(R*R+L*L)*sin(t)-L/(R*R*R+L*L*R)*cos(t)).*(t>=0)+i0*exp(-1/(L/R)*t).*(t>=0);
    z4=[I0,'*exp(-',a0,'*t)*u(t)+(',a2,'*sin(t)-',a3,'*cos(t))*u(t)'];
    plot(t,i);
elseif (k==3)%计算激励信号为u(t)-u(t-5)时电感电流的全响应
    i=(1-exp(-1/(L/R)*t)).*(t>=0)-(1-exp(-1/(L/R)*(t-5))).*(t>=5)+i0*exp(-1/(L/R)*t).*(t>=0);
    z4=[I0,'*exp(-',a0,'*t)*u(t)+(1-exp(-',a0,'*t))*u(t)+(1-exp(-',a0,'*(t-5)))*u(t-5)'];
    plot(t,i);
elseif (k==4)%计算激励信号为exp(-3t)u(t)时电感电流的全响应
    i=1/(R-3*L)*(exp(-3*t)).*(t>=0)+i0*exp(-1/(L/R)*t).*(t>=0);
    z4=[I0,'*exp(-',a0,'*t)*u(t)+',a4,'*exp(-3t))*u(t)'];
    plot(t,i);
elseif (k==5)%计算激励信号为冲激信号时电感电流的全响应
    i=(1/L+i0)*exp(-1/(L/R)*t).*(t>=0);
    z4=[I0,'*exp(-',a0,'*t)*u(t)+',a5,'*exp(-',a0,'*t)*u(t)'];
    plot(t,i);
elseif (k==6)
    i=(R/(R*R+L*L)*cos(t)+L/(R*R+L*L)*sin(t)+i0*exp(-1/(L/R)*t)).*(t>=0);
    z4=['(',I0,'*exp(-',a0,'*t)+',a14,'*cos(t)+',a15,'*sin(t))*u(t)'];
    plot(t,i);
    
    
elseif (k==11)%计算激励信号为u(t)时电阻电流的全响应
    i=(1/R*(1-exp(-1/(L/R)*t)).*(t>=0)-i0*exp(-1/(L/R)*t)).*(t>=0);
    z4=['-(',I0,'*exp(-',a0,'*t)+',a1,'*(1-exp*(-',a0,'*t))u(t)'];
    plot(t,i);
elseif (k==12)%计算激励信号为sin(t)u(t)时电阻电流的全响应
   i=(1/(R*R+L*L)*sin(t)-L/(R*R*R+L*L*R)*cos(t)).*(t>=0)-i0*exp(-1/(L/R)*t).*(t>=0);
    z4=['-',I0,'*exp(-',a0,'*t)*u(t)+(',a2,'*sin(t)-',a3,'*cos(t))*u(t)'];
    plot(t,i);
elseif (k==13)%计算激励信号为u(t)-u(t-5)时电阻电流的全响应
    i=(1-exp(-1/(L/R)*t)).*(t>=0)-(1-exp(-1/(L/R)*(t-5))).*(t>=5)-i0*exp(-1/(L/R)*t).*(t>=0);
    z4=['-',I0,'*exp(-',a0,'*t)*u(t)+(1-exp(-',a0,'*t))*u(t)+(1-exp(-',a0,'*(t-5)))*u(t-5)'];
    plot(t,i);
elseif (k==14)%计算激励信号为exp(-3t)u(t)时电阻电流的全响应
    i=1/(R-3*L)*(exp(-3*t)).*(t>=0)+i0*exp(-1/(L/R)*t).*(t>=0);
    z4=['-',I0,'*exp(-',a0,'*t)*u(t)+',a4,'*exp(-3t))*u(t)'];
    plot(t,i);
elseif (k==15) %计算激励信号为冲激信号时电阻电流的全响应
    i=(1/L-i0)*exp(-1/(L/R)*t).*(t>=0);
    z4=['-',I0,'*exp(-',a0,'*t)*u(t)+',a5,'*exp(-',a0,'*t)*u(t)'];
    plot(t,i);
elseif (k==16)
    i=(R/(R*R+L*L)*cos(t)+L/(R*R+L*L)*sin(t)-i0*exp(-1/(L/R)*t)).*(t>=0);
    z4=['(-',I0,'*exp(-',a0,'*t)+',a14,'*cos(t)+',a15,'*sin(t))*u(t)'];
    plot(t,i);
    
elseif (k==101)%计算激励信号为u(t)时电感电压的全响应
    i=exp(-1/(L/R)*t).*(t>=0)-i0/(L/R)*exp(-1/(L/R)*t).*(t>=0);
    z4=['-',a9,'*exp(-',a0,'*t)*u(t)+',a0,'*exp(-',a0,'*t)*u(t)'];
    plot(t,i);
elseif (k==102) %计算激励信号为sin(t)u(t)时电感电压的全响应
    i=(L/(R*R+L*L)*cos(t)+L*L/(R*(R*R+L*L))*sin(t)).*(t>=0)+i0*exp(-1/(L/R)*t).*(t>=0)-i0/(L/R)*exp(-1/(L/R)*t).*(t>=0);
    z4=['-',a9,'*exp(-',a0,'*t)*u(t)+(',a6,'*cos(t)+',a7,'*sin(t))*u(t)'];
    plot(t,i);
elseif (k==103)%计算激励信号为u(t)-u(t-5)时电感电压的全响应
    i=exp(-1/(L/R)*t).*(t>=0)-exp(-1/(L/R)*(t-5)).*(t>=5)-i0/(L/R)*exp(-1/(L/R)*t).*(t>=0);
    z4=['-',a9,'*exp(-',a0,'*t)*u(t)+exp(-',a0,'*t)*u(t)-','*exp(-',a0,'*(t-5))*u(t-5)'];
    plot(t,i);
elseif (k==104)%计算激励信号为exp(-3t)u(t)时电感电压的全响应
    i=-3*L/(R-3*L)*exp(-3*t).*(t>=0)-i0/(L/R)*exp(-1/(L/R)*t).*(t>=0);
    z4=['-',a9,'*exp(-',a0,'*t)*u(t)+',a8,'*exp(-3*t))*u(t)'];
    plot(t,i);
elseif (k==105)%计算激励信号为冲激信号时电感电压的全响应
    i=-(R/L+i0/(L/R))*exp(-1/(L/R)*t).*(t>=0);
    z4=['-',a10,'*exp(-',a0,'*t)*u(t)'];
    plot(t,i);
elseif (k==106)
    i=(L*L/(R*R+L*L)*cos(t)-L*R/(R*R+L*L)*sin(t)-i0*R*exp(-1/(L/R)*t)).*(t>=0);
    z4=['(-',a12,'*exp(-',a0,'*t)+',a16,'*cos(t)-',a17,'*sin(t))*u(t)'];
    plot(t,i);
end
grid on;
axis([-2 7 min(i)-1 max(i)+1]);

% --- Executes on selection change in popupmenu_XYXH.
function popupmenu_XYXH_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu_XYXH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu_XYXH contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu_XYXH


% --- Executes during object creation, after setting all properties.
function popupmenu_XYXH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu_XYXH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in popupmenu_JLXH.
function popupmenu_JLXH_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu_JLXH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu_JLXH contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu_JLXH


% --- Executes during object creation, after setting all properties.
function popupmenu_JLXH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu_JLXH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit_DZ_Callback(hObject, eventdata, handles)
% hObject    handle to edit_DZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_DZ as text
%        str2double(get(hObject,'String')) returns contents of edit_DZ as a double


% --- Executes during object creation, after setting all properties.
function edit_DZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_DZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit_DG_Callback(hObject, eventdata, handles)
% hObject    handle to edit_DG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_DG as text
%        str2double(get(hObject,'String')) returns contents of edit_DG as a double


% --- Executes during object creation, after setting all properties.
function edit_DG_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_DG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit_CSDL_Callback(hObject, eventdata, handles)
% hObject    handle to edit_CSDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_CSDL as text
%        str2double(get(hObject,'String')) returns contents of edit_CSDL as a double


% --- Executes during object creation, after setting all properties.
function edit_CSDL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_CSDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on button press in pushbutton_BACK.
function pushbutton_BACK_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_BACK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close gcf;
start;



% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global z1;%单位冲激响应的字符串形式
global z2;%零输入响应的字符串形式
global z3;%零状态响应的字符串形式
global z4;%全应的字符串形式
if isempty(z1)
    msgbox('calculate conv first','warn','warn');
    return
end
if isempty(z2)
    msgbox('calculate conv first','warn','warn');
    return
end
if isempty(z3)
    msgbox('calculate conv first','warn','warn');
    return
end
if isempty(z4)
    msgbox('calculate conv first','warn','warn');
    return
end
text={...
    ''
    '表达式'
    ''
    ''
    '单位冲激响应'
    ''
    [' '*ones(1,12),z1]
    ''
    '零输入响应'
    ''
    [' '*ones(1,12),z2]
    ''
    '零状态响应'
    ''
    [' '*ones(1,12),z3]
    ''
    '全响应'
    ''
    [' '*ones(1,12),z4]
    ''};%将z1,z2,z3,z4以字符串的形式输出
textwin('',text);

