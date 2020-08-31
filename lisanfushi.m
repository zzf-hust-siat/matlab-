function varargout = lisanfushi(varargin)
% LISANFUSHI M-file for lisanfushi.fig
%      LISANFUSHI, by itself, creates a new LISANFUSHI or raises the existing
%      singleton*.
%。
%      H = LISANFUSHI returns the handle to a new LISANFUSHI or the handle to
%      the existing singleton*.
%
%      LISANFUSHI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LISANFUSHI.M with the given input arguments.
%
%      LISANFUSHI('Property','Value',...) creates a new LISANFUSHI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lisanfushi_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lisanfushi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help lisanfushi

% Last Modified by GUIDE v2.5 12-Dec-2019 10:57:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lisanfushi_OpeningFcn, ...
                   'gui_OutputFcn',  @lisanfushi_OutputFcn, ...
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


% --- Executes just before lisanfushi is made visible.
function lisanfushi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lisanfushi (see VARARGIN)

% Choose default command line output for lisanfushi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lisanfushi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = lisanfushi_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

 a = str2num(get(handles.edita1,'String'));
 b = str2num(get(handles.editb2,'String'));
 choose1 = get(handles.popupmenu1,'value');
 c = str2num(get(handles.edit3,'String'));
 d = str2num(get(handles.edit4,'String'));

switch choose1
    case 1
         if (isempty(a)||isempty(c)||isempty(d))
       errordlg('input error,please check','care');
            return;
         end
         if (abs(a)>1)
       errordlg('a must be less than 1','care');
            return;
         end
        guidata(hObject, handles);
        n=(fix(c)-1):(fix(d)+1);
        x=(n>=0).*(a.^n);
        axes(handles.axes1);
        stem(n,x);
        axis([c d -1 2]);
        grid on;
    case 2
         if (isempty(b)||isempty(c)||isempty(d))
       errordlg('input error,please check','care');
            return;
         end
     if (fix(b)~=b)
             errordlg('b must be integer');
             return;
     end
         guidata(hObject, handles);
         n=(fix(c)-1):(fix(d)+1);
         x=(n==b);
         axes(handles.axes1);
         stem(n,x);
         axis([c d -1 2]);
         grid on;
    case 3
         if (isempty(a)||isempty(c)||isempty(d))
            errordlg('input error,please check','care');
            return;
         end
         if (abs(a)>1)
       errordlg('a must be less than 1','care');
            return;
         end
         guidata(hObject, handles);
         n=(fix(c)-1):(fix(d)+1);
         x=a.^abs(n);
         axes(handles.axes1);
         stem(n,x);
         axis([c d -1 2]);
         grid on;
    case 4
         if (isempty(a)||isempty(b)||isempty(c)||isempty(d))
       errordlg('input error,please check','care');
            return;
         end
         guidata(hObject, handles);
         n=(fix(c)-1):(fix(d)+1);
         x=a*sin(b*n)./(pi*n); 
         axes(handles.axes1);
         stem(n,x);
         axis([c d -2 a*b/pi+3]);
         hold on;
         n=0:0;
         x=a*b/pi*(n==0); %单独画出n = 0的情况
         stem(n,x);
         hold off;
         grid on;
         
    case 5
         if (isempty(a)||isempty(b)||isempty(c)||isempty(d))
            errordlg('input error,please check','care');
            return;
         end
         guidata(hObject, handles);
          n=(fix(c)-1):(fix(d)+1);
          x=a*heaviside(n).*exp(-b*n);
          axes(handles.axes1);
          stem(n,x);
          axis([c d (min(x)-1) (max(x)+1)]);
          grid on;
         
    case 6
         if (isempty(a)||isempty(b)||isempty(c)||isempty(d))
           errordlg('input error,please check','care');
            return;
         end
         if (fix(b)~=b)
             errordlg('b must be integer');
             return;
         end
           guidata(hObject, handles);
           n=(fix(c)-1):(fix(d)+1);
           if b >= 0
               x=a*((n+b)>=0&(n-b)<0); % n = b 时值应为0
           else
               x=-a*((n+b)<0&(n-b)>=0);
           end
           axes(handles.axes1);
           stem(n,x);
           axis([c d floor(min(x)-1) 1.2*a+3]);
           grid on;
    case 7
         if (isempty(a)||isempty(c)||isempty(d))
           errordlg('input error,please check','care');
            return;
         end
          if(a>=1||a<=0)
               errordlg('a must be positive and less than 1','warn');
               return;
          end 
           guidata(hObject, handles);
           n=(fix(c)-1):(fix(d)+1);
           x=(n+1).*a.^n.*(n>=0);
           axes(handles.axes1);
           stem(n,x);
           axis([c d -1 1.2*a+3]);
           grid on;
    case 8 
         if (isempty(c)||isempty(d))
           errordlg('input error,please check','care');
            return;
         end
         syms n f(n)
         f = eval(get(handles.edit9,'String'));
         t = c:d;
         f = subs(f,n,t);  %符号变量替换
         axes(handles.axes1);
         stem(t,f);
         axis([c d (min(double(f)) - 1) (max(double(f)) + 1)]); %设置坐标轴范围出现问题  使用class后发现f为sym类型需要转换成数值类型
