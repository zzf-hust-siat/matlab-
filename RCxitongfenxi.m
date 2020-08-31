function varargout = RCxitongfenxi(varargin)
% RCXITONGFENXI M-file for RCxitongfenxi.fig
%      RCXITONGFENXI, by itself, creates a new RCXITONGFENXI or raises the existing
%      singleton*.
%
%      H = RCXITONGFENXI returns the handle to a new RCXITONGFENXI or the handle to
%      the existing singleton*.
%
%      RCXITONGFENXI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RCXITONGFENXI.M with the given input arguments.
%
%      RCXITONGFENXI('Property','Value',...) creates a new RCXITONGFENXI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RCxitongfenxi_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RCxitongfenxi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help RCxitongfenxi

% Last Modified by GUIDE v2.5 19-Dec-2018 20:28:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @RCxitongfenxi_OpeningFcn, ...
    'gui_OutputFcn',  @RCxitongfenxi_OutputFcn, ...
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


% --- Executes just before RCxitongfenxi is made visible.
function RCxitongfenxi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RCxitongfenxi (see VARARGIN)

% Choose default command line output for RCxitongfenxi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RCxitongfenxi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RCxitongfenxi_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, ~, handles)%单位冲激响应
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
R0=get(handles.edit1,'String');
R= str2num(R0);%得到输入R的值
C0=get(handles.edit3,'String');
C= str2num(C0);%得到输入C的值
U=get(handles.edit4,'String');
u0 = str2num(U);%得到输入的u0的值
choose1= get(handles.popupmenu1,'value');%将下拉窗口的值作为choose1保存
choose4= get(handles.popupmenu4,'value');%将下拉窗口的值作为choose4保存
if (isempty(R)||isempty(C)||isempty(u0)||R<=0||C<=0)
    msgbox('input error,please check','warn','warn');
    return;
end
guidata(hObject, handles);

t=-10:0.01:10;
global k;
global z1;%用于存放输出字符串的变量
switch choose1
    case 1
        k=0;%响应信号为电阻电压
    case 2
        k=10;%响应信号为电容电压
    case 3
        k=100;%响应信号为回路电流
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
axes(handles.axes1);
a0=num2str(1/(R*C));
a1=num2str(1/(R*R*C));
if (k==1||k==2||k==3||k==4||k==5||k==6)
    u=-1/(R*C)*exp(-1/(R*C)*t).*(t>=0);
    z1=['-',a0,'*exp(-',a0,'*t)*u(t)'];%该情况下的冲激响应表达式
    plot(t,u);
elseif (k==11||k==12||k==13||k==14||k==15||k==16)
    u=1/(R*C)*exp(-1/(R*C)*t).*(t>=0);
    z1=[a0,'*exp(-',a0,'*t)*u(t)'];
    plot(t,u);
elseif (k==101||k==102||k==103||k==104||k==105||k==106)
    u=-1/(R*R*C)*exp(-1/(R*C)*t).*(t>=0);
    z1=['-',a1,'*exp(-',a0,'*t)*u(t)'];
    plot(t,u);
end
grid on;
axis([-2 7 min(u)-1 max(u)+1]);

function pushbutton2_Callback(hObject, eventdata, handles)%生成零输入响应图形
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
R0=get(handles.edit1,'String');
R= str2num(R0);%得到输入R的值
C0=get(handles.edit3,'String');
C= str2num(C0);%得到输入C的值
U=get(handles.edit4,'String');
u0 = str2num(U);%得到输入的u0的值
choose1= get(handles.popupmenu1,'value');
choose4= get(handles.popupmenu4,'value');
if (isempty(R)||isempty(C)||isempty(u0)||R<=0||C<=0)
    msgbox('input error,please check','warn','warn');
    return;
end
guidata(hObject, handles);
t=-10:0.01:10;
global k;
global z2;
switch choose1
    case 1
        k=0;%响应信号为电阻电压
    case 2
        k=10;%响应信号为电容电压
    case 3
        k=100;%响应信号为回路电流
        
