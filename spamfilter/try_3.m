function varargout = try_3(varargin)
% TRY_3 MATLAB code for try_3.fig
%      TRY_3, by itself, creates a new TRY_3 or raises the existing
%      singleton*.
%
%      H = TRY_3 returns the handle to a new TRY_3 or the handle to
%      the existing singleton*.
%
%      TRY_3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRY_3.M with the given input arguments.
%
%      TRY_3('Property','Value',...) creates a new TRY_3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before try_3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to try_3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help try_3

% Last Modified by GUIDE v2.5 29-Nov-2014 13:25:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @try_3_OpeningFcn, ...
                   'gui_OutputFcn',  @try_3_OutputFcn, ...
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


% --- Executes just before try_3 is made visible.
function try_3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to try_3 (see VARARGIN)

% Choose default command line output for try_3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes try_3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = try_3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function displaytag_Callback(hObject, eventdata, handles)
% hObject    handle to displaytag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of displaytag as text
%        str2double(get(hObject,'String')) returns contents of displaytag as a double


% --- Executes during object creation, after setting all properties.
function displaytag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to displaytag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Addonetag.
function Addonetag_Callback(hObject, eventdata, handles)
% hObject    handle to Addonetag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
a=4+a;
set(handles.displaytag,'String',num2str(a));