end
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


 a = str2num(get(handles.edita1,'String'));
 b = str2num(get(handles.editb2,'String'));
 choose1 = get(handles.popupmenu1,'value');
 e = str2num(get(handles.edit5,'String'));
 f = str2num(get(handles.edit6,'String'));

switch choose1
    case 1
         if (isempty(a)||isempty(e)||isempty(f))
       errordlg('input error,please check','care');
            return;
         end
         if (abs(a)>1)
       errordlg('a must be less than 1','care');
            return;
         end
           guidata(hObject, handles);
%            syms x n;
           if(a>1)
               errordlg('a must less than 1','warn');
               return;
           end    
%            s1=a.^n*exp(-1i*x*n);
%            m=symsum(s1,n,0,inf); %求和计算傅里叶变换(定义)  花费时间太长不可取
            t=e:0.01:f;
%            g=subs(m,x,t);
            g = 1./(1-a*exp(-1i*t));
           axes(handles.axes2);
           plot(t/pi,abs(g));  
           h=abs(g);
           axis([e f -2 max(h)+2]);
           grid on
         
    case 2
         if (isempty(b)||isempty(e)||isempty(f))
       errordlg('input error,please check','care');
            return;
         end
         guidata(hObject, handles);
         if (fix(b)~=b)
             errordlg('b must be integer');
             return;
         end
         w=e:0.01:f;
         x=exp(-1i*w*b);
         axes(handles.axes2);
         plot(w/pi,abs(x));
         axis([e f min(abs(x))-1 max(abs(x))+1]);
         grid on;
         
    case 3
         if (isempty(a)||isempty(e)||isempty(f))
       errordlg('input error,please check','care');
            return;
         end
           guidata(hObject, handles);
           n=-128:128;
          if(a>=1||a<=0)
               errordlg('a must be positive and less than 1','warn');
               return;
          end 
