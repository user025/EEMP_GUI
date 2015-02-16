function varargout = attr(varargin)
% ATTR MATLAB code for attr.fig
%      ATTR, by itself, creates a new ATTR or raises the existing
%      singleton*.
%
%      H = ATTR returns the handle to a new ATTR or the handle to
%      the existing singleton*.
%
%      ATTR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ATTR.M with the given input arguments.
%
%      ATTR('Property','Value',...) creates a new ATTR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before attr_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to attr_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help attr

% Last Modified by GUIDE v2.5 14-Feb-2015 23:47:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @attr_OpeningFcn, ...
                   'gui_OutputFcn',  @attr_OutputFcn, ...
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


% --- Executes just before attr is made visible.
function attr_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to attr (see VARARGIN)

% Choose default command line output for attr
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes attr wait for user response (see UIRESUME)


% --- Outputs from this function are returned to the command line.
function varargout = attr_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in AttrCheckBoxVpp.
function AttrCheckBoxVpp_Callback(hObject, eventdata, handles)
% hObject    handle to AttrCheckBoxVpp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of AttrCheckBoxVpp



% --- Executes on button press in AttrCheckBoxRaise.
function AttrCheckBoxRaise_Callback(hObject, eventdata, handles)
% hObject    handle to AttrCheckBoxRaise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of AttrCheckBoxRaise

% --- Executes on button press in AttrCheckBoxFreq.
function AttrCheckBoxFreq_Callback(hObject, eventdata, handles)
% hObject    handle to AttrCheckBoxFreq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of AttrCheckBoxFreq


% --- Executes on button press in AttrCheckBoxT.
function AttrCheckBoxT_Callback(hObject, eventdata, handles)
% hObject    handle to AttrCheckBoxT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of AttrCheckBoxT


% --- Executes on button press in AttrCheckBoxMean.
function AttrCheckBoxMean_Callback(hObject, eventdata, handles)
% hObject    handle to AttrCheckBoxMean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of AttrCheckBoxMean


% --- Executes on button press in AttrCheckBoxFall.
function AttrCheckBoxFall_Callback(hObject, eventdata, handles)
% hObject    handle to AttrCheckBoxFall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of AttrCheckBoxFall


% --- Executes on button press in AttrButtonConfirm.
function AttrButtonConfirm_Callback(hObject, eventdata, handles)
% hObject    handle to AttrButtonConfirm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = gcf();
data = guidata(handles);
global attr_list
attr_list(1) = get(data.AttrCheckBoxVpp,'value');
attr_list(2) = get(data.AttrCheckBoxFreq,'value');
attr_list(3) = get(data.AttrCheckBoxT,'value');
attr_list(4) = get(data.AttrCheckBoxMean,'value');
attr_list(5) = get(data.AttrCheckBoxRaise,'value');
attr_list(6) = get(data.AttrCheckBoxFall,'value');

setappdata(0,'attr_list',attr_list);
delete(handles);