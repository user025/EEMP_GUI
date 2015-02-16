
function varargout = osc(varargin)
% OSC MATLAB code for osc.fig
%      OSC, by itself, creates a new OSC or raises the existing
%      singleton*.
%
%      H = OSC returns the handle to a new OSC or the handle to
%      the existing singleton*.
%
%      OSC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OSC.M with the given input arguments.
%
%      OSC('Property','Value',...) creates a new OSC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before osc_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to osc_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help osc

% Last Modified by GUIDE v2.5 15-Feb-2015 18:58:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @osc_OpeningFcn, ...
                   'gui_OutputFcn',  @osc_OutputFcn, ...
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


% --- Executes just before osc is made visible.
function osc_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to osc (see VARARGIN)

% Choose default command line output for osc
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(gcf,'menubar','figure');
% UIWAIT makes osc wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = osc_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function OscTextAttrDisplay_CreateFcn(hObject, eventdata, handles)
% hObject    handle to OscTextAttrDisplay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% --- Executes on slider movement.

function SliderY_2_Callback(hObject, eventdata, handles)
% hObject    handle to SliderY_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
    y = get(hObject, 'Value');
    
    delta = cursor_get_ydelta(handles.SliderY_1, handles.SliderY_2);
    cursor_msg_display(handles.OscTextAttrDisplay, 'delta_y:', delta);
    cursor_paint(handles.screen, [0 1], [y,y], 'pre_y2');

% --- Executes during object creation, after setting all properties.
function SliderY_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SliderY_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
set(hObject, 'enable', 'off');


% --- Executes on slider movement.
function SliderX_1_Callback(hObject, eventdata, handles)
% hObject    handle to SliderX_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
    x = get(hObject, 'Value');
    
    delta = cursor_get_xdelta(handles.SliderX_1, handles.SliderX_2);
    cursor_msg_display(handles.OscTextAttrDisplay, 'delta_x:', delta);
    cursor_paint(handles.screen, [x,x],[0,1],'pre_x1');

% --- Executes during object creation, after setting all properties.
function SliderX_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SliderX_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
set(hObject, 'enable', 'off');


% --- Executes on button press in ChannelCheckBoxB.
function ChannelCheckBoxB_Callback(hObject, eventdata, handles)
% hObject    handle to ChannelCheckBoxB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ChannelCheckBoxB


% --- Executes on button press in ChannelCheckBoxMath.
function ChannelCheckBoxMath_Callback(hObject, eventdata, handles)
% hObject    handle to ChannelCheckBoxMath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ChannelCheckBoxMath


% --- Executes on button press in ChannelCheckBoxA.
function ChannelCheckBoxA_Callback(hObject, eventdata, handles)
% hObject    handle to ChannelCheckBoxA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ChannelCheckBoxA


% --- Executes on selection change in MathPopupArg2.
function MathPopupArg2_Callback(hObject, eventdata, handles)
% hObject    handle to MathPopupArg2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns MathPopupArg2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from MathPopupArg2