%            syms x n;
%            s1=a.^abs(n)*exp(-1i*x*n);
%            m=symsum(s1,n,-inf,inf); %求和计算傅里叶变换  花费时间太长不可取
%            t=e:0.01:f;
%            g=subs(m,x,t);
           x=a.^abs(n);
           k=(e*100):(f*100);% 用-128到128逼近离散时间傅里叶变换 
           w=(pi/100)*k;  %转换为双精度 避免画图时报错（数据类型不一样）
           X=x*(exp(-1i*pi/100)).^(n'*k);
           magX=abs(X);
            axes(handles.axes2);
            plot(w/pi,magX);
%             plot(t,abs(g));
            grid on;
            axis([e f -1 (1+a)/(1-a)+3]);
         
    case 4
         if (isempty(a)||isempty(b)||isempty(e)||isempty(f))
       errordlg('input error,please check','care');
            return;
         end
        t=e:0.01:f;
        x=square(t,100*b/pi);
        y=a*0.5*(x+1);
        axes(handles.axes2);
        plot(t/pi,y);
        axis([e f -2 a+2]);
        grid on;
    case 5
         if (isempty(a)||isempty(b)||isempty(e)||isempty(f))
       errordlg('input error,please check','care');
            return;
         end
             n=0:128;
             if(b==0||a==0)
               errordlg('a and b must not be 0','warn');
               return;
             end 
           x=a*exp(-b*n);
           k=(e*100):(f*100);
           w=(pi/100)*k;
           X=x*(exp(-1i*pi/100)).^(n'*k);
            magX=abs(X);
            axes(handles.axes2);
            plot(w/pi,magX);
            grid on;
            axis([e f -1 max(magX)+2]);
    case 6
         if (isempty(b)||isempty(e)||isempty(f))
       errordlg('input error,please check','care');
            return;
         end
            guidata(hObject, handles);
           if b >= 0
               n=-b:b;
               x=a*((n+b)>=0&(n-b)<0); % n = b 时值应为0
           else
               n=b:-b;
               x=-a*((n+b)<0&(n-b)>=0);
           end
%             n=-b:b;
%             x=a*((n+b)>=0&(n-b)<=0);
            k=(e*100):(f*100);
            w=(pi/100)*k;
            X=x*(exp(-1i*pi/100)).^(n'*k);
            magX=abs(X);
            axes(handles.axes2);
            plot(w/pi,magX);
            grid on;
           axis([e f floor(min(magX)-1) max(magX)+2]);
    case 7
         if (isempty(a)||isempty(e)||isempty(f))
       errordlg('input error,please check','care');
            return;
         end
            guidata(hObject, handles);
            n=0:128;
              if(a>=1||a<=0)
               errordlg('a must be positive and less than 1','warn');
               return;
              end 
            x=(n+1).*a.^n.*(n>=0);
            k=(e*100):(f*100);
            w=(pi/100)*k;
            X=x*(exp(-1i*pi/100)).^(n'*k);
            magX=abs(X);
            axes(handles.axes2);
            plot(w/pi,magX);
             grid on;
             axis([e f -1 max(magX)+2]);
    case 8  
         if (isempty(e)||isempty(f))
           errordlg('input error,please check','care');
            return;
         end
         syms n f1(n)
         f1 = eval(get(handles.edit9,'String'));
         t = -128:128;
         f1 = subs(f1,n,t);  %符号变量替换
         f1 = double(f1); %转换成double类型
         k=(e*100):(f*100);
         w=(pi/100)*k;
         X=f1*(exp(-1i*pi/100)).^(t'*k);
         magX=abs(X);
         axes(handles.axes2);
         plot(w/pi,magX);
         axis([e f (min(magX) - 1) (max(magX) + 1)]); 
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




% --- Executes on button press in pushbutton4.
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




% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

 a = str2num(get(handles.edita1,'String'));
 b = str2num(get(handles.editb2,'String'));
 choose1 = get(handles.popupmenu1,'value');
 e = str2num(get(handles.edit7,'String'));
 f = str2num(get(handles.edit8,'String'));
 
 switch choose1
    case 1
         if (isempty(a)||isempty(e)||isempty(f))
       errordlg('input error,please check','care');
            return;
         end
         if (abs(a)>1)
       errordlg('a must be less than 1','care');
            return;
         end
           guidata(hObject, handles);
%            syms x n;
           if(a>1)
               errordlg('a must less than 1','warn');
               return;
           end    
%            s1=a.^n*exp(-1i*x*n);
%            m=symsum(s1,n,0,inf); %求和计算傅里叶变换(定义)  花费时间太长不可取
            t=e:0.01:f;
%            g=subs(m,x,t);
            g = 1./(1-a*exp(-1i*t));
           axes(handles.axes3);
           plot(t/pi,angle(g));  
           axis([e f -pi pi]);
           set(gca,'YTick',-pi:pi/2:pi);
           set(gca,'ytickLabel',{'-π','-π/2','0','π/2','π'});
           grid on
         
    case 2
         if (isempty(b)||isempty(e)||isempty(f))
       errordlg('input error,please check','care');
            return;
         end
         guidata(hObject, handles);
         if (fix(b)~=b)
             errordlg('b must be integer');
             return;
         end
         w=e:0.01:f;
         x=exp(-1i*w*b);
         axes(handles.axes3);
         plot(w/pi,angle(x));
         axis([e f -pi pi]);
         set(gca,'YTick',-pi:pi/2:pi);
         set(gca,'ytickLabel',{'-π','-π/2','0','π/2','π'});
         grid on;
         
    case 3
         if (isempty(a)||isempty(e)||isempty(f))
       errordlg('input error,please check','care');
            return;
         end
           guidata(hObject, handles);
           n=-128:128;
          if(a>=1||a<=0)
               errordlg('a must be positive and less than 1','warn');
               return;
          end 
%            syms x n;
%            s1=a.^abs(n)*exp(-1i*x*n);
%            m=symsum(s1,n,-inf,inf); %求和计算傅里叶变换  花费时间太长不可取
%            t=e:0.01:f;
%            g=subs(m,x,t);
           x=a.^abs(n);
           k=(e*100):(f*100);% 用-128到128逼近离散时间傅里叶变换 
           w=(pi/100)*k;  %转换为双精度 避免画图时报错（数据类型不一样）
           X=x*(exp(-1i*pi/100)).^(n'*k);
           angX=angle(X);
            axes(handles.axes3);
            plot(w/pi,angX);
%             plot(t,abs(g));
            grid on;
            axis([e f  -pi pi]);
           set(gca,'YTick',-pi:pi/2:pi);
           set(gca,'ytickLabel',{'-π','-π/2','0','π/2','π'});
         
    case 4
         if (isempty(a)||isempty(b)||isempty(e)||isempty(f))
       errordlg('input error,please check','care');
            return;
         end
        t=e:0.01:f;
        x=square(t,100*b/pi);
        y=a*0.5*(x+1);
        axes(handles.axes3);
        plot(t/pi,angle(y));
        axis([e f -pi pi]);
        set(gca,'YTick',-pi:pi/2:pi);
        set(gca,'ytickLabel',{'-π','-π/2','0','π/2','π'});
        grid on;
    case 5
         if (isempty(a)||isempty(b)||isempty(e)||isempty(f))
       errordlg('input error,please check','care');
            return;
         end
             n=0:128;
             if(b==0||a==0)
               errordlg('a and b must not be 0','warn');
               return;
             end 
           x=a*exp(-b*n);
           k=(e*100):(f*100);
           w=(pi/100)*k;
           X=x*(exp(-1i*pi/100)).^(n'*k);
            angX=angle(X);
            axes(handles.axes3);
            plot(w/pi,angX);
            grid on;
            axis([e f -pi pi]);
           set(gca,'YTick',-pi:pi/2:pi);
           set(gca,'ytickLabel',{'-π','-π/2','0','π/2','π'});
    case 6
         if (isempty(b)||isempty(e)||isempty(f))
       errordlg('input error,please check','care');
            return;
         end
            guidata(hObject, handles);
           if b >= 0
               n=-b:b;
               x=a*((n+b)>=0&(n-b)<0); % n = b 时值应为0
           else
               n=b:-b;
               x=-a*((n+b)<0&(n-b)>=0);
           end
%             n=-b:b;
%             x=a*((n+b)>=0&(n-b)<=0);
            k=(e*100):(f*100);
            w=(pi/100)*k;
            X=x*(exp(-1i*pi/100)).^(n'*k);
            angX=angle(X);
            axes(handles.axes3);
            plot(w/pi,angX);
            grid on;
           axis([e f -pi pi]);
           set(gca,'YTick',-pi:pi/2:pi);
           set(gca,'ytickLabel',{'-π','-π/2','0','π/2','π'});
    case 7
         if (isempty(a)||isempty(e)||isempty(f))
       errordlg('input error,please check','care');
            return;
         end
            guidata(hObject, handles);
            n=0:128;
              if(a>=1||a<=0)
               errordlg('a must be positive and less than 1','warn');
               return;
              end 
            x=(n+1).*a.^n.*(n>=0);
            k=(e*100):(f*100);
            w=(pi/100)*k;
            X=x*(exp(-1i*pi/100)).^(n'*k);
            angX=angle(X);
            axes(handles.axes3);
            plot(w/pi,angX);
             grid on;
             axis([e f -pi pi]);
           set(gca,'YTick',-pi:pi/2:pi);
           set(gca,'ytickLabel',{'-π','-π/2','0','π/2','π'});
     case 8
         if (isempty(e)||isempty(f))
           errordlg('input error,please check','care');
            return;
         end
         syms n f1(n)
         f1 = eval(get(handles.edit9,'String'));
         t = -128:128;
         f1 = subs(f1,n,t);  %符号变量替换
         f1 = double(f1); %转换成double类型
         k=(e*100):(f*100);
         w=(pi/100)*k;
         X=f1*(exp(-1i*pi/100)).^(t'*k);
         angX=angle(X);
         axes(handles.axes3);
         plot(w/pi,angX);
         axis([e f (min(angX) - 1) (max(angX) + 1)]); 
end
 


% --- Executes during object creation, after setting all properties.
function pushbutton6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
