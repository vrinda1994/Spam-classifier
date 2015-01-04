function varargout = try_2(varargin)
% TRY_2 MATLAB code for try_2.fig
%      TRY_2, by itself, creates a new TRY_2 or raises the existing
%      singleton*.
%
%      H = TRY_2 returns the handle to a new TRY_2 or the handle to
%      the existing singleton*.
%
%      TRY_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRY_2.M with the given input arguments.
%
%      TRY_2('Property','Value',...) creates a new TRY_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before try_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to try_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help try_2

% Last Modified by GUIDE v2.5 29-Nov-2014 13:17:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @try_2_OpeningFcn, ...
                   'gui_OutputFcn',  @try_2_OutputFcn, ...
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


% --- Executes just before try_2 is made visible.
function try_2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to try_2 (see VARARGIN)

% Choose default command line output for try_2
handles.output = hObject;
hadndles.initial_parameters=varagain(1);
handles.counter=0;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes try_2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = try_2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.counter=handles.counter+1 ;
set(handles.initial,'String',num2str(handles.inital_parameter))
set(handles.final_value,'String',num2str(handles.inital_parameter+handles.counter))
guidata(hObject,handles);
function initial_value_Callback(hObject, eventdata, handles)
% hObject    handle to initial_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of initial_value as text
%        str2double(get(hObject,'String')) returns contents of initial_value as a double


% --- Executes during object creation, after setting all properties.
function initial_value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to initial_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function final_value_Callback(hObject, eventdata, handles)
% hObject    handle to final_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of final_value as text
%        str2double(get(hObject,'String')) returns contents of final_value as a double


% --- Executes during object creation, after setting all properties.
function final_value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to final_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