end
switch choose4
    case 1
        k=k+1;%激励信号为u(t)
    case 2
        k=k+2;%激励信号为sin(t)u(t)
    case 3
        k=k+3;%激励信号为u(t)-u(t-5)
    case 4
        k=k+4;%激励信号为exp(-3t)u(t)
    case 5
        k=k+5;%激励信号为冲激信号
    case 6
        k=k+6;%激励信号为cos(t)u(t)
end
axes(handles.axes2);
a0=num2str(1/(R*C));
a10=num2str(u0/R);%为使表达式最简化而做的计算
if (k==1||k==2||k==3||k==4||k==5||k==6)
    u=-u0*exp(-1/(R*C)*t).*(t>=0);
    z2=['-',U,'*exp(-',a0,'*t)*u(t)'];
    plot(t,u);
elseif (k==11||k==12||k==13||k==14||k==15||k==16)
    u=u0*exp(-1/(R*C)*t).*(t>=0);
    z2=[U,'*exp(-',a0,'*t)*u（t）'];
    plot(t,u);
elseif (k==101||k==102||k==103||k==104||k==105||k==106)
    u=u0/R*exp(-1/(R*C)*t).*(t>=0);
    z2=[a10,'*exp(-',a0,'*t)u（t）'];
    plot(t,u);
end
grid on;
axis([-2 7 min(u)-1 max(u)+1]);
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)%零状态响应
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
R0=get(handles.edit1,'String');
R= str2num(R0);%得到输入R的值
C0=get(handles.edit3,'String');
C= str2num(C0);%得到输入C的值
U=get(handles.edit4,'String');
u0 = str2num(U);%得到输入的u0的值
choose1= get(handles.popupmenu1,'value');
choose4= get(handles.popupmenu4,'value');
if (isempty(R)||isempty(C)||isempty(u0)||R<=0||C<=0)
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
a0=num2str(1/(R*C));
a1=num2str(1/(R*C*R*C+1));
a2=num2str(R*C);
a3=num2str(1/(1-3*R*C));
a4=num2str(3*R*C);
a5=num2str(1/(R*C+1));
a6=num2str(1/R);
a7=num2str(-3*C/(1-3*R*C));
a8=num2str(-1/(R*R*C));
a9=num2str(C/(1+R*C));
a10=num2str(R*C/(1+R*C));
a11=num2str(R*C/(1+R*R*C*C));
a12=num2str(1/(1+R*R*C*C));
a13=num2str(R*R*C*C/(1+R*R*C*C));
a14=num2str(R*C*C/(1+R*R*C*C));
a15=num2str(C/(1+R*R*C*C));%为使表达式最简化而做的计算
if (k==1)%u(t)激励下电阻电压的零状态响应
    u=(1-exp(-1/(R*C)*t)).*(t>=0);
    z3=['(1-exp(-',a0,'*t)*u(t)'];
    plot(t,u);
elseif (k==2) %sin(t)u(t)激励下电阻电压的零状态响应 
    u=(1/(R*C*R*C+1)*(sin(t)-R*C*cos(t))).*(t>=0);
    z3=['(',a1,'*(sin(t)-',a2,'cos(t)))*u(t)'];
    plot(t,u);
elseif (k==3)%u(t)-u(t-5)激励下电阻电压的零状态响应
    u=exp(-1/(R*C)*t).*(t>=0)-exp(-1/(R*C)*(t-5)).*(t>=5);
    z3=['exp(-',a0,'*t)*u(t)-exp(-',a0,'*(t-5))*u(t-5)'];
    plot(t,u);
elseif (k==4)%exp(-3t)u(t)激励下电阻电压的零状态响应
    u=1/(1-3*R*C)*exp(-3*t).*(t>=0);
    z3=[a3,'*exp(-3*t)*u(t)'];
    plot(t,u); 
elseif (k==5)%冲激信号激励下电阻电压的零状态响应
    u=-1/(R*C)*exp(-1/(R*C)*t).*(t>=0);
    z3=['-',a0,'*exp(-',a0,'*t)*u(t)'];
    plot(t,u);
elseif (k==6)
    u=(R*C/(1+R*R*C*C)*sin(t)+1/(1+R*R*C*C)*cos(t)).*(t>=0);
    z3=['(',a11,'*sin(t)+',a12,'*cos(t))*u(t)'];
    plot(t,u);
    
