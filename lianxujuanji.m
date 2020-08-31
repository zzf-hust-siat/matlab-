function varargout = lianxujuanji(varargin)
% LIANXUJUANJI M-file for lianxujuanji.fig
%      LIANXUJUANJI, by itself, creates a new LIANXUJUANJI or raises the existing
%      singleton*.
%
%      H = LIANXUJUANJI returns the handle to a new LIANXUJUANJI or the handle to
%      the existing singleton*.
%
%      LIANXUJUANJI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LIANXUJUANJI.M with the given input arguments.
%
%      LIANXUJUANJI('Property','Value',...) creates a new LIANXUJUANJI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lianxujuanji_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lianxujuanji_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help lianxujuanji

% Last Modified by GUIDE v2.5 26-May-2009 21:37:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @lianxujuanji_OpeningFcn, ...
    'gui_OutputFcn',  @lianxujuanji_OutputFcn, ...
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

% --- Executes just before lianxujuanji is made visible.
function lianxujuanji_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lianxujuanji (see VARARGIN)

% Choose default command line output for lianxujuanji
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lianxujuanji wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = lianxujuanji_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu7.
function popupmenu7_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu7 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu7


% --- Executes during object creation, after setting all properties.
function popupmenu7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

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

function edita1_Callback(hObject, eventdata, handles)
% hObject    handle to edita1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edita1 as text
%        str2double(get(hObject,'String')) returns contents of edita1 as a double
global a10;
a10 = str2double(get(hObject,'String'));
guidata(hObject, handles);

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
global b10;
b10 = str2double(get(hObject,'String'));
guidata(hObject, handles);

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


function edita2_Callback(hObject, eventdata, handles)
% hObject    handle to edita2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edita2 as text
%        str2double(get(hObject,'String')) returns contents of edita2 as a double
global a20;
a20 = str2double(get(hObject,'String'));
guidata(hObject, handles);

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
global b20;
b20 = str2double(get(hObject,'String'));
guidata(hObject, handles);

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

% 绘制x图形
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
syms t;
global x;
global a1;
global b1;
global axs1;
global choose1;%函数x的种类
global axs11;
global x1;
global a10;%输入的a的值
global b10;%输入的b的值
a1=a10;
b1=b10;
%判断边界条件
if isempty(a1)%a为一个数
    msgbox('input a first','warn','warn');
    return
else
    if length(a1)>1
        msgbox('a should be a single number','warn','warn');
        return
    else
        a1=a1(1);
    end
end
if isempty(b1)%b为一个数
    msgbox('input b first','warn','warn');
    return
else
    if length(b1)>1
        msgbox('b should be a single number','warn','warn');
        return
    else
        b1=b1(1);
    end
