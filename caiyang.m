function varargout = caiyang(varargin)
% CAIYANG M-file for caiyang.fig
%      CAIYANG, by itself, creates a new CAIYANG or raises the existing
%      singleton*.
%
%      H = CAIYANG returns the handle to a new CAIYANG or the handle to
%      the existing singleton*.
%
%      CAIYANG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CAIYANG.M with the given input arguments.
%
%      CAIYANG('Property','Value',...) creates a new CAIYANG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before caiyang_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to caiyang_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help caiyang

% Last Modified by GUIDE v2.5 19-Apr-2020 01:54:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @caiyang_OpeningFcn, ...
                   'gui_OutputFcn',  @caiyang_OutputFcn, ...
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


% --- Executes just before caiyang is made visible.
function caiyang_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to caiyang (see VARARGIN)
I=imread('pic.bmp','bmp');
axes(handles.axes1);
imshow(I);

% Choose default command line output for caiyang
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes caiyang wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = caiyang_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton_X.
function pushbutton_X_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global u;
global t;
global w;
global a;
global fx;
global flag;
global choose1;
global Wm;
flag=1;
fre1_given = str2num(get(handles.edit3,'String'));
u0= str2num(get(handles.edit_W,'String'));
if isempty(u0)
    msgbox('w should not be empty','warn','warn');
    return
else
    if length(u0)>1 %只能输入一个数值,length返回序列的长度
        msgbox('w should be a single number','warn','warn');
        return
    else
        u=u0(1);
        if u<=0
            msgbox('W should be positive ','warn','warn');
            return
        end
    end
end
choose1 = get(handles.popupmenu_XH,'value');
switch choose1
    case 1
        syms t w a
        x=sin(u*t)./(pi*t);
        x=subs(x,'u',u);
        axes(handles.axes2);
        cla;
        ezplot(x,[-10,10]);
        axis([-10 10 -0.5*u/pi 1.1*u/pi])
        grid on;
        fx=fourier(x);
        flag=0;
    case 2
        syms t w a 
        x=cos(u*t);
        x=subs(x,'u',u);
        axes(handles.axes2);
        cla;
        ezplot(x,[-10,10]);
        axis([-10 10 -1.1 1.1])
        grid on;
        fx=fourier(x);
end
axes(handles.axes3);
cla;
ezplot(fx,[-u-1,u+1]);
hold on;
g=(-u-1):0.01:(u+1);%cos(pi*t)时存在的冲击（单频率，ezplot无法覆盖到）
f=zeros(size(g));
% if flag == 1
%     for i=1:length(g)
%         if (g(i)==-u||g(i)==u)
%             f(i)=pi;
%         end
%     end
%     plot(g,f);
% end
for i=1:length(g)
    if (g(i)==-u||g(i)==u)
        if flag==0
            f(i)=1;
        else
            f(i)=pi;
        end
    end
end   
plot(g,f);
if flag==0
    axis([-u-1 u+1 0 1.1])
else
    axis([-1-u u+1 0 1.1*pi])
end
hold off;
grid on;
if u > fre1_given*pi
    msgbox('The max frequency is too large','warn','warn');
end
Wm = u0;


% --- Executes on button press in pushbutton_Xp.
function pushbutton_Xp_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_Xp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global t;
global u;
global w;
global xh;
global fx;
global flag;
if isempty(x) %检查是否先运行过X(t)
    msgbox('select signal first','warn','warn');
    return
end
fre1_given = str2num(get(handles.edit3,'String'));
g=-10:0.01:10;
if flag == 0
    g(1001) = 1; %第一种情况会在g = 0的时候出现分母为0的情况
    x=subs(x,'t',g);
    x(1001) = u/pi;
    g(1001) = 0;
else
    x=subs(x,'t',g);
end

% g(1001) = 1;
% x=subs(x,'t',g);
% x(1001) = u/pi;

h=zeros(size(g));%采样函数,频率2Hz                  
for i=1:length(g)
    if (mod(g(i),roundn(1/fre1_given,-2))==0)%使用roundn函数进行小数位保留，处理周期为无理数的情况
        h(i)=1;
    end
end
z=x.*h;
axes(handles.axes2);
cla;
plot(g,z,'r');
hold on;
plot(g,x,'--');
axis([-10 10 -1.1 1.1])
% if flag==0  %前面已将g = 0的点单独解决不需要再执行此操作
%     xh=zeros(size(g));
%     for i=1:length(g)
%         if g(i)==0
%             xh(i)=u/pi;
%         end
%     end
%     plot(g,xh,'r');
%     axis([-10 10 -0.5*u/pi 1.1*u/pi])
% end
hold off;
grid on;

g=(-u-1):0.01:(u+1);
f=subs(fx,w,g); %fx是信号的傅里叶变换