elseif (k==11)%u(t)激励下电容电压的零状态响应
   u=(1-exp(-1/(R*C)*t)).*(t>=0);
    z3=['(1-exp(-',a0,'*t)*u(t)'];
    plot(t,u);
elseif (k==12) %sin(t)u(t)激励下电容电压的零状态响应
    u=(1/(R*C*R*C+1)*(sin(t)-R*C*cos(t))).*(t>=0);
    z3=['(',a1,'*(sin(t)-',a2,'cos(t)))*u(t)'];
    plot(t,u);
elseif (k==13)%u(t)-u(t-5)激励下电容电压的零状态响应
   u=exp(-1/(R*C)*t).*(t>=0)-exp(-1/(R*C)*(t-5)).*(t>=5);
    z3=['exp(-',a0,'*t)*u(t)-exp(-',a0,'*(t-5))*u(t-5)'];
    plot(t,u);
elseif (k==14)%exp(-3t)u(t)激励下电容电压的零状态响应
   u=1/(1-3*R*C)*exp(-3*t).*(t>=0);
    z3=[a3,'*exp(-3*t)*u(t)'];
    plot(t,u); 
elseif (k==15)%冲激信号激励下电容电压的零状态响应
   u=-1/(R*C)*exp(-1/(R*C)*t).*(t>=0);
    z3=['-',a0,'*exp(-',a0,'*t)*u(t)'];
    plot(t,u);
elseif (k==16)
    u=(R*R*C*C/(1+R*R*C*C)*cos(t)-R*C/(1+R*R*C*C)*sin(t)).*(t>=0);
    z3=['(',a13,'*cos(t)-',a11,'*sin(t))*u(t)'];
    plot(t,u);
    
elseif (k==101)%u(t)激励下回路电流的零状态响应
    u=-1/R*exp(-1/(R*C)*t).*(t>=0);
    z3=['-',a6,'*exp(-',a0,'*t)*u(t)'];
    plot(t,u);
elseif (k==102) %sin(t)u(t)激励下回路电流的零状态响应
    u=1/(R*R*C*C+1)*(R*C*sin(t)-C*cos(t)).*(t>=0);
    z3=[a1,'*(',a2,'*sin(t)-',C0,'*cos(t))*u(t)'];
    plot(t,u);
elseif (k==103)%u(t)-u(t-5)激励下回路电流的零状态响应
    u=-1/R*exp(-1/(R*C)*t).*(t>=0)+1/R*exp(-1/(R*C)*(t-5)).*(t>=5);
    z3=['-',a6,'*exp(-',a0,'*t)*u(t)+',a6,'*exp(-',a0,'*(t-5))*u(t-5)'];
    plot(t,u);
elseif (k==104)%exp(-3t)u(t)激励下回路电流的零状态响应
    u=-3*C/(1-3*R*C)*exp(-3*t).*(t>=0);
    z3=[a7,'*exp(-3*t))*u(t)'];
    plot(t,u); 
elseif (k==105)%冲激信号激励下回路电流的零状态响应
    u=-1/(R*R*C)*exp(-1/(R*C)*t).*(t>=0);
    z3=[a8,'*exp(-',a0,'*t)*u(t)'];
    plot(t,u);    
elseif (k==106)
    u=(R*C*C/(1+R*R*C*C)*cos(t)-C/(1+R*R*C*C)*sin(t)).*(t>=0);
    z3=['(',a14,'*cos(t)-',a15,'*sin(t))*u(t)'];
    plot(t,u);