end
choose1 = get(handles.popupmenu7,'value');
switch choose1
    case 1%门函数
        if b1<=0
            msgbox('b should be positive','warn','warn');
            return
        end
        x=heaviside(t-(a1-b1/2))-heaviside(t-(a1+b1/2));%利用阶跃函数构建门函数
        axes(handles.axes1);%画图像在坐标轴1
        axs1=[(a1-b1/2)-3 (a1+b1/2)+3];
        axs11=a1-b1/2-3:0.1:a1+b1/2+3;
        x1=double(subs(x,t,axs11));%将x中的t替换为axs11
        x1(min(find(isnan(x1))))=1;
        x1(max(find(isnan(x1))))=0;%将阶跃函数中的inf值转化为0
        axis([(a1-b1/2-3),(a1+b1/2+3),0,1.1]);
        fplot(x,axs1);%画出门函数
        grid on;%图像保持
    case 2%三角函数
        if b1<=0
            msgbox('b should be positive','warn','warn');
            return
        end
        x=(heaviside(t-(a1-b1/2))-heaviside(t-a1))*(t-(a1-b1/2))*2/b1+(heaviside(t-a1)-heaviside(t-(a1+b1/2)))*(-t+(a1+b1/2))*2/b1;%利用阶跃函数构建三角函数
        axes(handles.axes1);
        axs1=[(a1-b1/2)-3 (a1+b1/2)+3];
        axis([(a1-b1/2)-3 (a1+b1/2)+3 0 1]);
        fplot(x,axs1);%画出中心为a,宽度为b的三角函数
        grid on;
    case 3%阶跃函数
        if a1==0
            msgbox('a can not be zero','warn','warn');
            return
        end
        x=heaviside(a1*t-b1);%阶跃函数表达式
        axs1=[b1/a1-3 b1/a1+3];
        axes(handles.axes1);
        axis([b1/a1-3,b1/a1+3,0,1.1]);
        fplot(x,axs1);
        grid on;
    case 4%冲激函数
        if a1==0
            msgbox('a can not be zero','warn','warn');
            return
        end
        x=dirac(a1*t-b1);%冲激函数表达式
        axs1=[b1/a1-3 b1/a1+3];
        axs11=(b1/a1-3):0.01:(b1/a1+3);
        axes(handles.axes1);
        axis([(b1/a1-3) (b1/a1+3) 0 1]);
        x1=subs(x,t,axs11);
        x1(find(x1==inf))=1;%将冲激函数的inf转化为1
        stairs(axs11,x1);
    case 5 %单边指数函数
        if a1==0
            msgbox('a can not be zero，due to some reasons that exist on sources codes','warn','warn');
            return
        end
        x=a1*exp(-abs(b1)*t)*heaviside(t);
        axs1=[-3 3];
		axs11=-3:0.01:3;
		axes(handles.axes1);
		x1=subs(x,t,axs11);
		stairs(axs11,x1);
		axis([-3 3 -0.5+a1*(a1<0) a1*(a1>0)+0.5]);
		grid on ;
    case 6 %由于代码中许多部分带有b1/a1，为了避免程序大面积改动，舍弃常数函数
        if a1==0
            msgbox('a can not be zero，due to some reasons that exsit on sources codes','warn','warn');
            return
        end
        x=sin(a1*t+b1)*heaviside(t);
        axs1=[-pi/a1  3*pi/a1];
		axs11=(-pi/abs(a1)):0.01:(3*pi/abs(a1));
		axes(handles.axes1);
		x1=subs(x,t,axs11);
		stairs(axs11,x1);
		axis([-pi/abs(a1)  3*pi/abs(a1)  -1.2  1.2]);
		grid on ;
end


% 绘制y图形
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
syms t;
global y;
global a2;
global b2;
global choose2;
global axs2;
global a20;
global b20;
a2=a20;%将输入的a20的值赋值给a2
b2=b20;%将输入的b20的值赋值给b2
if isempty(a2)
    msgbox('input a first','warn','warn');
    return
else
    if length(a2)>1
        msgbox('a should be a single number','warn','warn');
        return
    else
        a2=a2(1);
    end
end
if isempty(b2)
    msgbox('input b first','warn','warn');
    return
else
    if length(b2)>1
        msgbox('b should be a single number','warn','warn');
        return
    else
        b2=b2(1);
    end
