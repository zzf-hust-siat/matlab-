function varargout = lianxuweifen(varargin)
% LIANXUWEIFEN MATLAB code for lianxuweifen.fig
%      LIANXUWEIFEN, by itself, creates a new LIANXUWEIFEN or raises the existing
%      singleton*.
%
%      H = LIANXUWEIFEN returns the handle to a new LIANXUWEIFEN or the handle to
%      the existing singleton*.
%
%      LIANXUWEIFEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LIANXUWEIFEN.M with the given input arguments.
%
%      LIANXUWEIFEN('Property','Value',...) creates a new LIANXUWEIFEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lianxuweifen_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lianxuweifen_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help lianxuweifen

% Last Modified by GUIDE v2.5 21-Apr-2020 02:23:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lianxuweifen_OpeningFcn, ...
                   'gui_OutputFcn',  @lianxuweifen_OutputFcn, ...
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


% --- Executes just before lianxuweifen is made visible.
function lianxuweifen_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lianxuweifen (see VARARGIN)

% Choose default command line output for lianxuweifen
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lianxuweifen wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = lianxuweifen_OutputFcn(hObject, eventdata, handles) 
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
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
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
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f1=str2num(get(handles.edit1,'String'));          %a
f2=str2num(get(handles.edit2,'String'));          %初始条件a 
f3=str2num(get(handles.edit3,'String'));          %b
choose=get(handles.popupmenu2,'value');            %激励选择
global h;
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

n1=0:L1-1;
m1=0:L3-1;
syms s t;
h = ilaplace((sum(f3(L3-m1).*(s.^m1)))/sum(f1(L1-n1).*(s.^n1)));
tt =0:0.01:10;
htt=subs(h,t,tt);
cla reset;
axes(handles.axes1)
stairs(tt,htt);
axis tight;
xlim([0 10])

    

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f1=str2num(get(handles.edit1,'String'));          %a
f2=str2num(get(handles.edit2,'String'));          %初始条件a 
f3=str2num(get(handles.edit3,'String'));          %b
choose=get(handles.popupmenu2,'value');            %激励选择
global hz;
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
N=L3-1;
M=L1-1;
if isempty(f2) 
    zi=zeros(1,M);
    L2=length(M);
else  
    L2=length(f2);
    if ~(L2==M)
        msgbox('number of initial value error','warn','warn');
        return
    else
        zi=f2;
    end
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
n1=0:L1-1;
m1=0:L3-1;
syms s t;
i=1;
fenzi=0;
for n2=1:L1-1
    k=0:L2-i;
    fenzi=fenzi+f1(i)*sum(zi(L2-k).*s.^(k));
    i=i+1;
end
hz = ilaplace(fenzi./sum(f1(L1-n1).*s.^n1));
tt =0:0.01:10;
htt=subs(hz,t,tt);
% cla ; 
axes(handles.axes2)
stairs(tt,htt);
axis tight;
xlim([0 10])

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f1=str2num(get(handles.edit1,'String'));          %a
f2=str2num(get(handles.edit2,'String'));          %初始条件a 
f3=str2num(get(handles.edit3,'String'));          %b
choose=get(handles.popupmenu2,'value');            %激励选择
global ht;
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
n1=0:L1-1;
m1=0:L3-1;
syms s t;
if choose==1
    xs=1./s;
elseif choose==2
    xs=1./(s+1);
end
ht = ilaplace(xs.*sum(f3(L3-m1).*(s.^m1))/sum(f1(L1-n1).*(s.^n1)));
tt =0:0.01:10;
htt=subs(ht,t,tt);
axes(handles.axes3)
stairs(tt,htt);
axis tight;
xlim([0 10])



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


% --- Executes on button press in pushbutton3.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f1=str2num(get(handles.edit1,'String'));          %a
f2=str2num(get(handles.edit2,'String'));          %初始条件a 
f3=str2num(get(handles.edit3,'String'));          %b
choose=get(handles.popupmenu2,'value');            %激励选择
global ht;
global hz;
global htz;
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
syms s t;
htz = ht+hz;
tt =0:0.01:10;
htt=subs(htz,t,tt);
axes(handles.axes4)
stairs(tt,htt);
axis tight;
xlim([0 10])




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


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close gcf;
start;

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global h;
global hz;
global ht;
global htz;
if (isempty(h)&&isempty(hz)&&isempty(ht)&&isempty(htz))
    msgbox('data need calculation','warn','warn');
    return
end
text={...
      ''
      '单位冲激响应'
      ''
      [' '*ones(1,12),strcat('(',char(h),')*u(t)')]
      ''
      '零输入响应'
      ''
      [' '*ones(1,12),strcat('(',char(hz),')*u(t)')]
      ''
      '零状态响应'
      ''
      [' '*ones(1,12),strcat('(',char(ht),')*u(t)')]
      ''
      '全响应'
      ''
      [' '*ones(1,12),strcat('(',char(htz),')*u(t)')]
      ''};
textwin(' ',text)


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