end
grid on;
axis([-2 7 min(u)-1 max(u)+1]);
% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)%全响应图形的生成
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --- Executes on selection change in popupmenu1.
R0=get(handles.edit1,'String');%得到字符变量R0
R= str2num(R0);%得到输入R的值
C0=get(handles.edit3,'String');%得到字符变量C0
C= str2num(C0);%得到输入C的值
U=get(handles.edit4,'String');%得到字符变量U
u0 = str2num(U);%得到输入的u0的值
choose1= get(handles.popupmenu1,'value');
choose4= get(handles.popupmenu4,'value');
if (isempty(R)||isempty(C)||isempty(u0)||R<=0||C<=0)
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
a0=num2str(1/(R*C));
a1=num2str(1/(R*C*R*C+1));
a2=num2str(R*C);
a3=num2str(1/(1-3*R*C));
a4=num2str(u0/R);
a5=num2str(1/(R*C+1));
a6=num2str(1/R);
a7=num2str(-3*C/(1-3*R*C));
a8=num2str(-1/(R*R*C));
a9=num2str(C/(1+R*C));
a10=num2str(R*C/(1+R*C));
a11=num2str(R*C/(1+R*R*C*C));
a12=num2str(1/(1+R*R*C*C));
a13=num2str(R*R*C*C/(1+R*R*C*C));
a14=num2str(R*C*C/(1+R*R*C*C));
a15=num2str(C/(1+R*R*C*C));
if (k==1)%u(t)激励下电阻电压的全响应
    u=(1-exp(-1/(R*C)*t)).*(t>=0)-u0*exp(-1/(R*C)*t).*(t>=0);
    z4=['-',U,'*exp(-',a0,'*t)*u(t)+(1-exp(-',a0,'*t))*u(t)'];
    plot(t,u);
elseif (k==2)%sin(t)u(t)激励下电阻电压的全响应
    u=(1/(R*C*R*C+1)*(sin(t)-R*C*cos(t))).*(t>=0)-u0*exp(-1/(R*C)*t).*(t>=0);
    z4=['-',U,'*exp(-',a0,'*t)*u(t)+',a1,'*(sin(t)-',a2,'cos(t))*u(t)'];
    plot(t,u);
elseif (k==3)%u(t)-u(t-5)激励下电阻电压的全响应
    u=exp(-1/(R*C)*t).*(t>=0)-exp(-1/(R*C)*(t-5)).*(t>=5)-u0*exp(-1/(R*C)*t).*(t>=0);
    z4=['-',U,'*exp(-',a0,'*t)*u(t)+exp(-',a0,'*t)*u(t)-exp(-',a0,'*(t-5))*u(t-5)'];
    plot(t,u);
elseif (k==4)%exp(-3t)u(t)激励下电阻电压的全响应
    u=1/(1-3*R*C)*exp(-3*t).*(t>=0)-u0*exp(-1/(R*C)*t).*(t>=0);
    z4=['-',U,'*exp(-',a0,'*t)*u(t)+',a3,'*exp(-3*t)*u(t)'];
    plot(t,u); 
elseif (k==5)%冲激信号激励下电阻电压的全响应
    u=-1/(R*C)*exp(-1/(R*C)*t).*(t>=0)-u0*exp(-1/(R*C)*t).*(t>=0);
    z4=['-',U,'*exp(-',a0,'*t)*u(t)-',a0,'*exp(-',a0,'*t)*u(t)'];
    plot(t,u);
elseif (k==6)
    u=(R*C/(1+R*R*C*C)*sin(t)+1/(1+R*R*C*C)*cos(t)-u0*exp(-1/(R*C)*t)).*(t>=0);
    z4=['(-',U,'*exp(-',a0,'*t)+',a11,'*sin(t)+',a12,'*cos(t))*u(t)'];
    plot(t,u);
    
    
elseif (k==11)%u(t)激励下电容电压的全响应
    u=(1-exp(-1/(R*C)*t)).*(t>=0)+u0*exp(-1/(R*C)*t).*(t>=0);
    z4=[U,'*exp(-',a0,'*t)*u(t)+(1-exp(-',a0,'*t))*u(t)'];
    plot(t,u);
elseif (k==12) %sin(t)u(t)激励下电容电压的全响应
    u=(1/(R*C*R*C+1)*(sin(t)-R*C*cos(t))).*(t>=0)+u0*exp(-1/(R*C)*t).*(t>=0);
    z4=[U,'*exp(-',a0,'*t)*u(t)+',a1,'*(sin(t)-',a2,'cos(t))*u(t)'];
    plot(t,u);
elseif (k==13)%u(t)-u(t-5)激励下电容电压的全响应
    u=exp(-1/(R*C)*t).*(t>=0)-exp(-1/(R*C)*(t-5)).*(t>=5)+u0*exp(-1/(R*C)*t).*(t>=0);
    z4=[U,'*exp(-',a0,'*t)*u(t)+exp(-',a0,'*t)*u(t)-exp(-',a0,'*(t-5))*u(t-5)'];
    plot(t,u);