if flag == 1 %补充cos(w*t)的频域
    for i=1:length(g)
    if (g(i)==-u||g(i)==u)
        f(i)=pi;
    end
    end
end
% for i=1:length(g)
%     if (g(i)==-u||g(i)==u)
%         f(i)=1;
%     end
% end
%生成采样函数的傅里叶变换
g1=-37.5:0.01:37.5;
ht=zeros(size(g1));%时域相乘，频域卷积(角速度，不是频率)
for i=1:length(g1)
    if (mod(g1(i),roundn(fre1_given*2*pi,-1))==0)%相移应为4*pi,但分度值仅为0.01,所以用12.5进行近似
        ht(i)=roundn(2*pi*fre1_given,-2);
    end
end
xh=conv(double(f),ht)/(2*pi); %f为sym类型，不能进行卷积运算
axes(handles.axes3);
cla;
c=(-u-38.5):0.01:(u+38.5);
plot(c,xh);
axis([-u-38.5 u+38.5 0 1.1*max(xh)])
if (flag==0)
    axis([-38.5 38.5 0 1.1*max(xh)])
end
grid on
if u > fre1_given*pi
    msgbox('The max frequency is too large','warn','warn');
end



% --- Executes on button press in pushbutton_Y.
function pushbutton_Y_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global u;
global w;
global a;
global fx;
global xh;
global f3;
global flag;
global choose1;
if isempty(xh)
    msgbox('calculate sample spectrum first','warn','warn');
    return
end
fre1_given = str2num(get(handles.edit3,'String'));
fre2_given = str2num(get(handles.edit4,'String'));
g=(-u-38.5):0.01:(u+38.5);
f2=zeros(size(g));
for i=1:length(g)%构建低通滤波器系统函数
    if ((g(i)>=roundn(-2*pi*fre2_given,-2))&&(g(i)<=roundn(2*pi*fre2_given,-2)))
        f2(i)=roundn(1/fre1_given,-2);
    end
end
f3=xh.*f2;
axes(handles.axes3);
cla;
plot(g,f3);
axis([-u-38.5 u+38.5 0 1.1*max(f3)+1])
grid on

f=ifourier(fx);
for i=1:u/(pi*fre1_given) %对信号产生影响的频域分量
    fl=subs(fx,w,w+a);
    fr=subs(fx,w,w-a);
    b=i*roundn(2*pi*fre1_given,-1);%4*pi的近似
    fl=subs(fl,'a',b);
    fr=subs(fr,'a',b);
    syms w
    syms ay
    y=str2sym('heaviside(w+ay)-heaviside(w-ay)');
%     y='heaviside(w+ay)-heaviside(w-ay)';
    ay=roundn(2*pi*fre2_given,-2);%2*pi
    y=subs(y,'ay',ay);
    Fa=fl*y;%限制在低通滤波器的频率范围
    Fb=fr*y;
    fa=ifourier(Fa);
    fb=ifourier(Fb);
    f=f+fa+fb;
end
if choose1==2&&(u>2*pi*fre2_given)%coswt时，去除原始信号频率不在低通滤波器范围的频率分量
    f=f-ifourier(fx);
end
axes(handles.axes2);
cla;
g=-10:0.01:10;
if choose1 == 1%第一种情况避免出现分母为0的情况
    g(1001) = 1;
    F = subs(f,'x',g);
    F(1001) = (F(1000) + F(1002))/2;
    g(1001) = 0;
else
    F = subs(f,'x',g);
end
plot(g,F);
axis([-10 10 2*min(double(real(F)))-1 2*max(double(real(F)))+1])
grid on;
if u > fre1_given*pi
    msgbox('The max frequency is too large','warn','warn');
end


% --- Executes on selection change in popupmenu_XH.
function popupmenu_XH_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu_XH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu_XH contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu_XH


% --- Executes during object creation, after setting all properties.
function popupmenu_XH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu_XH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end





function edit_W_Callback(hObject, eventdata, handles)
% hObject    handle to edit_W (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_W as text
%        str2double(get(hObject,'String')) returns contents of edit_W as a double


% --- Executes during object creation, after setting all properties.
function edit_W_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_W (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end




% --- Executes on button press in pushbutton_Back.
function pushbutton_Back_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_Back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close gcf;
start;



% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2



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
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
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
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Wm;
fs = str2num(get(handles.edit3,'String'));
fc = str2num(get(handles.edit4,'String'));
wm = num2str(Wm);
if ((2*pi*fs>2*Wm)&&(2*fc*pi>Wm))
    if ((2*pi*fc<2*pi*fs-Wm))
        msgbox('fs fc满足可恢复的条件','warn','warn');
    else
        msgbox('fs fc不满足可恢复的条件','warn','warn');
    end
else
    msgbox('fs fc不满足可恢复的条件','warn','warn');
end

