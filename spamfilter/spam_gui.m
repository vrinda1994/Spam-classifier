function varargout = spam_gui(varargin)
% SPAM_GUI MATLAB code for spam_gui.fig
%      SPAM_GUI, by itself, creates a new SPAM_GUI or raises the existing
%      singleton*.
%
%      H = SPAM_GUI returns the handle to a new SPAM_GUI or the handle to
%      the existing singleton*.
%
%      SPAM_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SPAM_GUI.M with the given input arguments.
%
%      SPAM_GUI('Property','Value',...) creates a new SPAM_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before spam_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to spam_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help spam_gui

% Last Modified by GUIDE v2.5 29-Nov-2014 12:51:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @spam_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @spam_gui_OutputFcn, ...
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


% --- Executes just before spam_gui is made visible.
function spam_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to spam_gui (see VARARGIN)

% Choose default command line output for spam_gui
handles.output = hObject;
handles.inital = varagain(1);
handles.counter =0;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes spam_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = spam_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function final_Callback(hObject, eventdata, handles)
% hObject    handle to final (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of final as text
%        str2double(get(hObject,'String')) returns contents of final as a double


% --- Executes during object creation, after setting all properties.
function final_CreateFcn(hObject, eventdata, handles)
% hObject    handle to final (see GCBO)
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
handles.counter=handles.counter +1;
set(handles.inital,'String',num2str(handles.inital));
set(handles.final,'String',num2str(handles.inital)+handles.counter);
guidata(hObject,handles);

% --- Executes on button press in pushbutton1.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
