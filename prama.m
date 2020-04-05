function varargout = prama(varargin)
% PRAMA MATLAB code for prama.fig
%      PRAMA, by itself, creates a new PRAMA or raises the existing
%      singleton*.
%
%      H = PRAMA returns the handle to a new PRAMA or the handle to
%      the existing singleton*.
%
%      PRAMA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRAMA.M with the given input arguments.
%
%      PRAMA('Property','Value',...) creates a new PRAMA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before prama_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to prama_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help prama

% Last Modified by GUIDE v2.5 05-Apr-2020 09:20:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @prama_OpeningFcn, ...
                   'gui_OutputFcn',  @prama_OutputFcn, ...
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


% --- Executes just before prama is made visible.
function prama_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to prama (see VARARGIN)

% Choose default command line output for prama
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes prama wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = prama_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function wpfx_Callback(hObject, eventdata, handles)
% hObject    handle to wpfx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wpfx as text
%        str2double(get(hObject,'String')) returns contents of wpfx as a double


% --- Executes during object creation, after setting all properties.
function wpfx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wpfx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wpty_Callback(hObject, eventdata, handles)
% hObject    handle to wpty (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wpty as text
%        str2double(get(hObject,'String')) returns contents of wpty as a double


% --- Executes during object creation, after setting all properties.
function wpty_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wpty (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wptx_Callback(hObject, eventdata, handles)
% hObject    handle to wptx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wptx as text
%        str2double(get(hObject,'String')) returns contents of wptx as a double


% --- Executes during object creation, after setting all properties.
function wptx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wptx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wpfz_Callback(hObject, eventdata, handles)
% hObject    handle to wpfz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wpfz as text
%        str2double(get(hObject,'String')) returns contents of wpfz as a double


% --- Executes during object creation, after setting all properties.
function wpfz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wpfz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wpfy_Callback(hObject, eventdata, handles)
% hObject    handle to wpfy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wpfy as text
%        str2double(get(hObject,'String')) returns contents of wpfy as a double


% --- Executes during object creation, after setting all properties.
function wpfy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wpfy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wptz_Callback(hObject, eventdata, handles)
% hObject    handle to wptz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wptz as text
%        str2double(get(hObject,'String')) returns contents of wptz as a double


% --- Executes during object creation, after setting all properties.
function wptz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wptz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Kp_y_Callback(hObject, eventdata, handles)
% hObject    handle to Kp_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Kp_y as text
%        str2double(get(hObject,'String')) returns contents of Kp_y as a double


% --- Executes during object creation, after setting all properties.
function Kp_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Kp_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Kp_x_Callback(hObject, eventdata, handles)
% hObject    handle to Kp_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Kp_x as text
%        str2double(get(hObject,'String')) returns contents of Kp_x as a double


% --- Executes during object creation, after setting all properties.
function Kp_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Kp_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Kp_z_Callback(hObject, eventdata, handles)
% hObject    handle to Kp_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Kp_z as text
%        str2double(get(hObject,'String')) returns contents of Kp_z as a double


% --- Executes during object creation, after setting all properties.
function Kp_z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Kp_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global Kp_x;
global Kd_x;

global Kp_y;
global Kd_y;

global Kp_z;
global Kd_z;

global Kp_phi;
global Kd_phi;

global Kp_theta;
global Kd_theta;

global Kp_psi;
global Kd_psi;
    addpath('utils');
    tempfx=get(handles.wpfx,"string");
    Wpfx=str2num(tempfx);
    tempfy=get(handles.wpfy,"string");
    Wpfy=str2num(tempfy);
    tempfz=get(handles.wpfz,"string");
    Wpfz=str2num(tempfz);
    temptx=get(handles.wptx,"string");
    Wptx=str2num(temptx);
    tempty=get(handles.wpty,"string");
    Wpty=str2num(tempty);
    temptz=get(handles.wptz,"string");
    Wptz=str2num(temptz);
    temptd=get(handles.Kp_z,"string");
    Td=str2num(temptd);
    tempti=get(handles.Kp_y,"string");
    Ti=str2num(tempti);
    temptP=get(handles.Kp_x,"string");
    P=str2num(temptP);
    
    temp=get(handles.Kp_x,"string");
    Kp_x=str2num(temp);
    temp=get(handles.Kd_x,"string");
    Kd_x=str2num(temp);
    temp=get(handles.Kp_y,"string");
    Kp_y=str2num(temp);
    temp=get(handles.Kd_y,"string");
    Kd_y=str2num(temp);
    temp=get(handles.Kp_z,"string");
    Kp_z=str2num(temp);
    temp=get(handles.Kd_z,"string");
    Kd_z=str2num(temp);
    
    temp=get(handles.Kp_phi,"string");
    Kp_phi=str2num(temp);
    temp=get(handles.Kd_phi,"string");
    Kd_phi=str2num(temp);
    temp=get(handles.Kp_theta,"string");
    Kp_theta=str2num(temp);
    temp=get(handles.Kd_theta,"string");
    Kd_theta=str2num(temp);
    temp=get(handles.Kp_psi,"string");
    Kp_psi=str2num(temp);
    temp=get(handles.Kd_psi,"string");
    Kd_psi=str2num(temp);
    
    trajhandle = @traj_generator;
    waypoints = [Wpfx    Wpfy   Wpfz;
                      Wptx   Wpty   Wptz]';
    trajhandle([],[],waypoints);
    controlhandle = @controller;
    [t, state, QP] = simulation_3d_new(trajhandle, controlhandle);


%     waypoints = [Wpfx    Wpfy   Wpfz;
%                       Wptx   Wpty   Wptz]';
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function Kd_x_Callback(hObject, eventdata, handles)
% hObject    handle to Kd_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Kd_x as text
%        str2double(get(hObject,'String')) returns contents of Kd_x as a double


% --- Executes during object creation, after setting all properties.
function Kd_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Kd_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Kd_y_Callback(hObject, eventdata, handles)
% hObject    handle to Kd_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Kd_y as text
%        str2double(get(hObject,'String')) returns contents of Kd_y as a double


% --- Executes during object creation, after setting all properties.
function Kd_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Kd_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Kd_z_Callback(hObject, eventdata, handles)
% hObject    handle to Kd_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Kd_z as text
%        str2double(get(hObject,'String')) returns contents of Kd_z as a double


% --- Executes during object creation, after setting all properties.
function Kd_z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Kd_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Kp_theta_Callback(hObject, eventdata, handles)
% hObject    handle to Kp_theta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Kp_theta as text
%        str2double(get(hObject,'String')) returns contents of Kp_theta as a double


% --- Executes during object creation, after setting all properties.
function Kp_theta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Kp_theta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Kp_phi_Callback(hObject, eventdata, handles)
% hObject    handle to Kp_phi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Kp_phi as text
%        str2double(get(hObject,'String')) returns contents of Kp_phi as a double


% --- Executes during object creation, after setting all properties.
function Kp_phi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Kp_phi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Kp_psi_Callback(hObject, eventdata, handles)
% hObject    handle to Kp_psi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Kp_psi as text
%        str2double(get(hObject,'String')) returns contents of Kp_psi as a double


% --- Executes during object creation, after setting all properties.
function Kp_psi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Kp_psi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Kd_phi_Callback(hObject, eventdata, handles)
% hObject    handle to Kd_phi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Kd_phi as text
%        str2double(get(hObject,'String')) returns contents of Kd_phi as a double


% --- Executes during object creation, after setting all properties.
function Kd_phi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Kd_phi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Kd_theta_Callback(hObject, eventdata, handles)
% hObject    handle to Kd_theta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Kd_theta as text
%        str2double(get(hObject,'String')) returns contents of Kd_theta as a double


% --- Executes during object creation, after setting all properties.
function Kd_theta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Kd_theta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Kd_psi_Callback(hObject, eventdata, handles)
% hObject    handle to Kd_psi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Kd_psi as text
%        str2double(get(hObject,'String')) returns contents of Kd_psi as a double


% --- Executes during object creation, after setting all properties.
function Kd_psi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Kd_psi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