end
choose2 = get(handles.popupmenu2,'value');%选择y函数的类型
switch choose2
    case 1
        if b2<=0
            msgbox('b should be positive','warn','warn');
            return
        end
        y=heaviside(t-(a2-b2/2))-heaviside(t-(a2+b2/2));
        axes(handles.axes2);
        axs2=[(a2-b2/2)-3 (a2+b2/2)+3];
        axis([(a2-b2/2-3),(a2+b2/2+3),0,1.1]);
        fplot(y,axs2,'r');%绘制y的图像并用红线
        grid on;
    case 2
        if b2<=0
            msgbox('b should be positive','warn','warn');
            return
        end
        y=(heaviside(t-(a2-b2/2))-heaviside(t-a2))*(t-(a2-b2/2))*2/b2+(heaviside(t-a2)-heaviside(t-(a2+b2/2)))*(-t+(a2+b2/2))*2/b2;
        axes(handles.axes2);
        axs2=[(a2-b2/2)-3 (a2+b2/2)+3];
        axis([a2-b2/2-3 a2+b2/2+3 0 1]);
        fplot(y,axs2,'r');%绘制y的图像并用红线
        grid on;
    case 3
        if a2==0
            msgbox('a can not be zero','warn','warn');
            return
        end
        y=heaviside(a2*t-b2);
        axs2=[b2/a2-3 b2/a2+3];
        axes(handles.axes2);
        axis([b2/a2-3,b2/a2+3,0,1.1]);
        fplot(y,axs2,'r');%绘制y的图像并用红线
        grid on;
    case 4
        if a2==0
            msgbox('a can not be zero','warn','warn');
            return
        end
        y=dirac(a2*t-b2);
        axs2=(b2/a2-3):0.01:(b2/a2+3);
        axes(handles.axes2);
        axis([(b2/a2-3) (b2/a2+3) 0 1]);
        y1=subs(y,t,axs2);
        y1(find(y1==inf))=1;%将inf值转化为1
        stairs(axs2,y1,'r');%利用阶梯函数绘制y的图像并用红线
        grid on;
    case 5 
        if a2==0
            msgbox('a can not be zero，due to some reasons that exsit on sources codes','warn','warn');
            return
        end
        y=a2*exp(-abs(b2)*t)*heaviside(t);
		axs22=-3:0.01:3;
		axes(handles.axes2);
		y1=subs(y,t,axs22);
		stairs(axs22,y1,'r');
		axis([-3 3 -0.5+a2*(a2<0) a2*(a2>0)+0.5]);
		grid on ;
    case 6 %由于代码中许多部分带有b2/a2，为了避免程序大面积改动，舍弃常数函数
        if a2==0
            msgbox('a can not be zero，due to some reasons that exsit on sources codes','warn','warn');
            return
        end
        y=sin(a2*t+b2)*heaviside(t);
		axs22=-pi/abs(a2):0.01:3*pi/abs(a2);
		axes(handles.axes2);
		y1=subs(y,t,axs22);
		stairs(axs22,y1,'r');
		axis([-pi/abs(a2) 3*pi/abs(a2) -1.2 1.2]);
		grid on ;
end


% 计算卷积
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a1;
global b1;
global a2;
global b2;
global x;
global y;
global choose2;
global choose1;
global axs1;
global axs2;
global axs11;
global x1;
syms t tao;%定义tao

if isempty(x)
    msgbox('select x first','warn','warn');
    return
end
if isempty(y)
    msgbox('select y first','warn','warn');
    return