elseif (k==14) %exp(t)u(t)激励下电容电压的全响应
    u=1/(1-3*R*C)*exp(-3*t).*(t>=0)+u0*exp(-1/(R*C)*t).*(t>=0);
    z4=[U,'*exp(-',a0,'*t)*u(t)+',a3,'*exp(-3*t)*u(t)'];
    plot(t,u); 
elseif (k==15)%冲激信号激励下电容电压的全响应
     u=-1/(R*C)*exp(-1/(R*C)*t).*(t>=0)+u0*exp(-1/(R*C)*t).*(t>=0);
    z4=[U,'*exp(-',a0,'*t)*u(t)-',a0,'*exp(-',a0,'*t)*u(t)'];
    plot(t,u);
    
elseif (k==16)
    u=(R*R*C*C/(1+R*R*C*C)*cos(t)-R*C/(1+R*R*C*C)*sin(t)+u0*exp(-1/(R*C)*t)).*(t>=0);
    z4=['(',U,'*exp(-',a0,'*t)+',a13,'*cos(t)-',a11,'*sin(t))*u(t)'];
    plot(t,u);
    
elseif (k==101)%u(t)激励下回路电流的全响应
    u=-1/R*exp(-1/(R*C)*t).*(t>=0)+u0/R*exp(-1/(R*C)*t).*(t>=0);
    z4=[a4,'*exp(-',a0,'*t)u（t）-',a6,'*exp(-',a0,'*t)*u(t)'];
    plot(t,u);
elseif (k==102)%sin(t)u(t)激励下回路电流的全响应
    u=1/(R*R*C*C+1)*(R*C*sin(t)-C*cos(t)).*(t>=0)+u0/R*exp(-1/(R*C)*t).*(t>=0);
    z4=[a4,'*exp(-',a0,'*t)u（t）+',a1,'*(',a2,'*sin(t)-',C0,'*cos(t)-exp(-',a0,'*t))*u(t)'];
    plot(t,u);
elseif (k==103)%u(t)-u(t-5)激励下回路电流的全响应
    u=-1/R*exp(-1/(R*C)*t).*(t>=0)+1/R*exp(-1/(R*C)*(t-5)).*(t>=5)+u0/R*exp(-1/(R*C)*t).*(t>=0);
    z4=[a4,'*exp(-',a0,'*t)u（t）-',a6,'*exp(-',a0,'*t)*u(t)+',a6,'*exp(-',a0,'*(t-5))*u(t-5)'];
    plot(t,u);
elseif (k==104)%exp(-3t)u(t)激励下回路电流的全响应
    u=-3*C/(1-3*R*C)*exp(-3*t).*(t>=0)+u0/R*exp(-1/(R*C)*t).*(t>=0);
    z4=[a4,'*exp(-',a0,'*t)u（t）+',a7,'*(exp(-3*t))*u(t)'];
    plot(t,u); 
elseif (k==105)%冲激信号激励下回路电流的全响应
    u=-1/(R*R*C)*exp(-1/(R*C)*t).*(t>=0)+u0/R*exp(-1/(R*C)*t).*(t>=0);
    z4=[a4,'*exp(-',a0,'*t)u（t）+',a8,'*exp(-',a0,'*t)*u(t)'];
    plot(t,u);
elseif (k==106)
    u=(R*C*C/(1+R*R*C*C)*cos(t)-C/(1+R*R*C*C)*sin(t)+u0/R*exp(-1/(R*C)*t)).*(t>=0);
    z4=['(',a4,'*exp(-',a0,'*t)+',a14,'*cos(t)-',a15,'*sin(t))*u(t)'];
    plot(t,u);
end
grid on;
axis([-2 7 min(u)-1 max(u)+1]);
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




% --- Executes on button press in pushbutton6.
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




% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)%将表达式文本输出
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global z1;%用于存放单位冲激响应表达式的变量
global z2;%用于存放零输入表达式的变量
global z3;%用于存放零状态表达式的变量
global z4;%用于存放全响应表达式的变量
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
    ''};%将z1,z2,z3,z4输出
textwin('',text);