% --- Executes during object creation, after setting all properties.
function MathPopupArg2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MathPopupArg2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in MathPopupFunction.
function MathPopupFunction_Callback(hObject, eventdata, handles)
% hObject    handle to MathPopupFunction (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns MathPopupFunction contents as cell array
%        contents{get(hObject,'Value')} returns selected item from MathPopupFunction


% --- Executes during object creation, after setting all properties.
function MathPopupFunction_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MathPopupFunction (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in MathPupupArg1.
function MathPupupArg1_Callback(hObject, eventdata, handles)
% hObject    handle to MathPupupArg1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns MathPupupArg1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from MathPupupArg1


% --- Executes during object creation, after setting all properties.
function MathPupupArg1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MathPupupArg1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MathEditTextOptionalArg_Callback(hObject, eventdata, handles)
% hObject    handle to MathEditTextOptionalArg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MathEditTextOptionalArg as text
%        str2double(get(hObject,'String')) returns contents of MathEditTextOptionalArg as a double


% --- Executes during object creation, after setting all properties.
function MathEditTextOptionalArg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MathEditTextOptionalArg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in OscButtionAutoset.
function OscButtionAutoset_Callback(hObject, eventdata, handles)
% hObject    handle to OscButtionAutoset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in OscButtonRun.
function OscButtonRun_Callback(hObject, eventdata, handles)
% hObject    handle to OscButtonRun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in OscButtonStop.
function OscButtonStop_Callback(hObject, eventdata, handles)
% hObject    handle to OscButtonStop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in OscButtonAttributes.
function OscButtonAttributes_Callback(hObject, eventdata, handles)
% hObject    handle to OscButtonAttributes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h=attr();
waitfor(h);
getappdata(0,'attr_list')
% --- Executes on button press in OscButtonSample.
function OscButtonSample_Callback(hObject, eventdata, handles)
% hObject    handle to OscButtonSample (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function SliderX_2_Callback(hObject, eventdata, handles)
% hObject    handle to SliderX_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
    x = get(hObject,'Value');
    delta = cursor_get_xdelta(handles.SliderX_1, handles.SliderX_2);
    cursor_msg_display(handles.OscTextAttrDisplay, 'delta_x:', delta);
    cursor_paint(handles.screen, [x,x],[0,1], 'pre_x2');


% --- Executes during object creation, after setting all properties.
function SliderX_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SliderX_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handlmsg = get(handles.OscTextAttrDisplay,'String');
% empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
set(hObject, 'enable', 'off');


% --- Executes on slider movement.
function SliderY_1_Callback(hObject, eventdata, handles)
% hObject    handle to SliderY_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
    y = get(hObject, 'Value');
    delta = cursor_get_ydelta(handles.SliderY_1, handles.SliderY_2);
    cursor_msg_display(handles.OscTextAttrDisplay, 'delta_y:', delta);
    cursor_paint(handles.screen, [0 1], [y y], 'pre_y1');
    

% --- Executes during object creation, after setting all properties.
function SliderY_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SliderY_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
set(hObject, 'enable', 'off');


% --- Executes on button press in OscButtonScaleVoltDown.
function OscButtonScaleVoltDown_Callback(hObject, eventdata, handles)
% hObject    handle to OscButtonScaleVoltDown (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in OscButtonScaleVoltUp.
function OscButtonScaleVoltUp_Callback(hObject, eventdata, handles)
% hObject    handle to OscButtonScaleVoltUp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in OscButtonChATimeUp.
function OscButtonChATimeUp_Callback(hObject, eventdata, handles)
% hObject    handle to OscButtonChATimeUp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in OscButtonChATimeDown.
function OscButtonChATimeDown_Callback(hObject, eventdata, handles)
% hObject    handle to OscButtonChATimeDown (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in OscButtonChBTimeUp.
function OscButtonChBTimeUp_Callback(hObject, eventdata, handles)
% hObject    handle to OscButtonChBTimeUp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in OscButtonChBTimeDown.
function OscButtonChBTimeDown_Callback(hObject, eventdata, handles)
% hObject    handle to OscButtonChBTimeDown (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.



% --- Executes on button press in CheckBoxXCursor.
function CheckBoxXCursor_Callback(hObject, eventdata, handles)
% hObject    handle to CheckBoxXCursor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of CheckBoxXCursor
    selected = get(hObject, 'Value');
    if (selected)
        set(handles.SliderX_1, 'enable', 'on');
        set(handles.SliderX_2, 'enable', 'on');
        x = get(handles.SliderX_1, 'Value');
        intial_cursor([x x], [0 1], 'pre_x1');
        x = get(handles.SliderX_2, 'Value');
        intial_cursor([x x], [0 1], 'pre_x2');
    else
        p1 = getappdata(0, 'pre_x1');
        p2 = getappdata(0, 'pre_x2');
        set(handles.SliderX_1, 'enable', 'off');
        set(handles.SliderX_2, 'enable', 'off');
        clear_cursor(handles.OscTextAttrDisplay, 'delta_x:', [p1 p2]);
    end

% --- Executes on button press in CheckBoxYCursor.
function CheckBoxYCursor_Callback(hObject, eventdata, handles)
% hObject    handle to CheckBoxYCursor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    selected = get(hObject, 'Value');
    if (selected)
        set(handles.SliderY_1, 'enable', 'on');
        set(handles.SliderY_2, 'enable', 'on');
        y = get(handles.SliderY_1, 'Value');
        intial_cursor([0 1], [y y], 'pre_y1');
        y = get(handles.SliderY_2, 'Value');
        intial_cursor([0 1], [y y], 'pre_y2');
    else
        p1 = getappdata(0,'pre_y1');
        p2 = getappdata(0,'pre_y2');
        set(handles.SliderY_1, 'enable', 'off');
        set(handles.SliderY_2, 'enable', 'off');
        clear_cursor(handles.OscTextAttrDisplay, 'delta_y:', [p1 p2]);
    end
    
% Hint: get(hObject,'Value') returns toggle state of CheckBoxYCursor
function cursor_paint(axes_object,X,Y,pre_label)
    pre = getappdata(0,pre_label);
    delete(pre);
    axes(axes_object);
    pre = line(X,Y);
    setappdata(0, pre_label, pre);
function cursor_msg_display(text_object,description,delta)
    msg = get(text_object', 'String');
    msg_poi =  strfind(msg, description);
    new_msg = [description, num2str(delta),';'];
    new_msg = sprintf('%-18s',new_msg);
    if (~isempty(msg_poi))
        old_msg = msg(msg_poi:msg_poi+17);
        msg = strrep(msg,old_msg,new_msg);
    else
        msg = [msg,new_msg];
    end
    set(text_object,'String',msg);
  
function [value] = cursor_get_xdelta(object_1, object_2)
    poi_1 = get(object_1, 'Value');
    poi_2 = get(object_2, 'Value');
    value = roundn(abs(poi_1-poi_2),-4);
 
function [value] = cursor_get_ydelta(object_1, object_2)
    poi_1 = get(object_1, 'Value');
    poi_2 = get(object_2, 'Value');
    value = roundn(abs(poi_1-poi_2),-4);
  
function intial_cursor(X,Y,pre_val)
    line_handle = line(X,Y);
    setappdata(0, pre_val, line_handle);

function clear_cursor(text_object, description, pic_handles)
    delete(pic_handles(1));
    delete(pic_handles(2));
    msg = get(text_object, 'String');
    msg_poi = strfind(msg, description);
    sub_msg = msg(msg_poi:msg_poi+17);
    msg = strrep(msg, sub_msg, '');
    set(text_object, 'String', msg);
 