end
axes(handles.axes3);%绘制计算过程的图像在坐标轴3
cla reset;
axes(handles.axes6);%绘制计算结果的图像在坐标轴6
cla reset;
axs3=axs1;
switch choose2
    case 1   %函数y为门函数
        axs3=[min(axs1) max(axs1)+b2-2];
        axs32=min(axs3):0.05:max(axs3)+0.05;
        x1=subs(x,t,axs32);
        switch choose1 
            case 1%函数x为门函数
                x1(min(find(isnan(x1))))=1;
                x1(max(find(isnan(x1))))=0;
                if b1>b2
                    axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,b2+0.4];
                else
                    axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,b1+0.4];
                end
            case 2%函数x为三角函数
                axs32=min(axs3):0.01:max(axs3)+0.05;%卷积的时候用
                x1=subs(x,t,axs32);
                if b1>b2
                    axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,b2];
                else
                    axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,b1/2+0.4];
                end
            case 3%函数x为阶跃函数
                if a1>=0
                    x1(isnan(x1))=1;
                    if (isempty(find(isnan(x1))))==1
                        k=find(x1==0);
                        x1(k(end))=1;%当函数中不存在nan值时将取值为0的最后一个点赋值为1
                    end
                else
                    x1(isnan(x1))=0;
                end
                axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,b2+0.4];
            case 4%函数x为冲激函数
                axs32=min(axs3):0.01:max(axs3)+0.05;
                x1=subs(x,t,axs32);%将x中的t用axs32替换
                x1(find(x1==inf))=1;
                axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,1.1];
                xy_tao=subs(x,t,tao)*subs(y,t,t-tao);%将x中的t用tao替换将y中的t用t-tao替换
                xy=simplify(simplify(int(xy_tao,tao,-100,100)));%卷积过程
            case 5 
                 axs32=min(axs3):0.01:max(axs3)+0.05;
                 x1=subs(x,t,axs32);
                 axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),(a1<0)*a1*b2+0,0+a1*b2*(a1>0)];
            case 6 
                 axs32=min(axs3):0.01:max(axs3)+0.05;
                 x1=subs(x,t,axs32);
                 axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),-b2,b2];
        end
        
        axs4=[(min(axs3)+(a2-b2/2))-0.05 (min(axs3)+(a2-b2/2))];
        y2=heaviside(t-(min(axs3)-b2))-heaviside(t-(min(axs3)));%门函数平移
        
        
        for i=min(axs3):0.05:max(axs3)+0.05%步长的确定
            axes(handles.axes3);%画图在坐标轴3
            if choose1==4  
                stairs(axs32,x1,'b');%x函数为冲激函数时用stairs画图
            else
                fplot(x,axs3);%x函数不为冲激函数时用fplot画图
            end
            hold on;
            y22=subs(y2,t,axs32);%将y2中的t用axs32替换
            y22(find(isnan(y22)))=y22(find(isnan(y22))+1);%迭代
            fplot(y2,axs3,'r');%在坐标轴上用红线画y2的图像
            grid on;
            y2=heaviside(t-(i-b2))-heaviside(t-i);%图像区间长度为b2
            hold off;
            if (choose1==4)
                axis tight;
                xlim([min(axs3),max(axs3)]);
            else
                axis([min(axs3),max(axs3),0,1.1]);
            end
            
            if (choose1==4)%x函数为冲激函数
                axes(handles.axes6);%绘制图像在坐标轴6
                fplot(xy,axs4);%绘制卷积结果
                grid on;
                axs4(2)=axs4(2)+0.05;%步长为0.05
                axis(axs444);
                pause(0.001);%等待用户响应
            else
                axes(handles.axes6);
                xy_tao=subs(x,t,tao)*subs(y,t,i+(a2-b2/2)-tao);%将x中的t用tao替换，将y中的t用i+(a2-b2/2)-tao替换
                xy=simplify(simplify(int(xy_tao,tao,-100,100)));%卷积过程
                axs44=(min(axs3)+(a2-b2/2)):0.05:(i+(a2-b2/2));
                k=round((i-min(axs3))/0.05+1);%寻找开始点附近的整数
                xy1(k)=double(xy);%将xy转换为duble类型
                plot(axs44,xy1);
                grid on;
                axis(axs444);
                pause(0.001);
            end
        end
        
    case 2  %函数y为三角函数
        axs3=[min(axs1) max(axs1)+b2-2];
        axs32=min(axs3):0.05:max(axs3)+0.05;
        x1=subs(x,t,axs32);
        switch choose1
            case 1
                x1(min(find(isnan(x1))))=1;
                x1(max(find(isnan(x1))))=0;
                if b1>b2
                    axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,b2/2+0.4];
                else
                    axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,b1];
                end
            case 2
                axs32=min(axs3):0.01:max(axs3)+0.05;
                x1=subs(x,t,axs32);
                if b1>b2
                    axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,b2/2];
                else
                    axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,b1/2];
                end
            case 3
                if a1>=0
                    x1(isnan(x1))=1;
                    if (isempty(find(isnan(x1))))==1
                        k=find(x1==0);
                        x1(k(end))=1;
                    end
                else
                    x1(isnan(x1))=0;
                end
                axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,b2/2+0.4];
            case 4
                axs32=min(axs3):0.01:max(axs3)+0.05;
                x1=subs(x,t,axs32);
                x1(find(x1==inf))=2;
                axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,1.1];
                xy_tao=subs(x,t,tao)*subs(y,t,t-tao);
                xy=simplify(simplify(int(xy_tao,tao,-100,100)));
            case 5
                axs32=min(axs3):0.01:max(axs3)+0.05;
                x1=subs(x,t,axs32);
                axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),(a1<0)*a1*b2/2+0,0+a1*b2/2*(a1>0)];
            case 6 
                axs32=min(axs3):0.01:max(axs3)+0.05;
                x1=subs(x,t,axs32);
                axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),-b2/2,b2/2];
        end
        
        axs4=[(min(axs3)+(a2-b2/2))-0.05 (min(axs3)+(a2-b2/2))];
        
        for i=min(axs3):0.05:max(axs3)+0.05
            axes(handles.axes3);
            if choose1==4
                stairs(axs32,x1,'b');
            else
                fplot(x,axs3);
            end
            grid on;
            hold on;
            axs33=(i-b2):0.05:i;
            y22=zeros(length(axs33));%创建与axs33维度相同的全零矩阵
            for k=1:length(axs33)
                if (axs33(k)>=(i-b2)&&axs33(k)<=(i-b2/2))%(i-b2)<axs33(k)<(i-b2/2)
                    y22(k)=(axs33(k)-(i-b2))*2/b2;
                else
                    y22(k)=(i-axs33(k))*2/b2;
                end
            end
            plot(axs33,y22,'r');
            grid on;
            hold off;
            axis([min(axs3),max(axs3),0.02,1.1]);
            
            if (choose1==4)%函数x为冲激函数
                axes(handles.axes6);
                fplot(xy,axs4);
                grid on;
                axs4(2)=axs4(2)+0.05;
                axis(axs444);
                pause(0.003);
            else
                axes(handles.axes6);
                xy_tao=subs(x,t,tao)*subs(y,t,i+(a2-b2/2)-tao);
                xy=simplify(simplify(int(xy_tao,tao,-100,100)));
                axs44=(min(axs3)+(a2-b2/2)):0.05:i+(a2-b2/2);
                k=round((i-min(axs3))/0.05+1);
                xy1(k)=double(xy);
                plot(axs44,xy1);
                grid on;
                axis(axs444);
                pause(0.001);
            end
        end
        
    case 3  %函数y为阶跃函数
        axs3=[min(axs1) max(axs1)+b2-2];
        axs32=min(axs3):0.05:max(axs3)+0.05;
        x1=subs(x,t,axs32);
        
        switch choose1
            case 1
                x1(min(find(isnan(x1))))=1;
                x1(max(find(isnan(x1))))=0;
                axs444=[min(axs3)+(b2/a2),max(axs3)+(b2/a2),0,b1+0.4];
                
            case 2
                axs32=min(axs3):0.01:max(axs3)+0.05;
                x1=subs(x,t,axs32);
                axs444=[min(axs3)+(b2/a2),max(axs3)+(b2/a2),0,b1/2+0.4];
            case 3
                if a1>=0
                    x1(isnan(x1))=1;
                else
                    x1(isnan(x1))=0;
                end
                axs444=[min(axs3)+(b2/a2),max(axs3)+(b2/a2),-0.05,3.05];
            case 4
                axs32=min(axs3):0.01:max(axs3)+0.05;
                x1=subs(x,t,axs32);
                x1(find(x1==inf))=2;
                axs444=[min(axs3)+(b2/a2),max(axs3)+(b2/a2),0,1.1];
            case 5
                axs32=min(axs3):0.01:max(axs3)+0.05;
                x1=subs(x,t,axs32);
                axs444=[min(axs3)+(b2/a2),max(axs3)+(b2/a2),(a1<0)*a1+0,0+a1*(a1>0)];
            case 6 
                axs32=min(axs3):0.01:max(axs3)+0.05;
                x1=subs(x,t,axs32);
                axs444=[min(axs3)+(b2/a2),max(axs3)+(b2/a2),-2/abs(a1),2/abs(a1)];
        end
        
        y2=heaviside(-(a2/abs(a2))*t+(a2/abs(a2))*min(axs3));
        if (choose1==3)||(choose1==4)
            axs4=[b1/a1+b2/a2-3.05 b1/a1+b2/a2-3];
        else
            axs4=[min(axs3)+(b2/a2),min(axs3)+(b2/a2)+0.05];
        end
        %axs4=[b1/a1+b2/a2-3.05 b1/a1+b2/a2-3];
        
        if (choose1==1)||(choose1==2)%函数x为门函数或三角函数
            
            for i=min(axs3):0.05:max(axs3)+0.1
                axes(handles.axes3);
                fplot(x,axs3);
                hold on;
                y22=subs(y2,t,axs32);
                fplot(y2,axs3,'r');
                grid on;
                y2=heaviside(-(a2/abs(a2))*t+(a2/abs(a2))*i);%y2的取值范围
                hold off;
                axis([min(axs3),max(axs3),-1.1,1.1]);
                axes(handles.axes6);
                xy_tao=subs(x,t,tao)*subs(y,t,i+b2/a2-tao);
                xy=simplify(simplify(int(xy_tao,tao,-inf,inf)));
                axs44=(min(axs3)+b2/a2):0.05:i+b2/a2;
                k=round((i+b2/a2-(min(axs3)+b2/a2))/0.05+1);
                xy1(k)=double(xy);
                plot(axs44,xy1);
                grid on;
                axis(axs444);
                pause(0.001);
            end
            
        else %函数x为其他函数
            if ((a1/abs(a1))~=(a2/abs(a2)))&&(choose1==3)
                msgbox('x、y都为阶跃函数时,两个a参数必须同号','warn','warn');
                return
            end
            xy_tao=subs(x,t,tao)*subs(y,t,t-tao);
            xy=simplify(simplify(int(xy_tao,tao,-100,100)));
            for i=min(axs3):0.05:max(axs3)+0.1
                axes(handles.axes3);
                if choose1==4
                    axs11=(b1/a1-3):0.01:(b1/a1+3);
                    x1=subs(x,t,axs11);
                    x1(find(x1==inf))=2;
                    stairs(axs11,x1,'b');
                else
                    fplot(x,axs3);
                end
                hold on;
                y22=subs(y2,t,axs32);
                y22(isnan(y22))=1;
                fplot(y2,axs3,'r');
                grid on;
                y2=heaviside(-(a2/abs(a2))*t+(a2/abs(a2))*i);
                hold off;
                axis(axs444);
                %axis([b1/a1-3,b1/a1+3,-1.1,1.1]);
                axes(handles.axes6);
                fplot(xy,axs4);
                grid on;
                axs4(2)=axs4(2)+0.05;
                axis(axs444);
                pause(0.001);
            end
        end
        
        
    case 4  %函数y为冲激函数
        axs3=[min(axs1) max(axs1)+b2-2];
        axs4=[min(axs1)+b2/a2-0.05 min(axs1)+b2/a2];
        if choose1==4   %冲激卷积，另外处理
            axs43=[b1/a1+b2/a2-0.01 b1/a1+b2/a2  b1/a1+b2/a2+0.01];
            xy3=[0 1 0];
        else
            xy_tao=subs(x,t,tao)*subs(y,t,t-tao);
            xy=simplify(simplify(int(xy_tao,tao,-inf,inf)));
        end
        for i=min(axs3):0.05:max(axs3)+0.05
            axes(handles.axes3);
            if choose1==4 %函数x为阶跃函数
                stairs(axs11,x1(1:1:length(axs11)));
            else
                fplot(x,axs3);
            end
            y2=dirac(t-i);
            axs32=min(axs3):0.005:i;
            hold on;
            y22=subs(y2,t,axs32);
            y22(end)=1;
            stairs(axs32,y22,'r');
            grid on;
            hold off;
            axis([min(axs3),max(axs3),0,2]);
            axes(handles.axes6);
            if choose1==4
                axs42=min(axs3)+b2/a2:0.05:i+b2/a2;
                xy2=zeros(length(axs42));
                plot(axs42,xy2,'b');
                grid on;
                if (i>=(b1/a1))
                    hold on;
                    stairs(axs43,xy3);
                    grid on;
                    hold off;
                end
            elseif choose1==6 %由于未知原因，将单边正弦信号单独处理
                axs44=axs4(1):0.01:axs4(2);
                stairs(axs44,real(subs(xy,t,axs44)));
                grid on;
                axs4(2)=axs4(2)+0.05;
            else
                fplot(xy,axs4);
                grid on;
                axs4(2)=axs4(2)+0.05;
            end
            axis([min(axs3)+b2/a2,max(axs3)+b2/a2,0,3]);
            pause(0.001);            
        end
        
    case 5
        axs3=[min(axs1) max(axs1)];
        axs32=min(axs3):0.05:max(axs3)+0.05;
        x1=subs(x,t,axs32);
        
        switch choose1
            case 1
                x1(min(find(x1==0.5)))=1;
                x1(max(find(x1==0.5)))=0;
                axs444=[min(axs3),max(axs3),a2*(a2<0),a2*(a2>=b1+0.4)+(b1+0.4)*(a2<b1+0.4)];
            case 2
                axs32=min(axs3):0.01:max(axs3)+0.05;
                x1=subs(x,t,axs32);
                axs444=[min(axs3),max(axs3),a2*(a2<0),a2*(a2>=b1/2+0.4)+(b1/2+0.4)*(a2<b1/2+0.4)];
            case 3
                if a1>=0
                    x1(x1==0.5)=1;
                    if (isempty(find(x1==0.5)))==1
                        k=find(x1==0);
                        x1(k(end))=1;
                    end
                else
                    x1(x1==0.5)=0;
                end
                axs444=[min(axs3),max(axs3),-a2/abs(b2),a2/abs(b2)];
            case 4
                axs32=min(axs3):0.01:max(axs3)+0.05;
                x1=subs(x,t,axs32);
                x1(find(x1==inf))=2;
                axs444=[min(axs3),max(axs3),-0.1+a2*(a2<0),a2*(a2>0)+0.1];
            case 5
                axs32=min(axs3):0.01:max(axs3)+0.05;
                x1=subs(x,t,axs32);
                axs444=[min(axs3),max(axs3),-a2/abs(b2),a2/abs(b2)];
            case 6
                axs32=min(axs3):0.01:max(axs3)+0.05;
                x1=subs(x,t,axs32);
                axs444=[min(axs3),max(axs3),-a2/abs(b2),a2/abs(b2)];
        end
        axs4=[min(axs3)-0.05  min(axs3)];
        xy_tao=subs(x,t,tao)*subs(y,t,t-tao);
        xy=simplify(simplify(int(xy_tao,tao,-100,100)));
        
        
        for i=min(axs3):0.05:max(axs3)+0.05
            
            axes(handles.axes3);
            stairs(axs32,x1);
            hold on;
            y2=a2*exp(-abs(b2)*(i-t))*heaviside(i-t);
            axs333=min(axs3):0.01:max(axs3)+0.01;
            y22=subs(y2,t,axs333);
            stairs(axs333,y22,'r');
            grid on;
            hold off;
            axis([axs444(1:2),-0.1-abs(a2),0.1+abs(a2)]);
            
            axes(handles.axes6);
            fplot(xy,axs4);
            grid on;
            axs4(2)=axs4(2)+0.05;
            
            axis(axs444);
            pause(0.001);
        end
    case 6  %choose2=6
        
        axs3=[min(axs1) max(axs1)];
        axs32=min(axs3):0.05:max(axs3)+0.05;
        x1=subs(x,t,axs32);
        
        switch choose1
            case 1
                x1(min(find(x1==0.5)))=1;
                x1(max(find(x1==0.5)))=0;
                axs444=[min(axs3),max(axs3),-1.5,1.5];
            case 2
                axs32=min(axs3):0.01:max(axs3)+0.05;
                x1=subs(x,t,axs32);
                axs444=[min(axs3),max(axs3),-1.5,b1/2+0.4];
            case 3
                if a1>=0
                    x1(x1==0.5)=1;
                    if (isempty(find(x1==0.5)))==1
                        k=find(x1==0);
                        x1(k(end))=1;
                    end
                else
                    x1(x1==0.5)=0;
                end
                axs444=[min(axs3),max(axs3),-2,2];
            case 4
                axs32=min(axs3):0.01:max(axs3)+0.05;
                x1=subs(x,t,axs32);
                x1(find(x1==inf))=2;
                axs444=[min(axs3),max(axs3),-1.5,1.5];
            case 5
                axs32=min(axs3):0.01:max(axs3)+0.05;
                x1=subs(x,t,axs32);
                axs444=[min(axs3),max(axs3),-abs(a1)/2,abs(a1)/2];
            case 6
                axs32=min(axs3):0.01:max(axs3)+0.05;
                x1=subs(x,t,axs32);
                axs444=[min(axs3),max(axs3),-1.1,1.1];
        end
        axs4=[min(axs3)-0.05  min(axs3)];
        xy_tao=subs(x,t,tao)*subs(y,t,t-tao);
        xy=simplify(simplify(int(xy_tao,tao,-50,50)));
        
        
        for i=min(axs3):0.05:max(axs3)+0.05
            
            axes(handles.axes3);
            stairs(axs32,x1);
            hold on;
            y2=sin(a2*(i-t)+b2)*heaviside(i-t);
            axs333=min(axs3):0.01:max(axs3)+0.01;
            y22=subs(y2,t,axs333);
            stairs(axs333,y22,'r');
            grid on;
            hold off;
            axis([axs444(1:2),-2,2]);
            
            axes(handles.axes6);
            fplot(xy,axs4);
            grid on;
            axs4(2)=axs4(2)+0.05;
            axis(axs444);
            pause(0.001);
        end
end


% 返回主窗口
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close gcf;
start;


% 改变窗体大小
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

