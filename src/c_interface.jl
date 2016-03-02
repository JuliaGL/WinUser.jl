# Julia wrapper for header: /home/s/.julia/v0.5/XCB/wnd/include/WinUser.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function wvsprintfA(arg1::LPSTR,arg2::LPCSTR,arglist::va_list)
    ccall((:wvsprintfA,wnd),Cint,(LPSTR,LPCSTR,va_list),arg1,arg2,arglist)
end

function wvsprintfW(arg1::LPWSTR,arg2::LPCWSTR,arglist::va_list)
    ccall((:wvsprintfW,wnd),Cint,(LPWSTR,LPCWSTR,va_list),arg1,arg2,arglist)
end

function LoadKeyboardLayoutA(pwszKLID::LPCSTR,Flags::UINT)
    ccall((:LoadKeyboardLayoutA,wnd),HKL,(LPCSTR,UINT),pwszKLID,Flags)
end

function LoadKeyboardLayoutW(pwszKLID::LPCWSTR,Flags::UINT)
    ccall((:LoadKeyboardLayoutW,wnd),HKL,(LPCWSTR,UINT),pwszKLID,Flags)
end

function ActivateKeyboardLayout(hkl::HKL,Flags::UINT)
    ccall((:ActivateKeyboardLayout,wnd),HKL,(HKL,UINT),hkl,Flags)
end

function ToUnicodeEx(wVirtKey::UINT,wScanCode::UINT,lpKeyState,pwszBuff::LPWSTR,cchBuff::Cint,wFlags::UINT,dwhkl::HKL)
    ccall((:ToUnicodeEx,wnd),Cint,(UINT,UINT,Ptr{BYTE},LPWSTR,Cint,UINT,HKL),wVirtKey,wScanCode,lpKeyState,pwszBuff,cchBuff,wFlags,dwhkl)
end

function UnloadKeyboardLayout(hkl::HKL)
    ccall((:UnloadKeyboardLayout,wnd),BOOL,(HKL,),hkl)
end

function GetKeyboardLayoutNameA(pwszKLID::LPSTR)
    ccall((:GetKeyboardLayoutNameA,wnd),BOOL,(LPSTR,),pwszKLID)
end

function GetKeyboardLayoutNameW(pwszKLID::LPWSTR)
    ccall((:GetKeyboardLayoutNameW,wnd),BOOL,(LPWSTR,),pwszKLID)
end

function GetKeyboardLayoutList(nBuff::Cint,lpList)
    ccall((:GetKeyboardLayoutList,wnd),Cint,(Cint,Ptr{HKL}),nBuff,lpList)
end

function GetKeyboardLayout(idThread::DWORD)
    ccall((:GetKeyboardLayout,wnd),HKL,(DWORD,),idThread)
end

function GetMouseMovePointsEx(cbSize::UINT,lppt::LPMOUSEMOVEPOINT,lpptBuf::LPMOUSEMOVEPOINT,nBufPoints::Cint,resolution::DWORD)
    ccall((:GetMouseMovePointsEx,wnd),Cint,(UINT,LPMOUSEMOVEPOINT,LPMOUSEMOVEPOINT,Cint,DWORD),cbSize,lppt,lpptBuf,nBufPoints,resolution)
end

function OpenDesktopA()
    ccall((:OpenDesktopA,wnd),Cint,())
end

function OpenDesktopW()
    ccall((:OpenDesktopW,wnd),Cint,())
end

function OpenInputDesktop()
    ccall((:OpenInputDesktop,wnd),Cint,())
end

function EnumDesktopsA(hwinsta::HWINSTA,lpEnumFunc::DESKTOPENUMPROCA,lParam::LPARAM)
    ccall((:EnumDesktopsA,wnd),BOOL,(HWINSTA,DESKTOPENUMPROCA,LPARAM),hwinsta,lpEnumFunc,lParam)
end

function EnumDesktopsW(hwinsta::HWINSTA,lpEnumFunc::DESKTOPENUMPROCW,lParam::LPARAM)
    ccall((:EnumDesktopsW,wnd),BOOL,(HWINSTA,DESKTOPENUMPROCW,LPARAM),hwinsta,lpEnumFunc,lParam)
end

function EnumDesktopWindows(hDesktop::Cint,lpfn::WNDENUMPROC,lParam::LPARAM)
    ccall((:EnumDesktopWindows,wnd),BOOL,(Cint,WNDENUMPROC,LPARAM),hDesktop,lpfn,lParam)
end

function SwitchDesktop(hDesktop::Cint)
    ccall((:SwitchDesktop,wnd),BOOL,(Cint,),hDesktop)
end

function SetThreadDesktop(hDesktop::Cint)
    ccall((:SetThreadDesktop,wnd),BOOL,(Cint,),hDesktop)
end

function CloseDesktop(hDesktop::Cint)
    ccall((:CloseDesktop,wnd),BOOL,(Cint,),hDesktop)
end

function GetThreadDesktop()
    ccall((:GetThreadDesktop,wnd),Cint,())
end

function CreateWindowStationA(lpwinsta::LPCSTR,dwFlags::DWORD,dwDesiredAccess::ACCESS_MASK,lpsa::LPSECURITY_ATTRIBUTES)
    ccall((:CreateWindowStationA,wnd),HWINSTA,(LPCSTR,DWORD,ACCESS_MASK,LPSECURITY_ATTRIBUTES),lpwinsta,dwFlags,dwDesiredAccess,lpsa)
end

function CreateWindowStationW(lpwinsta::LPCWSTR,dwFlags::DWORD,dwDesiredAccess::ACCESS_MASK,lpsa::LPSECURITY_ATTRIBUTES)
    ccall((:CreateWindowStationW,wnd),HWINSTA,(LPCWSTR,DWORD,ACCESS_MASK,LPSECURITY_ATTRIBUTES),lpwinsta,dwFlags,dwDesiredAccess,lpsa)
end

function OpenWindowStationA(lpszWinSta::LPCSTR,fInherit::BOOL,dwDesiredAccess::ACCESS_MASK)
    ccall((:OpenWindowStationA,wnd),HWINSTA,(LPCSTR,BOOL,ACCESS_MASK),lpszWinSta,fInherit,dwDesiredAccess)
end

function OpenWindowStationW(lpszWinSta::LPCWSTR,fInherit::BOOL,dwDesiredAccess::ACCESS_MASK)
    ccall((:OpenWindowStationW,wnd),HWINSTA,(LPCWSTR,BOOL,ACCESS_MASK),lpszWinSta,fInherit,dwDesiredAccess)
end

function EnumWindowStationsA(lpEnumFunc::WINSTAENUMPROCA,lParam::LPARAM)
    ccall((:EnumWindowStationsA,wnd),BOOL,(WINSTAENUMPROCA,LPARAM),lpEnumFunc,lParam)
end

function EnumWindowStationsW(lpEnumFunc::WINSTAENUMPROCW,lParam::LPARAM)
    ccall((:EnumWindowStationsW,wnd),BOOL,(WINSTAENUMPROCW,LPARAM),lpEnumFunc,lParam)
end

function CloseWindowStation(hWinSta::HWINSTA)
    ccall((:CloseWindowStation,wnd),BOOL,(HWINSTA,),hWinSta)
end

function SetProcessWindowStation(hWinSta::HWINSTA)
    ccall((:SetProcessWindowStation,wnd),BOOL,(HWINSTA,),hWinSta)
end

function GetProcessWindowStation()
    ccall((:GetProcessWindowStation,wnd),HWINSTA,())
end

function SetUserObjectSecurity(hObj::HANDLE,pSIRequested::PSECURITY_INFORMATION,pSID::PSECURITY_DESCRIPTOR)
    ccall((:SetUserObjectSecurity,wnd),BOOL,(HANDLE,PSECURITY_INFORMATION,PSECURITY_DESCRIPTOR),hObj,pSIRequested,pSID)
end

function GetUserObjectSecurity(hObj::HANDLE,pSIRequested::PSECURITY_INFORMATION,pSID::PSECURITY_DESCRIPTOR,nLength::DWORD,lpnLengthNeeded::LPDWORD)
    ccall((:GetUserObjectSecurity,wnd),BOOL,(HANDLE,PSECURITY_INFORMATION,PSECURITY_DESCRIPTOR,DWORD,LPDWORD),hObj,pSIRequested,pSID,nLength,lpnLengthNeeded)
end

function GetUserObjectInformationA(hObj::HANDLE,nIndex::Cint,pvInfo::PVOID,nLength::DWORD,lpnLengthNeeded::LPDWORD)
    ccall((:GetUserObjectInformationA,wnd),BOOL,(HANDLE,Cint,PVOID,DWORD,LPDWORD),hObj,nIndex,pvInfo,nLength,lpnLengthNeeded)
end

function GetUserObjectInformationW(hObj::HANDLE,nIndex::Cint,pvInfo::PVOID,nLength::DWORD,lpnLengthNeeded::LPDWORD)
    ccall((:GetUserObjectInformationW,wnd),BOOL,(HANDLE,Cint,PVOID,DWORD,LPDWORD),hObj,nIndex,pvInfo,nLength,lpnLengthNeeded)
end

function SetUserObjectInformationA(hObj::HANDLE,nIndex::Cint,pvInfo::PVOID,nLength::DWORD)
    ccall((:SetUserObjectInformationA,wnd),BOOL,(HANDLE,Cint,PVOID,DWORD),hObj,nIndex,pvInfo,nLength)
end

function SetUserObjectInformationW(hObj::HANDLE,nIndex::Cint,pvInfo::PVOID,nLength::DWORD)
    ccall((:SetUserObjectInformationW,wnd),BOOL,(HANDLE,Cint,PVOID,DWORD),hObj,nIndex,pvInfo,nLength)
end

function IsHungAppWindow(hwnd::Cint)
    ccall((:IsHungAppWindow,wnd),BOOL,(Cint,),hwnd)
end

function RegisterWindowMessageA(lpString::LPCSTR)
    ccall((:RegisterWindowMessageA,wnd),UINT,(LPCSTR,),lpString)
end

function RegisterWindowMessageW(lpString::LPCWSTR)
    ccall((:RegisterWindowMessageW,wnd),UINT,(LPCWSTR,),lpString)
end

function TrackMouseEvent(lpEventTrack::LPTRACKMOUSEEVENT)
    ccall((:TrackMouseEvent,wnd),BOOL,(LPTRACKMOUSEEVENT,),lpEventTrack)
end

function DrawEdge(hdc::Cint,qrc::Cint,edge::UINT,grfFlags::UINT)
    ccall((:DrawEdge,wnd),BOOL,(Cint,Cint,UINT,UINT),hdc,qrc,edge,grfFlags)
end

function DrawFrameControl()
    ccall((:DrawFrameControl,wnd),BOOL,())
end

function DrawCaption(hwnd::Cint,hdc::Cint,lprect,flags::UINT)
    ccall((:DrawCaption,wnd),BOOL,(Cint,Cint,Ptr{Cint},UINT),hwnd,hdc,lprect,flags)
end

function DrawAnimatedRects(hwnd::Cint,idAni::Cint,lprcFrom,lprcTo)
    ccall((:DrawAnimatedRects,wnd),BOOL,(Cint,Cint,Ptr{Cint},Ptr{Cint}),hwnd,idAni,lprcFrom,lprcTo)
end

function GetMessageA(lpMsg::LPMSG,hWnd::Cint,wMsgFilterMin::UINT,wMsgFilterMax::UINT)
    ccall((:GetMessageA,wnd),BOOL,(LPMSG,Cint,UINT,UINT),lpMsg,hWnd,wMsgFilterMin,wMsgFilterMax)
end

function GetMessageW(lpMsg::LPMSG,hWnd::Cint,wMsgFilterMin::UINT,wMsgFilterMax::UINT)
    ccall((:GetMessageW,wnd),BOOL,(LPMSG,Cint,UINT,UINT),lpMsg,hWnd,wMsgFilterMin,wMsgFilterMax)
end

function TranslateMessage(lpMsg)
    ccall((:TranslateMessage,wnd),BOOL,(Ptr{MSG},),lpMsg)
end

function DispatchMessageA(lpMsg)
    ccall((:DispatchMessageA,wnd),LRESULT,(Ptr{MSG},),lpMsg)
end

function DispatchMessageW(lpMsg)
    ccall((:DispatchMessageW,wnd),LRESULT,(Ptr{MSG},),lpMsg)
end

function SetMessageQueue(cMessagesMax::Cint)
    ccall((:SetMessageQueue,wnd),BOOL,(Cint,),cMessagesMax)
end

function PeekMessageA(lpMsg::LPMSG,hWnd::Cint,wMsgFilterMin::UINT,wMsgFilterMax::UINT,wRemoveMsg::UINT)
    ccall((:PeekMessageA,wnd),BOOL,(LPMSG,Cint,UINT,UINT,UINT),lpMsg,hWnd,wMsgFilterMin,wMsgFilterMax,wRemoveMsg)
end

function PeekMessageW(lpMsg::LPMSG,hWnd::Cint,wMsgFilterMin::UINT,wMsgFilterMax::UINT,wRemoveMsg::UINT)
    ccall((:PeekMessageW,wnd),BOOL,(LPMSG,Cint,UINT,UINT,UINT),lpMsg,hWnd,wMsgFilterMin,wMsgFilterMax,wRemoveMsg)
end

function RegisterHotKey(hWnd::Cint,id::Cint,fsModifiers::UINT,vk::UINT)
    ccall((:RegisterHotKey,wnd),BOOL,(Cint,Cint,UINT,UINT),hWnd,id,fsModifiers,vk)
end

function UnregisterHotKey(hWnd::Cint,id::Cint)
    ccall((:UnregisterHotKey,wnd),BOOL,(Cint,Cint),hWnd,id)
end

function ExitWindowsEx(uFlags::UINT,dwReason::DWORD)
    ccall((:ExitWindowsEx,wnd),BOOL,(UINT,DWORD),uFlags,dwReason)
end

function SwapMouseButton(fSwap::BOOL)
    ccall((:SwapMouseButton,wnd),BOOL,(BOOL,),fSwap)
end

function GetMessagePos()
    ccall((:GetMessagePos,wnd),DWORD,())
end

function GetMessageTime()
    ccall((:GetMessageTime,wnd),LONG,())
end

function GetMessageExtraInfo()
    ccall((:GetMessageExtraInfo,wnd),LPARAM,())
end

function GetUnpredictedMessagePos()
    ccall((:GetUnpredictedMessagePos,wnd),DWORD,())
end

function IsWow64Message()
    ccall((:IsWow64Message,wnd),BOOL,())
end

function SetMessageExtraInfo(lParam::LPARAM)
    ccall((:SetMessageExtraInfo,wnd),LPARAM,(LPARAM,),lParam)
end

function SendMessageA(hWnd::Cint,Msg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:SendMessageA,wnd),LRESULT,(Cint,UINT,WPARAM,LPARAM),hWnd,Msg,wParam,lParam)
end

function SendMessageW(hWnd::Cint,Msg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:SendMessageW,wnd),LRESULT,(Cint,UINT,WPARAM,LPARAM),hWnd,Msg,wParam,lParam)
end

function SendMessageTimeoutA(hWnd::Cint,Msg::UINT,wParam::WPARAM,lParam::LPARAM,fuFlags::UINT,uTimeout::UINT,lpdwResult::PDWORD_PTR)
    ccall((:SendMessageTimeoutA,wnd),LRESULT,(Cint,UINT,WPARAM,LPARAM,UINT,UINT,PDWORD_PTR),hWnd,Msg,wParam,lParam,fuFlags,uTimeout,lpdwResult)
end

function SendMessageTimeoutW(hWnd::Cint,Msg::UINT,wParam::WPARAM,lParam::LPARAM,fuFlags::UINT,uTimeout::UINT,lpdwResult::PDWORD_PTR)
    ccall((:SendMessageTimeoutW,wnd),LRESULT,(Cint,UINT,WPARAM,LPARAM,UINT,UINT,PDWORD_PTR),hWnd,Msg,wParam,lParam,fuFlags,uTimeout,lpdwResult)
end

function SendNotifyMessageA(hWnd::Cint,Msg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:SendNotifyMessageA,wnd),BOOL,(Cint,UINT,WPARAM,LPARAM),hWnd,Msg,wParam,lParam)
end

function SendNotifyMessageW(hWnd::Cint,Msg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:SendNotifyMessageW,wnd),BOOL,(Cint,UINT,WPARAM,LPARAM),hWnd,Msg,wParam,lParam)
end

function SendMessageCallbackA(hWnd::Cint,Msg::UINT,wParam::WPARAM,lParam::LPARAM,lpResultCallBack::SENDASYNCPROC,dwData::ULONG_PTR)
    ccall((:SendMessageCallbackA,wnd),BOOL,(Cint,UINT,WPARAM,LPARAM,SENDASYNCPROC,ULONG_PTR),hWnd,Msg,wParam,lParam,lpResultCallBack,dwData)
end

function SendMessageCallbackW(hWnd::Cint,Msg::UINT,wParam::WPARAM,lParam::LPARAM,lpResultCallBack::SENDASYNCPROC,dwData::ULONG_PTR)
    ccall((:SendMessageCallbackW,wnd),BOOL,(Cint,UINT,WPARAM,LPARAM,SENDASYNCPROC,ULONG_PTR),hWnd,Msg,wParam,lParam,lpResultCallBack,dwData)
end

function BroadcastSystemMessageExA(flags::DWORD,lpInfo::LPDWORD,Msg::UINT,wParam::WPARAM,lParam::LPARAM,pbsmInfo::PBSMINFO)
    ccall((:BroadcastSystemMessageExA,wnd),Clong,(DWORD,LPDWORD,UINT,WPARAM,LPARAM,PBSMINFO),flags,lpInfo,Msg,wParam,lParam,pbsmInfo)
end

function BroadcastSystemMessageExW(flags::DWORD,lpInfo::LPDWORD,Msg::UINT,wParam::WPARAM,lParam::LPARAM,pbsmInfo::PBSMINFO)
    ccall((:BroadcastSystemMessageExW,wnd),Clong,(DWORD,LPDWORD,UINT,WPARAM,LPARAM,PBSMINFO),flags,lpInfo,Msg,wParam,lParam,pbsmInfo)
end

function BroadcastSystemMessageA(flags::DWORD,lpInfo::LPDWORD,Msg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:BroadcastSystemMessageA,wnd),Clong,(DWORD,LPDWORD,UINT,WPARAM,LPARAM),flags,lpInfo,Msg,wParam,lParam)
end

function BroadcastSystemMessageW(flags::DWORD,lpInfo::LPDWORD,Msg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:BroadcastSystemMessageW,wnd),Clong,(DWORD,LPDWORD,UINT,WPARAM,LPARAM),flags,lpInfo,Msg,wParam,lParam)
end

function RegisterDeviceNotificationA(hRecipient::HANDLE,NotificationFilter::LPVOID,Flags::DWORD)
    ccall((:RegisterDeviceNotificationA,wnd),HDEVNOTIFY,(HANDLE,LPVOID,DWORD),hRecipient,NotificationFilter,Flags)
end

function RegisterDeviceNotificationW(hRecipient::HANDLE,NotificationFilter::LPVOID,Flags::DWORD)
    ccall((:RegisterDeviceNotificationW,wnd),HDEVNOTIFY,(HANDLE,LPVOID,DWORD),hRecipient,NotificationFilter,Flags)
end

function UnregisterDeviceNotification(Handle::HDEVNOTIFY)
    ccall((:UnregisterDeviceNotification,wnd),BOOL,(HDEVNOTIFY,),Handle)
end

function RegisterPowerSettingNotification(hRecipient::HANDLE,PowerSettingGuid::LPCGUID,Flags::DWORD)
    ccall((:RegisterPowerSettingNotification,wnd),HPOWERNOTIFY,(HANDLE,LPCGUID,DWORD),hRecipient,PowerSettingGuid,Flags)
end

function UnregisterPowerSettingNotification(Handle::HPOWERNOTIFY)
    ccall((:UnregisterPowerSettingNotification,wnd),BOOL,(HPOWERNOTIFY,),Handle)
end

function RegisterSuspendResumeNotification(hRecipient::HANDLE,Flags::DWORD)
    ccall((:RegisterSuspendResumeNotification,wnd),HPOWERNOTIFY,(HANDLE,DWORD),hRecipient,Flags)
end

function UnregisterSuspendResumeNotification(Handle::HPOWERNOTIFY)
    ccall((:UnregisterSuspendResumeNotification,wnd),BOOL,(HPOWERNOTIFY,),Handle)
end

function PostMessageA(hWnd::Cint,Msg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:PostMessageA,wnd),BOOL,(Cint,UINT,WPARAM,LPARAM),hWnd,Msg,wParam,lParam)
end

function PostMessageW(hWnd::Cint,Msg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:PostMessageW,wnd),BOOL,(Cint,UINT,WPARAM,LPARAM),hWnd,Msg,wParam,lParam)
end

function PostThreadMessageA(idThread::DWORD,Msg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:PostThreadMessageA,wnd),BOOL,(DWORD,UINT,WPARAM,LPARAM),idThread,Msg,wParam,lParam)
end

function PostThreadMessageW(idThread::DWORD,Msg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:PostThreadMessageW,wnd),BOOL,(DWORD,UINT,WPARAM,LPARAM),idThread,Msg,wParam,lParam)
end

function AttachThreadInput(idAttach::DWORD,idAttachTo::DWORD,fAttach::BOOL)
    ccall((:AttachThreadInput,wnd),BOOL,(DWORD,DWORD,BOOL),idAttach,idAttachTo,fAttach)
end

function ReplyMessage(lResult::LRESULT)
    ccall((:ReplyMessage,wnd),BOOL,(LRESULT,),lResult)
end

function WaitMessage()
    ccall((:WaitMessage,wnd),BOOL,())
end

function WaitForInputIdle(hProcess::HANDLE,dwMilliseconds::DWORD)
    ccall((:WaitForInputIdle,wnd),DWORD,(HANDLE,DWORD),hProcess,dwMilliseconds)
end

function DefWindowProcA(hWnd::Cint,Msg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:DefWindowProcA,wnd),LRESULT,(Cint,UINT,WPARAM,LPARAM),hWnd,Msg,wParam,lParam)
end

function DefWindowProcW(hWnd::Cint,Msg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:DefWindowProcW,wnd),LRESULT,(Cint,UINT,WPARAM,LPARAM),hWnd,Msg,wParam,lParam)
end

function PostQuitMessage(nExitCode::Cint)
    ccall((:PostQuitMessage,wnd),Void,(Cint,),nExitCode)
end

function CallWindowProcA(lpPrevWndFunc::WNDPROC,hWnd::Cint,Msg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:CallWindowProcA,wnd),LRESULT,(WNDPROC,Cint,UINT,WPARAM,LPARAM),lpPrevWndFunc,hWnd,Msg,wParam,lParam)
end

function CallWindowProcW(lpPrevWndFunc::WNDPROC,hWnd::Cint,Msg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:CallWindowProcW,wnd),LRESULT,(WNDPROC,Cint,UINT,WPARAM,LPARAM),lpPrevWndFunc,hWnd,Msg,wParam,lParam)
end

function InSendMessage()
    ccall((:InSendMessage,wnd),BOOL,())
end

function InSendMessageEx(lpReserved::LPVOID)
    ccall((:InSendMessageEx,wnd),DWORD,(LPVOID,),lpReserved)
end

function GetDoubleClickTime()
    ccall((:GetDoubleClickTime,wnd),UINT,())
end

function SetDoubleClickTime(arg1::UINT)
    ccall((:SetDoubleClickTime,wnd),BOOL,(UINT,),arg1)
end

function RegisterClassA(lpWndClass)
    ccall((:RegisterClassA,wnd),ATOM,(Ptr{WNDCLASSA},),lpWndClass)
end

function RegisterClassW(lpWndClass)
    ccall((:RegisterClassW,wnd),ATOM,(Ptr{WNDCLASSW},),lpWndClass)
end

function UnregisterClassA(lpClassName::LPCSTR,hInstance::HINSTANCE)
    ccall((:UnregisterClassA,wnd),BOOL,(LPCSTR,HINSTANCE),lpClassName,hInstance)
end

function UnregisterClassW(lpClassName::LPCWSTR,hInstance::HINSTANCE)
    ccall((:UnregisterClassW,wnd),BOOL,(LPCWSTR,HINSTANCE),lpClassName,hInstance)
end

function GetClassInfoA(hInstance::HINSTANCE,lpClassName::LPCSTR,lpWndClass::LPWNDCLASSA)
    ccall((:GetClassInfoA,wnd),BOOL,(HINSTANCE,LPCSTR,LPWNDCLASSA),hInstance,lpClassName,lpWndClass)
end

function GetClassInfoW(hInstance::HINSTANCE,lpClassName::LPCWSTR,lpWndClass::LPWNDCLASSW)
    ccall((:GetClassInfoW,wnd),BOOL,(HINSTANCE,LPCWSTR,LPWNDCLASSW),hInstance,lpClassName,lpWndClass)
end

function RegisterClassExA(arg1)
    ccall((:RegisterClassExA,wnd),ATOM,(Ptr{WNDCLASSEXA},),arg1)
end

function RegisterClassExW(arg1)
    ccall((:RegisterClassExW,wnd),ATOM,(Ptr{WNDCLASSEXW},),arg1)
end

function GetClassInfoExA(hInstance::HINSTANCE,lpszClass::LPCSTR,lpwcx::LPWNDCLASSEXA)
    ccall((:GetClassInfoExA,wnd),BOOL,(HINSTANCE,LPCSTR,LPWNDCLASSEXA),hInstance,lpszClass,lpwcx)
end

function GetClassInfoExW(hInstance::HINSTANCE,lpszClass::LPCWSTR,lpwcx::LPWNDCLASSEXW)
    ccall((:GetClassInfoExW,wnd),BOOL,(HINSTANCE,LPCWSTR,LPWNDCLASSEXW),hInstance,lpszClass,lpwcx)
end

function CreateWindowExA()
    ccall((:CreateWindowExA,wnd),Cint,())
end

function CreateWindowExW()
    ccall((:CreateWindowExW,wnd),Cint,())
end

function IsWindow(hWnd::Cint)
    ccall((:IsWindow,wnd),BOOL,(Cint,),hWnd)
end

function IsMenu(hMenu::Cint)
    ccall((:IsMenu,wnd),BOOL,(Cint,),hMenu)
end

function IsChild(hWndParent::Cint,hWnd::Cint)
    ccall((:IsChild,wnd),BOOL,(Cint,Cint),hWndParent,hWnd)
end

function DestroyWindow(hWnd::Cint)
    ccall((:DestroyWindow,wnd),BOOL,(Cint,),hWnd)
end

function ShowWindow(hWnd::Cint,nCmdShow::Cint)
    ccall((:ShowWindow,wnd),BOOL,(Cint,Cint),hWnd,nCmdShow)
end

function AnimateWindow(hWnd::Cint,dwTime::DWORD,dwFlags::DWORD)
    ccall((:AnimateWindow,wnd),BOOL,(Cint,DWORD,DWORD),hWnd,dwTime,dwFlags)
end

function GetLayeredWindowAttributes(hwnd::Cint,pcrKey,pbAlpha,pdwFlags)
    ccall((:GetLayeredWindowAttributes,wnd),BOOL,(Cint,Ptr{Cint},Ptr{BYTE},Ptr{DWORD}),hwnd,pcrKey,pbAlpha,pdwFlags)
end

function PrintWindow(hwnd::Cint,hdcBlt::Cint,nFlags::UINT)
    ccall((:PrintWindow,wnd),BOOL,(Cint,Cint,UINT),hwnd,hdcBlt,nFlags)
end

function SetLayeredWindowAttributes(hwnd::Cint,crKey::Cint,bAlpha::BYTE,dwFlags::DWORD)
    ccall((:SetLayeredWindowAttributes,wnd),BOOL,(Cint,Cint,BYTE,DWORD),hwnd,crKey,bAlpha,dwFlags)
end

function ShowWindowAsync(hWnd::Cint,nCmdShow::Cint)
    ccall((:ShowWindowAsync,wnd),BOOL,(Cint,Cint),hWnd,nCmdShow)
end

function FlashWindow(hWnd::Cint,bInvert::BOOL)
    ccall((:FlashWindow,wnd),BOOL,(Cint,BOOL),hWnd,bInvert)
end

function FlashWindowEx(pfwi::PFLASHWINFO)
    ccall((:FlashWindowEx,wnd),BOOL,(PFLASHWINFO,),pfwi)
end

function ShowOwnedPopups(hWnd::Cint,fShow::BOOL)
    ccall((:ShowOwnedPopups,wnd),BOOL,(Cint,BOOL),hWnd,fShow)
end

function OpenIcon(hWnd::Cint)
    ccall((:OpenIcon,wnd),BOOL,(Cint,),hWnd)
end

function CloseWindow(hWnd::Cint)
    ccall((:CloseWindow,wnd),BOOL,(Cint,),hWnd)
end

function MoveWindow(hWnd::Cint,X::Cint,Y::Cint,nWidth::Cint,nHeight::Cint,bRepaint::BOOL)
    ccall((:MoveWindow,wnd),BOOL,(Cint,Cint,Cint,Cint,Cint,BOOL),hWnd,X,Y,nWidth,nHeight,bRepaint)
end

function SetWindowPos(hWnd::Cint,hWndInsertAfter::Cint,X::Cint,Y::Cint,cx::Cint,cy::Cint,uFlags::UINT)
    ccall((:SetWindowPos,wnd),BOOL,(Cint,Cint,Cint,Cint,Cint,Cint,UINT),hWnd,hWndInsertAfter,X,Y,cx,cy,uFlags)
end

function GetWindowPlacement(hWnd::Cint,lpwndpl)
    ccall((:GetWindowPlacement,wnd),BOOL,(Cint,Ptr{WINDOWPLACEMENT}),hWnd,lpwndpl)
end

function SetWindowPlacement(hWnd::Cint,lpwndpl)
    ccall((:SetWindowPlacement,wnd),BOOL,(Cint,Ptr{WINDOWPLACEMENT}),hWnd,lpwndpl)
end

function GetWindowDisplayAffinity(hWnd::Cint,pdwAffinity)
    ccall((:GetWindowDisplayAffinity,wnd),BOOL,(Cint,Ptr{DWORD}),hWnd,pdwAffinity)
end

function SetWindowDisplayAffinity(hWnd::Cint,dwAffinity::DWORD)
    ccall((:SetWindowDisplayAffinity,wnd),BOOL,(Cint,DWORD),hWnd,dwAffinity)
end

function BeginDeferWindowPos(nNumWindows::Cint)
    ccall((:BeginDeferWindowPos,wnd),HDWP,(Cint,),nNumWindows)
end

function DeferWindowPos(hWinPosInfo::HDWP,hWnd::Cint,hWndInsertAfter::Cint,x::Cint,y::Cint,cx::Cint,cy::Cint,uFlags::UINT)
    ccall((:DeferWindowPos,wnd),HDWP,(HDWP,Cint,Cint,Cint,Cint,Cint,Cint,UINT),hWinPosInfo,hWnd,hWndInsertAfter,x,y,cx,cy,uFlags)
end

function EndDeferWindowPos(hWinPosInfo::HDWP)
    ccall((:EndDeferWindowPos,wnd),BOOL,(HDWP,),hWinPosInfo)
end

function IsWindowVisible(hWnd::Cint)
    ccall((:IsWindowVisible,wnd),BOOL,(Cint,),hWnd)
end

function IsIconic(hWnd::Cint)
    ccall((:IsIconic,wnd),BOOL,(Cint,),hWnd)
end

function AnyPopup()
    ccall((:AnyPopup,wnd),BOOL,())
end

function BringWindowToTop(hWnd::Cint)
    ccall((:BringWindowToTop,wnd),BOOL,(Cint,),hWnd)
end

function IsZoomed(hWnd::Cint)
    ccall((:IsZoomed,wnd),BOOL,(Cint,),hWnd)
end

function CreateDialogParamA()
    ccall((:CreateDialogParamA,wnd),Cint,())
end

function CreateDialogParamW()
    ccall((:CreateDialogParamW,wnd),Cint,())
end

function CreateDialogIndirectParamA()
    ccall((:CreateDialogIndirectParamA,wnd),Cint,())
end

function CreateDialogIndirectParamW()
    ccall((:CreateDialogIndirectParamW,wnd),Cint,())
end

function DialogBoxParamA(hInstance::HINSTANCE,lpTemplateName::LPCSTR,hWndParent::Cint,lpDialogFunc::DLGPROC,dwInitParam::LPARAM)
    ccall((:DialogBoxParamA,wnd),INT_PTR,(HINSTANCE,LPCSTR,Cint,DLGPROC,LPARAM),hInstance,lpTemplateName,hWndParent,lpDialogFunc,dwInitParam)
end

function DialogBoxParamW(hInstance::HINSTANCE,lpTemplateName::LPCWSTR,hWndParent::Cint,lpDialogFunc::DLGPROC,dwInitParam::LPARAM)
    ccall((:DialogBoxParamW,wnd),INT_PTR,(HINSTANCE,LPCWSTR,Cint,DLGPROC,LPARAM),hInstance,lpTemplateName,hWndParent,lpDialogFunc,dwInitParam)
end

function DialogBoxIndirectParamA(hInstance::HINSTANCE,hDialogTemplate::LPCDLGTEMPLATEA,hWndParent::Cint,lpDialogFunc::DLGPROC,dwInitParam::LPARAM)
    ccall((:DialogBoxIndirectParamA,wnd),INT_PTR,(HINSTANCE,LPCDLGTEMPLATEA,Cint,DLGPROC,LPARAM),hInstance,hDialogTemplate,hWndParent,lpDialogFunc,dwInitParam)
end

function DialogBoxIndirectParamW(hInstance::HINSTANCE,hDialogTemplate::LPCDLGTEMPLATEW,hWndParent::Cint,lpDialogFunc::DLGPROC,dwInitParam::LPARAM)
    ccall((:DialogBoxIndirectParamW,wnd),INT_PTR,(HINSTANCE,LPCDLGTEMPLATEW,Cint,DLGPROC,LPARAM),hInstance,hDialogTemplate,hWndParent,lpDialogFunc,dwInitParam)
end

function EndDialog(hDlg::Cint,nResult::INT_PTR)
    ccall((:EndDialog,wnd),BOOL,(Cint,INT_PTR),hDlg,nResult)
end

function GetDlgItem()
    ccall((:GetDlgItem,wnd),Cint,())
end

function SetDlgItemInt(hDlg::Cint,nIDDlgItem::Cint,uValue::UINT,bSigned::BOOL)
    ccall((:SetDlgItemInt,wnd),BOOL,(Cint,Cint,UINT,BOOL),hDlg,nIDDlgItem,uValue,bSigned)
end

function GetDlgItemInt(hDlg::Cint,nIDDlgItem::Cint,lpTranslated,bSigned::BOOL)
    ccall((:GetDlgItemInt,wnd),UINT,(Cint,Cint,Ptr{BOOL},BOOL),hDlg,nIDDlgItem,lpTranslated,bSigned)
end

function SetDlgItemTextA(hDlg::Cint,nIDDlgItem::Cint,lpString::LPCSTR)
    ccall((:SetDlgItemTextA,wnd),BOOL,(Cint,Cint,LPCSTR),hDlg,nIDDlgItem,lpString)
end

function SetDlgItemTextW(hDlg::Cint,nIDDlgItem::Cint,lpString::LPCWSTR)
    ccall((:SetDlgItemTextW,wnd),BOOL,(Cint,Cint,LPCWSTR),hDlg,nIDDlgItem,lpString)
end

function GetDlgItemTextA(hDlg::Cint,nIDDlgItem::Cint,lpString::LPSTR,cchMax::Cint)
    ccall((:GetDlgItemTextA,wnd),UINT,(Cint,Cint,LPSTR,Cint),hDlg,nIDDlgItem,lpString,cchMax)
end

function GetDlgItemTextW(hDlg::Cint,nIDDlgItem::Cint,lpString::LPWSTR,cchMax::Cint)
    ccall((:GetDlgItemTextW,wnd),UINT,(Cint,Cint,LPWSTR,Cint),hDlg,nIDDlgItem,lpString,cchMax)
end

function CheckDlgButton(hDlg::Cint,nIDButton::Cint,uCheck::UINT)
    ccall((:CheckDlgButton,wnd),BOOL,(Cint,Cint,UINT),hDlg,nIDButton,uCheck)
end

function CheckRadioButton(hDlg::Cint,nIDFirstButton::Cint,nIDLastButton::Cint,nIDCheckButton::Cint)
    ccall((:CheckRadioButton,wnd),BOOL,(Cint,Cint,Cint,Cint),hDlg,nIDFirstButton,nIDLastButton,nIDCheckButton)
end

function IsDlgButtonChecked(hDlg::Cint,nIDButton::Cint)
    ccall((:IsDlgButtonChecked,wnd),UINT,(Cint,Cint),hDlg,nIDButton)
end

function SendDlgItemMessageA(hDlg::Cint,nIDDlgItem::Cint,Msg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:SendDlgItemMessageA,wnd),LRESULT,(Cint,Cint,UINT,WPARAM,LPARAM),hDlg,nIDDlgItem,Msg,wParam,lParam)
end

function SendDlgItemMessageW(hDlg::Cint,nIDDlgItem::Cint,Msg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:SendDlgItemMessageW,wnd),LRESULT,(Cint,Cint,UINT,WPARAM,LPARAM),hDlg,nIDDlgItem,Msg,wParam,lParam)
end

function GetNextDlgGroupItem()
    ccall((:GetNextDlgGroupItem,wnd),Cint,())
end

function GetNextDlgTabItem()
    ccall((:GetNextDlgTabItem,wnd),Cint,())
end

function GetDlgCtrlID(hWnd::Cint)
    ccall((:GetDlgCtrlID,wnd),Cint,(Cint,),hWnd)
end

function GetDialogBaseUnits()
    ccall((:GetDialogBaseUnits,wnd),Clong,())
end

function DefDlgProcA(hDlg::Cint,Msg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:DefDlgProcA,wnd),LRESULT,(Cint,UINT,WPARAM,LPARAM),hDlg,Msg,wParam,lParam)
end

function DefDlgProcW(hDlg::Cint,Msg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:DefDlgProcW,wnd),LRESULT,(Cint,UINT,WPARAM,LPARAM),hDlg,Msg,wParam,lParam)
end

function CallMsgFilterA(lpMsg::LPMSG,nCode::Cint)
    ccall((:CallMsgFilterA,wnd),BOOL,(LPMSG,Cint),lpMsg,nCode)
end

function CallMsgFilterW(lpMsg::LPMSG,nCode::Cint)
    ccall((:CallMsgFilterW,wnd),BOOL,(LPMSG,Cint),lpMsg,nCode)
end

function OpenClipboard(hWndNewOwner::Cint)
    ccall((:OpenClipboard,wnd),BOOL,(Cint,),hWndNewOwner)
end

function CloseClipboard()
    ccall((:CloseClipboard,wnd),BOOL,())
end

function GetClipboardSequenceNumber()
    ccall((:GetClipboardSequenceNumber,wnd),DWORD,())
end

function GetClipboardOwner()
    ccall((:GetClipboardOwner,wnd),Cint,())
end

function SetClipboardViewer()
    ccall((:SetClipboardViewer,wnd),Cint,())
end

function GetClipboardViewer()
    ccall((:GetClipboardViewer,wnd),Cint,())
end

function ChangeClipboardChain(hWndRemove::Cint,hWndNewNext::Cint)
    ccall((:ChangeClipboardChain,wnd),BOOL,(Cint,Cint),hWndRemove,hWndNewNext)
end

function SetClipboardData(uFormat::UINT,hMem::HANDLE)
    ccall((:SetClipboardData,wnd),HANDLE,(UINT,HANDLE),uFormat,hMem)
end

function GetClipboardData(uFormat::UINT)
    ccall((:GetClipboardData,wnd),HANDLE,(UINT,),uFormat)
end

function RegisterClipboardFormatA(lpszFormat::LPCSTR)
    ccall((:RegisterClipboardFormatA,wnd),UINT,(LPCSTR,),lpszFormat)
end

function RegisterClipboardFormatW(lpszFormat::LPCWSTR)
    ccall((:RegisterClipboardFormatW,wnd),UINT,(LPCWSTR,),lpszFormat)
end

function CountClipboardFormats()
    ccall((:CountClipboardFormats,wnd),Cint,())
end

function EnumClipboardFormats(format::UINT)
    ccall((:EnumClipboardFormats,wnd),UINT,(UINT,),format)
end

function GetClipboardFormatNameA(format::UINT,lpszFormatName::LPSTR,cchMaxCount::Cint)
    ccall((:GetClipboardFormatNameA,wnd),Cint,(UINT,LPSTR,Cint),format,lpszFormatName,cchMaxCount)
end

function GetClipboardFormatNameW(format::UINT,lpszFormatName::LPWSTR,cchMaxCount::Cint)
    ccall((:GetClipboardFormatNameW,wnd),Cint,(UINT,LPWSTR,Cint),format,lpszFormatName,cchMaxCount)
end

function EmptyClipboard()
    ccall((:EmptyClipboard,wnd),BOOL,())
end

function IsClipboardFormatAvailable(format::UINT)
    ccall((:IsClipboardFormatAvailable,wnd),BOOL,(UINT,),format)
end

function GetPriorityClipboardFormat(paFormatPriorityList,cFormats::Cint)
    ccall((:GetPriorityClipboardFormat,wnd),Cint,(Ptr{UINT},Cint),paFormatPriorityList,cFormats)
end

function GetOpenClipboardWindow()
    ccall((:GetOpenClipboardWindow,wnd),Cint,())
end

function CharToOemA(pSrc::LPCSTR,pDst::LPSTR)
    ccall((:CharToOemA,wnd),BOOL,(LPCSTR,LPSTR),pSrc,pDst)
end

function CharToOemW(pSrc::LPCWSTR,pDst::LPSTR)
    ccall((:CharToOemW,wnd),BOOL,(LPCWSTR,LPSTR),pSrc,pDst)
end

function OemToCharA(pSrc::LPCSTR,pDst::LPSTR)
    ccall((:OemToCharA,wnd),BOOL,(LPCSTR,LPSTR),pSrc,pDst)
end

function OemToCharW(pSrc::LPCSTR,pDst::LPWSTR)
    ccall((:OemToCharW,wnd),BOOL,(LPCSTR,LPWSTR),pSrc,pDst)
end

function CharToOemBuffA(lpszSrc::LPCSTR,lpszDst::LPSTR,cchDstLength::DWORD)
    ccall((:CharToOemBuffA,wnd),BOOL,(LPCSTR,LPSTR,DWORD),lpszSrc,lpszDst,cchDstLength)
end

function CharToOemBuffW(lpszSrc::LPCWSTR,lpszDst::LPSTR,cchDstLength::DWORD)
    ccall((:CharToOemBuffW,wnd),BOOL,(LPCWSTR,LPSTR,DWORD),lpszSrc,lpszDst,cchDstLength)
end

function OemToCharBuffA(lpszSrc::LPCSTR,lpszDst::LPSTR,cchDstLength::DWORD)
    ccall((:OemToCharBuffA,wnd),BOOL,(LPCSTR,LPSTR,DWORD),lpszSrc,lpszDst,cchDstLength)
end

function OemToCharBuffW(lpszSrc::LPCSTR,lpszDst::LPWSTR,cchDstLength::DWORD)
    ccall((:OemToCharBuffW,wnd),BOOL,(LPCSTR,LPWSTR,DWORD),lpszSrc,lpszDst,cchDstLength)
end

function CharUpperA(lpsz::LPSTR)
    ccall((:CharUpperA,wnd),LPSTR,(LPSTR,),lpsz)
end

function CharUpperW(lpsz::LPWSTR)
    ccall((:CharUpperW,wnd),LPWSTR,(LPWSTR,),lpsz)
end

function CharUpperBuffA(lpsz::LPSTR,cchLength::DWORD)
    ccall((:CharUpperBuffA,wnd),DWORD,(LPSTR,DWORD),lpsz,cchLength)
end

function CharUpperBuffW(lpsz::LPWSTR,cchLength::DWORD)
    ccall((:CharUpperBuffW,wnd),DWORD,(LPWSTR,DWORD),lpsz,cchLength)
end

function CharLowerA(lpsz::LPSTR)
    ccall((:CharLowerA,wnd),LPSTR,(LPSTR,),lpsz)
end

function CharLowerW(lpsz::LPWSTR)
    ccall((:CharLowerW,wnd),LPWSTR,(LPWSTR,),lpsz)
end

function CharLowerBuffA(lpsz::LPSTR,cchLength::DWORD)
    ccall((:CharLowerBuffA,wnd),DWORD,(LPSTR,DWORD),lpsz,cchLength)
end

function CharLowerBuffW(lpsz::LPWSTR,cchLength::DWORD)
    ccall((:CharLowerBuffW,wnd),DWORD,(LPWSTR,DWORD),lpsz,cchLength)
end

function CharNextA(lpsz::LPCSTR)
    ccall((:CharNextA,wnd),LPSTR,(LPCSTR,),lpsz)
end

function CharNextW(lpsz::LPCWSTR)
    ccall((:CharNextW,wnd),LPWSTR,(LPCWSTR,),lpsz)
end

function CharPrevA(lpszStart::LPCSTR,lpszCurrent::LPCSTR)
    ccall((:CharPrevA,wnd),LPSTR,(LPCSTR,LPCSTR),lpszStart,lpszCurrent)
end

function CharPrevW(lpszStart::LPCWSTR,lpszCurrent::LPCWSTR)
    ccall((:CharPrevW,wnd),LPWSTR,(LPCWSTR,LPCWSTR),lpszStart,lpszCurrent)
end

function CharNextExA(CodePage::WORD,lpCurrentChar::LPCSTR,dwFlags::DWORD)
    ccall((:CharNextExA,wnd),LPSTR,(WORD,LPCSTR,DWORD),CodePage,lpCurrentChar,dwFlags)
end

function CharPrevExA(CodePage::WORD,lpStart::LPCSTR,lpCurrentChar::LPCSTR,dwFlags::DWORD)
    ccall((:CharPrevExA,wnd),LPSTR,(WORD,LPCSTR,LPCSTR,DWORD),CodePage,lpStart,lpCurrentChar,dwFlags)
end

function IsCharAlphaA(ch::CHAR)
    ccall((:IsCharAlphaA,wnd),BOOL,(CHAR,),ch)
end

function IsCharAlphaW(ch::WCHAR)
    ccall((:IsCharAlphaW,wnd),BOOL,(WCHAR,),ch)
end

function IsCharAlphaNumericA(ch::CHAR)
    ccall((:IsCharAlphaNumericA,wnd),BOOL,(CHAR,),ch)
end

function IsCharAlphaNumericW(ch::WCHAR)
    ccall((:IsCharAlphaNumericW,wnd),BOOL,(WCHAR,),ch)
end

function IsCharUpperA(ch::CHAR)
    ccall((:IsCharUpperA,wnd),BOOL,(CHAR,),ch)
end

function IsCharUpperW(ch::WCHAR)
    ccall((:IsCharUpperW,wnd),BOOL,(WCHAR,),ch)
end

function IsCharLowerA(ch::CHAR)
    ccall((:IsCharLowerA,wnd),BOOL,(CHAR,),ch)
end

function IsCharLowerW(ch::WCHAR)
    ccall((:IsCharLowerW,wnd),BOOL,(WCHAR,),ch)
end

function SetFocus()
    ccall((:SetFocus,wnd),Cint,())
end

function GetActiveWindow()
    ccall((:GetActiveWindow,wnd),Cint,())
end

function GetFocus()
    ccall((:GetFocus,wnd),Cint,())
end

function GetKBCodePage()
    ccall((:GetKBCodePage,wnd),UINT,())
end

function GetKeyState(nVirtKey::Cint)
    ccall((:GetKeyState,wnd),SHORT,(Cint,),nVirtKey)
end

function GetAsyncKeyState(vKey::Cint)
    ccall((:GetAsyncKeyState,wnd),SHORT,(Cint,),vKey)
end

function GetKeyboardState(lpKeyState::PBYTE)
    ccall((:GetKeyboardState,wnd),BOOL,(PBYTE,),lpKeyState)
end

function SetKeyboardState(lpKeyState::LPBYTE)
    ccall((:SetKeyboardState,wnd),BOOL,(LPBYTE,),lpKeyState)
end

function GetKeyNameTextA(lParam::LONG,lpString::LPSTR,cchSize::Cint)
    ccall((:GetKeyNameTextA,wnd),Cint,(LONG,LPSTR,Cint),lParam,lpString,cchSize)
end

function GetKeyNameTextW(lParam::LONG,lpString::LPWSTR,cchSize::Cint)
    ccall((:GetKeyNameTextW,wnd),Cint,(LONG,LPWSTR,Cint),lParam,lpString,cchSize)
end

function GetKeyboardType(nTypeFlag::Cint)
    ccall((:GetKeyboardType,wnd),Cint,(Cint,),nTypeFlag)
end

function ToAscii(uVirtKey::UINT,uScanCode::UINT,lpKeyState,lpChar::LPWORD,uFlags::UINT)
    ccall((:ToAscii,wnd),Cint,(UINT,UINT,Ptr{BYTE},LPWORD,UINT),uVirtKey,uScanCode,lpKeyState,lpChar,uFlags)
end

function ToAsciiEx(uVirtKey::UINT,uScanCode::UINT,lpKeyState,lpChar::LPWORD,uFlags::UINT,dwhkl::HKL)
    ccall((:ToAsciiEx,wnd),Cint,(UINT,UINT,Ptr{BYTE},LPWORD,UINT,HKL),uVirtKey,uScanCode,lpKeyState,lpChar,uFlags,dwhkl)
end

function ToUnicode(wVirtKey::UINT,wScanCode::UINT,lpKeyState,pwszBuff::LPWSTR,cchBuff::Cint,wFlags::UINT)
    ccall((:ToUnicode,wnd),Cint,(UINT,UINT,Ptr{BYTE},LPWSTR,Cint,UINT),wVirtKey,wScanCode,lpKeyState,pwszBuff,cchBuff,wFlags)
end

function OemKeyScan(wOemChar::WORD)
    ccall((:OemKeyScan,wnd),DWORD,(WORD,),wOemChar)
end

function VkKeyScanA(ch::CHAR)
    ccall((:VkKeyScanA,wnd),SHORT,(CHAR,),ch)
end

function VkKeyScanW(ch::WCHAR)
    ccall((:VkKeyScanW,wnd),SHORT,(WCHAR,),ch)
end

function VkKeyScanExA(ch::CHAR,dwhkl::HKL)
    ccall((:VkKeyScanExA,wnd),SHORT,(CHAR,HKL),ch,dwhkl)
end

function VkKeyScanExW(ch::WCHAR,dwhkl::HKL)
    ccall((:VkKeyScanExW,wnd),SHORT,(WCHAR,HKL),ch,dwhkl)
end

function keybd_event(bVk::BYTE,bScan::BYTE,dwFlags::DWORD,dwExtraInfo::ULONG_PTR)
    ccall((:keybd_event,wnd),Void,(BYTE,BYTE,DWORD,ULONG_PTR),bVk,bScan,dwFlags,dwExtraInfo)
end

function mouse_event(dwFlags::DWORD,dx::DWORD,dy::DWORD,dwData::DWORD,dwExtraInfo::ULONG_PTR)
    ccall((:mouse_event,wnd),Void,(DWORD,DWORD,DWORD,DWORD,ULONG_PTR),dwFlags,dx,dy,dwData,dwExtraInfo)
end

function SendInput(cInputs::UINT,pInputs::LPINPUT,cbSize::Cint)
    ccall((:SendInput,wnd),UINT,(UINT,LPINPUT,Cint),cInputs,pInputs,cbSize)
end

function GetLastInputInfo(plii::PLASTINPUTINFO)
    ccall((:GetLastInputInfo,wnd),BOOL,(PLASTINPUTINFO,),plii)
end

function MapVirtualKeyA(uCode::UINT,uMapType::UINT)
    ccall((:MapVirtualKeyA,wnd),UINT,(UINT,UINT),uCode,uMapType)
end

function MapVirtualKeyW(uCode::UINT,uMapType::UINT)
    ccall((:MapVirtualKeyW,wnd),UINT,(UINT,UINT),uCode,uMapType)
end

function MapVirtualKeyExA(uCode::UINT,uMapType::UINT,dwhkl::HKL)
    ccall((:MapVirtualKeyExA,wnd),UINT,(UINT,UINT,HKL),uCode,uMapType,dwhkl)
end

function MapVirtualKeyExW(uCode::UINT,uMapType::UINT,dwhkl::HKL)
    ccall((:MapVirtualKeyExW,wnd),UINT,(UINT,UINT,HKL),uCode,uMapType,dwhkl)
end

function GetInputState()
    ccall((:GetInputState,wnd),BOOL,())
end

function GetQueueStatus(flags::UINT)
    ccall((:GetQueueStatus,wnd),DWORD,(UINT,),flags)
end

function GetCapture()
    ccall((:GetCapture,wnd),Cint,())
end

function SetCapture()
    ccall((:SetCapture,wnd),Cint,())
end

function ReleaseCapture()
    ccall((:ReleaseCapture,wnd),BOOL,())
end

function MsgWaitForMultipleObjects(nCount::DWORD,pHandles,fWaitAll::BOOL,dwMilliseconds::DWORD,dwWakeMask::DWORD)
    ccall((:MsgWaitForMultipleObjects,wnd),DWORD,(DWORD,Ptr{HANDLE},BOOL,DWORD,DWORD),nCount,pHandles,fWaitAll,dwMilliseconds,dwWakeMask)
end

function MsgWaitForMultipleObjectsEx(nCount::DWORD,pHandles,dwMilliseconds::DWORD,dwWakeMask::DWORD,dwFlags::DWORD)
    ccall((:MsgWaitForMultipleObjectsEx,wnd),DWORD,(DWORD,Ptr{HANDLE},DWORD,DWORD,DWORD),nCount,pHandles,dwMilliseconds,dwWakeMask,dwFlags)
end

function SetTimer(hWnd::Cint,nIDEvent::UINT_PTR,uElapse::UINT,lpTimerFunc::TIMERPROC)
    ccall((:SetTimer,wnd),UINT_PTR,(Cint,UINT_PTR,UINT,TIMERPROC),hWnd,nIDEvent,uElapse,lpTimerFunc)
end

function KillTimer(hWnd::Cint,uIDEvent::UINT_PTR)
    ccall((:KillTimer,wnd),BOOL,(Cint,UINT_PTR),hWnd,uIDEvent)
end

function IsWindowUnicode(hWnd::Cint)
    ccall((:IsWindowUnicode,wnd),BOOL,(Cint,),hWnd)
end

function EnableWindow(hWnd::Cint,bEnable::BOOL)
    ccall((:EnableWindow,wnd),BOOL,(Cint,BOOL),hWnd,bEnable)
end

function IsWindowEnabled(hWnd::Cint)
    ccall((:IsWindowEnabled,wnd),BOOL,(Cint,),hWnd)
end

function LoadAcceleratorsA()
    ccall((:LoadAcceleratorsA,wnd),Cint,())
end

function LoadAcceleratorsW()
    ccall((:LoadAcceleratorsW,wnd),Cint,())
end

function CreateAcceleratorTableA()
    ccall((:CreateAcceleratorTableA,wnd),Cint,())
end

function CreateAcceleratorTableW()
    ccall((:CreateAcceleratorTableW,wnd),Cint,())
end

function DestroyAcceleratorTable(hAccel::Cint)
    ccall((:DestroyAcceleratorTable,wnd),BOOL,(Cint,),hAccel)
end

function CopyAcceleratorTableA(hAccelSrc::Cint,lpAccelDst::LPACCEL,cAccelEntries::Cint)
    ccall((:CopyAcceleratorTableA,wnd),Cint,(Cint,LPACCEL,Cint),hAccelSrc,lpAccelDst,cAccelEntries)
end

function CopyAcceleratorTableW(hAccelSrc::Cint,lpAccelDst::LPACCEL,cAccelEntries::Cint)
    ccall((:CopyAcceleratorTableW,wnd),Cint,(Cint,LPACCEL,Cint),hAccelSrc,lpAccelDst,cAccelEntries)
end

function TranslateAcceleratorA(hWnd::Cint,hAccTable::Cint,lpMsg::LPMSG)
    ccall((:TranslateAcceleratorA,wnd),Cint,(Cint,Cint,LPMSG),hWnd,hAccTable,lpMsg)
end

function TranslateAcceleratorW(hWnd::Cint,hAccTable::Cint,lpMsg::LPMSG)
    ccall((:TranslateAcceleratorW,wnd),Cint,(Cint,Cint,LPMSG),hWnd,hAccTable,lpMsg)
end

function GetSystemMetrics(nIndex::Cint)
    ccall((:GetSystemMetrics,wnd),Cint,(Cint,),nIndex)
end

function LoadMenuA()
    ccall((:LoadMenuA,wnd),Cint,())
end

function LoadMenuW()
    ccall((:LoadMenuW,wnd),Cint,())
end

function LoadMenuIndirectA()
    ccall((:LoadMenuIndirectA,wnd),Cint,())
end

function LoadMenuIndirectW()
    ccall((:LoadMenuIndirectW,wnd),Cint,())
end

function GetMenu()
    ccall((:GetMenu,wnd),Cint,())
end

function SetMenu(hWnd::Cint,hMenu::Cint)
    ccall((:SetMenu,wnd),BOOL,(Cint,Cint),hWnd,hMenu)
end

function ChangeMenuA(hMenu::Cint,cmd::UINT,lpszNewItem::LPCSTR,cmdInsert::UINT,flags::UINT)
    ccall((:ChangeMenuA,wnd),BOOL,(Cint,UINT,LPCSTR,UINT,UINT),hMenu,cmd,lpszNewItem,cmdInsert,flags)
end

function ChangeMenuW(hMenu::Cint,cmd::UINT,lpszNewItem::LPCWSTR,cmdInsert::UINT,flags::UINT)
    ccall((:ChangeMenuW,wnd),BOOL,(Cint,UINT,LPCWSTR,UINT,UINT),hMenu,cmd,lpszNewItem,cmdInsert,flags)
end

function HiliteMenuItem(hWnd::Cint,hMenu::Cint,uIDHiliteItem::UINT,uHilite::UINT)
    ccall((:HiliteMenuItem,wnd),BOOL,(Cint,Cint,UINT,UINT),hWnd,hMenu,uIDHiliteItem,uHilite)
end

function GetMenuStringA(hMenu::Cint,uIDItem::UINT,lpString::LPSTR,cchMax::Cint,flags::UINT)
    ccall((:GetMenuStringA,wnd),Cint,(Cint,UINT,LPSTR,Cint,UINT),hMenu,uIDItem,lpString,cchMax,flags)
end

function GetMenuStringW(hMenu::Cint,uIDItem::UINT,lpString::LPWSTR,cchMax::Cint,flags::UINT)
    ccall((:GetMenuStringW,wnd),Cint,(Cint,UINT,LPWSTR,Cint,UINT),hMenu,uIDItem,lpString,cchMax,flags)
end

function GetMenuState(hMenu::Cint,uId::UINT,uFlags::UINT)
    ccall((:GetMenuState,wnd),UINT,(Cint,UINT,UINT),hMenu,uId,uFlags)
end

function DrawMenuBar(hWnd::Cint)
    ccall((:DrawMenuBar,wnd),BOOL,(Cint,),hWnd)
end

function GetSystemMenu()
    ccall((:GetSystemMenu,wnd),Cint,())
end

function CreateMenu()
    ccall((:CreateMenu,wnd),Cint,())
end

function CreatePopupMenu()
    ccall((:CreatePopupMenu,wnd),Cint,())
end

function DestroyMenu(hMenu::Cint)
    ccall((:DestroyMenu,wnd),BOOL,(Cint,),hMenu)
end

function CheckMenuItem(hMenu::Cint,uIDCheckItem::UINT,uCheck::UINT)
    ccall((:CheckMenuItem,wnd),DWORD,(Cint,UINT,UINT),hMenu,uIDCheckItem,uCheck)
end

function EnableMenuItem(hMenu::Cint,uIDEnableItem::UINT,uEnable::UINT)
    ccall((:EnableMenuItem,wnd),BOOL,(Cint,UINT,UINT),hMenu,uIDEnableItem,uEnable)
end

function GetSubMenu()
    ccall((:GetSubMenu,wnd),Cint,())
end

function GetMenuItemID(hMenu::Cint,nPos::Cint)
    ccall((:GetMenuItemID,wnd),UINT,(Cint,Cint),hMenu,nPos)
end

function GetMenuItemCount(hMenu::Cint)
    ccall((:GetMenuItemCount,wnd),Cint,(Cint,),hMenu)
end

function InsertMenuA(hMenu::Cint,uPosition::UINT,uFlags::UINT,uIDNewItem::UINT_PTR,lpNewItem::LPCSTR)
    ccall((:InsertMenuA,wnd),BOOL,(Cint,UINT,UINT,UINT_PTR,LPCSTR),hMenu,uPosition,uFlags,uIDNewItem,lpNewItem)
end

function InsertMenuW(hMenu::Cint,uPosition::UINT,uFlags::UINT,uIDNewItem::UINT_PTR,lpNewItem::LPCWSTR)
    ccall((:InsertMenuW,wnd),BOOL,(Cint,UINT,UINT,UINT_PTR,LPCWSTR),hMenu,uPosition,uFlags,uIDNewItem,lpNewItem)
end

function AppendMenuA(hMenu::Cint,uFlags::UINT,uIDNewItem::UINT_PTR,lpNewItem::LPCSTR)
    ccall((:AppendMenuA,wnd),BOOL,(Cint,UINT,UINT_PTR,LPCSTR),hMenu,uFlags,uIDNewItem,lpNewItem)
end

function AppendMenuW(hMenu::Cint,uFlags::UINT,uIDNewItem::UINT_PTR,lpNewItem::LPCWSTR)
    ccall((:AppendMenuW,wnd),BOOL,(Cint,UINT,UINT_PTR,LPCWSTR),hMenu,uFlags,uIDNewItem,lpNewItem)
end

function ModifyMenuA(hMnu::Cint,uPosition::UINT,uFlags::UINT,uIDNewItem::UINT_PTR,lpNewItem::LPCSTR)
    ccall((:ModifyMenuA,wnd),BOOL,(Cint,UINT,UINT,UINT_PTR,LPCSTR),hMnu,uPosition,uFlags,uIDNewItem,lpNewItem)
end

function ModifyMenuW(hMnu::Cint,uPosition::UINT,uFlags::UINT,uIDNewItem::UINT_PTR,lpNewItem::LPCWSTR)
    ccall((:ModifyMenuW,wnd),BOOL,(Cint,UINT,UINT,UINT_PTR,LPCWSTR),hMnu,uPosition,uFlags,uIDNewItem,lpNewItem)
end

function RemoveMenu(hMenu::Cint,uPosition::UINT,uFlags::UINT)
    ccall((:RemoveMenu,wnd),BOOL,(Cint,UINT,UINT),hMenu,uPosition,uFlags)
end

function DeleteMenu(hMenu::Cint,uPosition::UINT,uFlags::UINT)
    ccall((:DeleteMenu,wnd),BOOL,(Cint,UINT,UINT),hMenu,uPosition,uFlags)
end

function SetMenuItemBitmaps(hMenu::Cint,uPosition::UINT,uFlags::UINT,hBitmapUnchecked::Cint,hBitmapChecked::Cint)
    ccall((:SetMenuItemBitmaps,wnd),BOOL,(Cint,UINT,UINT,Cint,Cint),hMenu,uPosition,uFlags,hBitmapUnchecked,hBitmapChecked)
end

function GetMenuCheckMarkDimensions()
    ccall((:GetMenuCheckMarkDimensions,wnd),LONG,())
end

function TrackPopupMenu(hMenu::Cint,uFlags::UINT,x::Cint,y::Cint,nReserved::Cint,hWnd::Cint,prcRect)
    ccall((:TrackPopupMenu,wnd),BOOL,(Cint,UINT,Cint,Cint,Cint,Cint,Ptr{Cint}),hMenu,uFlags,x,y,nReserved,hWnd,prcRect)
end

function TrackPopupMenuEx(hMenu::Cint,uFlags::UINT,x::Cint,y::Cint,hwnd::Cint,lptpm::LPTPMPARAMS)
    ccall((:TrackPopupMenuEx,wnd),BOOL,(Cint,UINT,Cint,Cint,Cint,LPTPMPARAMS),hMenu,uFlags,x,y,hwnd,lptpm)
end

function CalculatePopupWindowPosition(anchorPoint,windowSize,flags::UINT,excludeRect,popupWindowPosition)
    ccall((:CalculatePopupWindowPosition,wnd),BOOL,(Ptr{Cint},Ptr{Cint},UINT,Ptr{Cint},Ptr{Cint}),anchorPoint,windowSize,flags,excludeRect,popupWindowPosition)
end

function GetMenuInfo()
    ccall((:GetMenuInfo,wnd),BOOL,())
end

function SetMenuInfo()
    ccall((:SetMenuInfo,wnd),BOOL,())
end

function EndMenu()
    ccall((:EndMenu,wnd),BOOL,())
end

function InsertMenuItemA(hmenu::Cint,item::UINT,fByPosition::BOOL,lpmi::LPCMENUITEMINFOA)
    ccall((:InsertMenuItemA,wnd),BOOL,(Cint,UINT,BOOL,LPCMENUITEMINFOA),hmenu,item,fByPosition,lpmi)
end

function InsertMenuItemW(hmenu::Cint,item::UINT,fByPosition::BOOL,lpmi::LPCMENUITEMINFOW)
    ccall((:InsertMenuItemW,wnd),BOOL,(Cint,UINT,BOOL,LPCMENUITEMINFOW),hmenu,item,fByPosition,lpmi)
end

function GetMenuItemInfoA(hmenu::Cint,item::UINT,fByPosition::BOOL,lpmii::LPMENUITEMINFOA)
    ccall((:GetMenuItemInfoA,wnd),BOOL,(Cint,UINT,BOOL,LPMENUITEMINFOA),hmenu,item,fByPosition,lpmii)
end

function GetMenuItemInfoW(hmenu::Cint,item::UINT,fByPosition::BOOL,lpmii::LPMENUITEMINFOW)
    ccall((:GetMenuItemInfoW,wnd),BOOL,(Cint,UINT,BOOL,LPMENUITEMINFOW),hmenu,item,fByPosition,lpmii)
end

function SetMenuItemInfoA(hmenu::Cint,item::UINT,fByPositon::BOOL,lpmii::LPCMENUITEMINFOA)
    ccall((:SetMenuItemInfoA,wnd),BOOL,(Cint,UINT,BOOL,LPCMENUITEMINFOA),hmenu,item,fByPositon,lpmii)
end

function SetMenuItemInfoW(hmenu::Cint,item::UINT,fByPositon::BOOL,lpmii::LPCMENUITEMINFOW)
    ccall((:SetMenuItemInfoW,wnd),BOOL,(Cint,UINT,BOOL,LPCMENUITEMINFOW),hmenu,item,fByPositon,lpmii)
end

function GetMenuDefaultItem(hMenu::Cint,fByPos::UINT,gmdiFlags::UINT)
    ccall((:GetMenuDefaultItem,wnd),UINT,(Cint,UINT,UINT),hMenu,fByPos,gmdiFlags)
end

function SetMenuDefaultItem(hMenu::Cint,uItem::UINT,fByPos::UINT)
    ccall((:SetMenuDefaultItem,wnd),BOOL,(Cint,UINT,UINT),hMenu,uItem,fByPos)
end

function GetMenuItemRect(hWnd::Cint,hMenu::Cint,uItem::UINT,lprcItem::Cint)
    ccall((:GetMenuItemRect,wnd),BOOL,(Cint,Cint,UINT,Cint),hWnd,hMenu,uItem,lprcItem)
end

function MenuItemFromPoint(hWnd::Cint,hMenu::Cint,ptScreen::Cint)
    ccall((:MenuItemFromPoint,wnd),Cint,(Cint,Cint,Cint),hWnd,hMenu,ptScreen)
end

function DragObject(hwndParent::Cint,hwndFrom::Cint,fmt::UINT,data::ULONG_PTR,hcur::Cint)
    ccall((:DragObject,wnd),DWORD,(Cint,Cint,UINT,ULONG_PTR,Cint),hwndParent,hwndFrom,fmt,data,hcur)
end

function DragDetect(hwnd::Cint,pt::Cint)
    ccall((:DragDetect,wnd),BOOL,(Cint,Cint),hwnd,pt)
end

function DrawIcon(hDC::Cint,X::Cint,Y::Cint,hIcon::Cint)
    ccall((:DrawIcon,wnd),BOOL,(Cint,Cint,Cint,Cint),hDC,X,Y,hIcon)
end

function DrawTextA(hdc::Cint,lpchText::LPCSTR,cchText::Cint,lprc::Cint,format::UINT)
    ccall((:DrawTextA,wnd),Cint,(Cint,LPCSTR,Cint,Cint,UINT),hdc,lpchText,cchText,lprc,format)
end

function DrawTextW(hdc::Cint,lpchText::LPCWSTR,cchText::Cint,lprc::Cint,format::UINT)
    ccall((:DrawTextW,wnd),Cint,(Cint,LPCWSTR,Cint,Cint,UINT),hdc,lpchText,cchText,lprc,format)
end

function DrawTextExA(hdc::Cint,lpchText::LPSTR,cchText::Cint,lprc::Cint,format::UINT,lpdtp::LPDRAWTEXTPARAMS)
    ccall((:DrawTextExA,wnd),Cint,(Cint,LPSTR,Cint,Cint,UINT,LPDRAWTEXTPARAMS),hdc,lpchText,cchText,lprc,format,lpdtp)
end

function DrawTextExW(hdc::Cint,lpchText::LPWSTR,cchText::Cint,lprc::Cint,format::UINT,lpdtp::LPDRAWTEXTPARAMS)
    ccall((:DrawTextExW,wnd),Cint,(Cint,LPWSTR,Cint,Cint,UINT,LPDRAWTEXTPARAMS),hdc,lpchText,cchText,lprc,format,lpdtp)
end

function GrayStringA(hDC::Cint,hBrush::Cint,lpOutputFunc::GRAYSTRINGPROC,lpData::LPARAM,nCount::Cint,X::Cint,Y::Cint,nWidth::Cint,nHeight::Cint)
    ccall((:GrayStringA,wnd),BOOL,(Cint,Cint,GRAYSTRINGPROC,LPARAM,Cint,Cint,Cint,Cint,Cint),hDC,hBrush,lpOutputFunc,lpData,nCount,X,Y,nWidth,nHeight)
end

function GrayStringW(hDC::Cint,hBrush::Cint,lpOutputFunc::GRAYSTRINGPROC,lpData::LPARAM,nCount::Cint,X::Cint,Y::Cint,nWidth::Cint,nHeight::Cint)
    ccall((:GrayStringW,wnd),BOOL,(Cint,Cint,GRAYSTRINGPROC,LPARAM,Cint,Cint,Cint,Cint,Cint),hDC,hBrush,lpOutputFunc,lpData,nCount,X,Y,nWidth,nHeight)
end

function DrawStateA(hdc::Cint,hbrFore::Cint,qfnCallBack::DRAWSTATEPROC,lData::LPARAM,wData::WPARAM,x::Cint,y::Cint,cx::Cint,cy::Cint,uFlags::UINT)
    ccall((:DrawStateA,wnd),BOOL,(Cint,Cint,DRAWSTATEPROC,LPARAM,WPARAM,Cint,Cint,Cint,Cint,UINT),hdc,hbrFore,qfnCallBack,lData,wData,x,y,cx,cy,uFlags)
end

function DrawStateW(hdc::Cint,hbrFore::Cint,qfnCallBack::DRAWSTATEPROC,lData::LPARAM,wData::WPARAM,x::Cint,y::Cint,cx::Cint,cy::Cint,uFlags::UINT)
    ccall((:DrawStateW,wnd),BOOL,(Cint,Cint,DRAWSTATEPROC,LPARAM,WPARAM,Cint,Cint,Cint,Cint,UINT),hdc,hbrFore,qfnCallBack,lData,wData,x,y,cx,cy,uFlags)
end

function TabbedTextOutA(hdc::Cint,x::Cint,y::Cint,lpString::LPCSTR,chCount::Cint,nTabPositions::Cint,lpnTabStopPositions,nTabOrigin::Cint)
    ccall((:TabbedTextOutA,wnd),LONG,(Cint,Cint,Cint,LPCSTR,Cint,Cint,Ptr{INT},Cint),hdc,x,y,lpString,chCount,nTabPositions,lpnTabStopPositions,nTabOrigin)
end

function TabbedTextOutW(hdc::Cint,x::Cint,y::Cint,lpString::LPCWSTR,chCount::Cint,nTabPositions::Cint,lpnTabStopPositions,nTabOrigin::Cint)
    ccall((:TabbedTextOutW,wnd),LONG,(Cint,Cint,Cint,LPCWSTR,Cint,Cint,Ptr{INT},Cint),hdc,x,y,lpString,chCount,nTabPositions,lpnTabStopPositions,nTabOrigin)
end

function GetTabbedTextExtentA(hdc::Cint,lpString::LPCSTR,chCount::Cint,nTabPositions::Cint,lpnTabStopPositions)
    ccall((:GetTabbedTextExtentA,wnd),DWORD,(Cint,LPCSTR,Cint,Cint,Ptr{INT}),hdc,lpString,chCount,nTabPositions,lpnTabStopPositions)
end

function GetTabbedTextExtentW(hdc::Cint,lpString::LPCWSTR,chCount::Cint,nTabPositions::Cint,lpnTabStopPositions)
    ccall((:GetTabbedTextExtentW,wnd),DWORD,(Cint,LPCWSTR,Cint,Cint,Ptr{INT}),hdc,lpString,chCount,nTabPositions,lpnTabStopPositions)
end

function UpdateWindow(hWnd::Cint)
    ccall((:UpdateWindow,wnd),BOOL,(Cint,),hWnd)
end

function SetActiveWindow()
    ccall((:SetActiveWindow,wnd),Cint,())
end

function GetForegroundWindow()
    ccall((:GetForegroundWindow,wnd),Cint,())
end

function PaintDesktop(hdc::Cint)
    ccall((:PaintDesktop,wnd),BOOL,(Cint,),hdc)
end

function SwitchToThisWindow(hwnd::Cint,fUnknown::BOOL)
    ccall((:SwitchToThisWindow,wnd),Void,(Cint,BOOL),hwnd,fUnknown)
end

function SetForegroundWindow(hWnd::Cint)
    ccall((:SetForegroundWindow,wnd),BOOL,(Cint,),hWnd)
end

function AllowSetForegroundWindow(dwProcessId::DWORD)
    ccall((:AllowSetForegroundWindow,wnd),BOOL,(DWORD,),dwProcessId)
end

function LockSetForegroundWindow(uLockCode::UINT)
    ccall((:LockSetForegroundWindow,wnd),BOOL,(UINT,),uLockCode)
end

function WindowFromDC()
    ccall((:WindowFromDC,wnd),Cint,())
end

function GetDC()
    ccall((:GetDC,wnd),Cint,())
end

function GetDCEx()
    ccall((:GetDCEx,wnd),Cint,())
end

function GetWindowDC()
    ccall((:GetWindowDC,wnd),Cint,())
end

function ReleaseDC(hWnd::Cint,hDC::Cint)
    ccall((:ReleaseDC,wnd),Cint,(Cint,Cint),hWnd,hDC)
end

function BeginPaint()
    ccall((:BeginPaint,wnd),Cint,())
end

function EndPaint(hWnd::Cint,lpPaint)
    ccall((:EndPaint,wnd),BOOL,(Cint,Ptr{PAINTSTRUCT}),hWnd,lpPaint)
end

function GetUpdateRect(hWnd::Cint,lpRect::Cint,bErase::BOOL)
    ccall((:GetUpdateRect,wnd),BOOL,(Cint,Cint,BOOL),hWnd,lpRect,bErase)
end

function GetUpdateRgn(hWnd::Cint,hRgn::HRGN,bErase::BOOL)
    ccall((:GetUpdateRgn,wnd),Cint,(Cint,HRGN,BOOL),hWnd,hRgn,bErase)
end

function SetWindowRgn(hWnd::Cint,hRgn::HRGN,bRedraw::BOOL)
    ccall((:SetWindowRgn,wnd),Cint,(Cint,HRGN,BOOL),hWnd,hRgn,bRedraw)
end

function GetWindowRgn(hWnd::Cint,hRgn::HRGN)
    ccall((:GetWindowRgn,wnd),Cint,(Cint,HRGN),hWnd,hRgn)
end

function GetWindowRgnBox(hWnd::Cint,lprc::Cint)
    ccall((:GetWindowRgnBox,wnd),Cint,(Cint,Cint),hWnd,lprc)
end

function ExcludeUpdateRgn(hDC::Cint,hWnd::Cint)
    ccall((:ExcludeUpdateRgn,wnd),Cint,(Cint,Cint),hDC,hWnd)
end

function InvalidateRect(hWnd::Cint,lpRect,bErase::BOOL)
    ccall((:InvalidateRect,wnd),BOOL,(Cint,Ptr{Cint},BOOL),hWnd,lpRect,bErase)
end

function ValidateRect(hWnd::Cint,lpRect)
    ccall((:ValidateRect,wnd),BOOL,(Cint,Ptr{Cint}),hWnd,lpRect)
end

function InvalidateRgn(hWnd::Cint,hRgn::HRGN,bErase::BOOL)
    ccall((:InvalidateRgn,wnd),BOOL,(Cint,HRGN,BOOL),hWnd,hRgn,bErase)
end

function ValidateRgn(hWnd::Cint,hRgn::HRGN)
    ccall((:ValidateRgn,wnd),BOOL,(Cint,HRGN),hWnd,hRgn)
end

function RedrawWindow(hWnd::Cint,lprcUpdate,hrgnUpdate::HRGN,flags::UINT)
    ccall((:RedrawWindow,wnd),BOOL,(Cint,Ptr{Cint},HRGN,UINT),hWnd,lprcUpdate,hrgnUpdate,flags)
end

function LockWindowUpdate(hWndLock::Cint)
    ccall((:LockWindowUpdate,wnd),BOOL,(Cint,),hWndLock)
end

function ScrollWindow(hWnd::Cint,XAmount::Cint,YAmount::Cint,lpRect,lpClipRect)
    ccall((:ScrollWindow,wnd),BOOL,(Cint,Cint,Cint,Ptr{Cint},Ptr{Cint}),hWnd,XAmount,YAmount,lpRect,lpClipRect)
end

function ScrollDC(hDC::Cint,dx::Cint,dy::Cint,lprcScroll,lprcClip,hrgnUpdate::HRGN,lprcUpdate::Cint)
    ccall((:ScrollDC,wnd),BOOL,(Cint,Cint,Cint,Ptr{Cint},Ptr{Cint},HRGN,Cint),hDC,dx,dy,lprcScroll,lprcClip,hrgnUpdate,lprcUpdate)
end

function ScrollWindowEx(hWnd::Cint,dx::Cint,dy::Cint,prcScroll,prcClip,hrgnUpdate::HRGN,prcUpdate::Cint,flags::UINT)
    ccall((:ScrollWindowEx,wnd),Cint,(Cint,Cint,Cint,Ptr{Cint},Ptr{Cint},HRGN,Cint,UINT),hWnd,dx,dy,prcScroll,prcClip,hrgnUpdate,prcUpdate,flags)
end

function SetScrollPos(hWnd::Cint,nBar::Cint,nPos::Cint,bRedraw::BOOL)
    ccall((:SetScrollPos,wnd),Cint,(Cint,Cint,Cint,BOOL),hWnd,nBar,nPos,bRedraw)
end

function GetScrollPos(hWnd::Cint,nBar::Cint)
    ccall((:GetScrollPos,wnd),Cint,(Cint,Cint),hWnd,nBar)
end

function SetScrollRange(hWnd::Cint,nBar::Cint,nMinPos::Cint,nMaxPos::Cint,bRedraw::BOOL)
    ccall((:SetScrollRange,wnd),BOOL,(Cint,Cint,Cint,Cint,BOOL),hWnd,nBar,nMinPos,nMaxPos,bRedraw)
end

function GetScrollRange(hWnd::Cint,nBar::Cint,lpMinPos::LPINT,lpMaxPos::LPINT)
    ccall((:GetScrollRange,wnd),BOOL,(Cint,Cint,LPINT,LPINT),hWnd,nBar,lpMinPos,lpMaxPos)
end

function ShowScrollBar(hWnd::Cint,wBar::Cint,bShow::BOOL)
    ccall((:ShowScrollBar,wnd),BOOL,(Cint,Cint,BOOL),hWnd,wBar,bShow)
end

function EnableScrollBar(hWnd::Cint,wSBflags::UINT,wArrows::UINT)
    ccall((:EnableScrollBar,wnd),BOOL,(Cint,UINT,UINT),hWnd,wSBflags,wArrows)
end

function SetPropA(hWnd::Cint,lpString::LPCSTR,hData::HANDLE)
    ccall((:SetPropA,wnd),BOOL,(Cint,LPCSTR,HANDLE),hWnd,lpString,hData)
end

function SetPropW(hWnd::Cint,lpString::LPCWSTR,hData::HANDLE)
    ccall((:SetPropW,wnd),BOOL,(Cint,LPCWSTR,HANDLE),hWnd,lpString,hData)
end

function GetPropA(hWnd::Cint,lpString::LPCSTR)
    ccall((:GetPropA,wnd),HANDLE,(Cint,LPCSTR),hWnd,lpString)
end

function GetPropW(hWnd::Cint,lpString::LPCWSTR)
    ccall((:GetPropW,wnd),HANDLE,(Cint,LPCWSTR),hWnd,lpString)
end

function RemovePropA(hWnd::Cint,lpString::LPCSTR)
    ccall((:RemovePropA,wnd),HANDLE,(Cint,LPCSTR),hWnd,lpString)
end

function RemovePropW(hWnd::Cint,lpString::LPCWSTR)
    ccall((:RemovePropW,wnd),HANDLE,(Cint,LPCWSTR),hWnd,lpString)
end

function EnumPropsExA(hWnd::Cint,lpEnumFunc::PROPENUMPROCEXA,lParam::LPARAM)
    ccall((:EnumPropsExA,wnd),Cint,(Cint,PROPENUMPROCEXA,LPARAM),hWnd,lpEnumFunc,lParam)
end

function EnumPropsExW(hWnd::Cint,lpEnumFunc::PROPENUMPROCEXW,lParam::LPARAM)
    ccall((:EnumPropsExW,wnd),Cint,(Cint,PROPENUMPROCEXW,LPARAM),hWnd,lpEnumFunc,lParam)
end

function EnumPropsA(hWnd::Cint,lpEnumFunc::PROPENUMPROCA)
    ccall((:EnumPropsA,wnd),Cint,(Cint,PROPENUMPROCA),hWnd,lpEnumFunc)
end

function EnumPropsW(hWnd::Cint,lpEnumFunc::PROPENUMPROCW)
    ccall((:EnumPropsW,wnd),Cint,(Cint,PROPENUMPROCW),hWnd,lpEnumFunc)
end

function SetWindowTextA(hWnd::Cint,lpString::LPCSTR)
    ccall((:SetWindowTextA,wnd),BOOL,(Cint,LPCSTR),hWnd,lpString)
end

function SetWindowTextW(hWnd::Cint,lpString::LPCWSTR)
    ccall((:SetWindowTextW,wnd),BOOL,(Cint,LPCWSTR),hWnd,lpString)
end

function GetWindowTextA(hWnd::Cint,lpString::LPSTR,nMaxCount::Cint)
    ccall((:GetWindowTextA,wnd),Cint,(Cint,LPSTR,Cint),hWnd,lpString,nMaxCount)
end

function GetWindowTextW(hWnd::Cint,lpString::LPWSTR,nMaxCount::Cint)
    ccall((:GetWindowTextW,wnd),Cint,(Cint,LPWSTR,Cint),hWnd,lpString,nMaxCount)
end

function GetWindowTextLengthA(hWnd::Cint)
    ccall((:GetWindowTextLengthA,wnd),Cint,(Cint,),hWnd)
end

function GetWindowTextLengthW(hWnd::Cint)
    ccall((:GetWindowTextLengthW,wnd),Cint,(Cint,),hWnd)
end

function GetClientRect(hWnd::Cint,lpRect::Cint)
    ccall((:GetClientRect,wnd),BOOL,(Cint,Cint),hWnd,lpRect)
end

function GetWindowRect(hWnd::Cint,lpRect::Cint)
    ccall((:GetWindowRect,wnd),BOOL,(Cint,Cint),hWnd,lpRect)
end

function AdjustWindowRect(lpRect::Cint,dwStyle::DWORD,bMenu::BOOL)
    ccall((:AdjustWindowRect,wnd),BOOL,(Cint,DWORD,BOOL),lpRect,dwStyle,bMenu)
end

function AdjustWindowRectEx(lpRect::Cint,dwStyle::DWORD,bMenu::BOOL,dwExStyle::DWORD)
    ccall((:AdjustWindowRectEx,wnd),BOOL,(Cint,DWORD,BOOL,DWORD),lpRect,dwStyle,bMenu,dwExStyle)
end

function SetWindowContextHelpId()
    ccall((:SetWindowContextHelpId,wnd),BOOL,())
end

function GetWindowContextHelpId()
    ccall((:GetWindowContextHelpId,wnd),DWORD,())
end

function SetMenuContextHelpId()
    ccall((:SetMenuContextHelpId,wnd),BOOL,())
end

function GetMenuContextHelpId()
    ccall((:GetMenuContextHelpId,wnd),DWORD,())
end

function MessageBoxA(hWnd::Cint,lpText::LPCSTR,lpCaption::LPCSTR,uType::UINT)
    ccall((:MessageBoxA,wnd),Cint,(Cint,LPCSTR,LPCSTR,UINT),hWnd,lpText,lpCaption,uType)
end

function MessageBoxW(hWnd::Cint,lpText::LPCWSTR,lpCaption::LPCWSTR,uType::UINT)
    ccall((:MessageBoxW,wnd),Cint,(Cint,LPCWSTR,LPCWSTR,UINT),hWnd,lpText,lpCaption,uType)
end

function MessageBoxExA(hWnd::Cint,lpText::LPCSTR,lpCaption::LPCSTR,uType::UINT,wLanguageId::WORD)
    ccall((:MessageBoxExA,wnd),Cint,(Cint,LPCSTR,LPCSTR,UINT,WORD),hWnd,lpText,lpCaption,uType,wLanguageId)
end

function MessageBoxExW(hWnd::Cint,lpText::LPCWSTR,lpCaption::LPCWSTR,uType::UINT,wLanguageId::WORD)
    ccall((:MessageBoxExW,wnd),Cint,(Cint,LPCWSTR,LPCWSTR,UINT,WORD),hWnd,lpText,lpCaption,uType,wLanguageId)
end

function MessageBoxIndirectA(lpmbp)
    ccall((:MessageBoxIndirectA,wnd),Cint,(Ptr{MSGBOXPARAMSA},),lpmbp)
end

function MessageBoxIndirectW(lpmbp)
    ccall((:MessageBoxIndirectW,wnd),Cint,(Ptr{MSGBOXPARAMSW},),lpmbp)
end

function MessageBeep(uType::UINT)
    ccall((:MessageBeep,wnd),BOOL,(UINT,),uType)
end

function ShowCursor(bShow::BOOL)
    ccall((:ShowCursor,wnd),Cint,(BOOL,),bShow)
end

function SetCursorPos(X::Cint,Y::Cint)
    ccall((:SetCursorPos,wnd),BOOL,(Cint,Cint),X,Y)
end

function SetCursor()
    ccall((:SetCursor,wnd),Cint,())
end

function GetCursorPos(lpPoint::Cint)
    ccall((:GetCursorPos,wnd),BOOL,(Cint,),lpPoint)
end

function ClipCursor(lpRect)
    ccall((:ClipCursor,wnd),BOOL,(Ptr{Cint},),lpRect)
end

function GetClipCursor(lpRect::Cint)
    ccall((:GetClipCursor,wnd),BOOL,(Cint,),lpRect)
end

function GetCursor()
    ccall((:GetCursor,wnd),Cint,())
end

function CreateCaret(hWnd::Cint,hBitmap::Cint,nWidth::Cint,nHeight::Cint)
    ccall((:CreateCaret,wnd),BOOL,(Cint,Cint,Cint,Cint),hWnd,hBitmap,nWidth,nHeight)
end

function GetCaretBlinkTime()
    ccall((:GetCaretBlinkTime,wnd),UINT,())
end

function SetCaretBlinkTime(uMSeconds::UINT)
    ccall((:SetCaretBlinkTime,wnd),BOOL,(UINT,),uMSeconds)
end

function DestroyCaret()
    ccall((:DestroyCaret,wnd),BOOL,())
end

function HideCaret(hWnd::Cint)
    ccall((:HideCaret,wnd),BOOL,(Cint,),hWnd)
end

function ShowCaret(hWnd::Cint)
    ccall((:ShowCaret,wnd),BOOL,(Cint,),hWnd)
end

function SetCaretPos(X::Cint,Y::Cint)
    ccall((:SetCaretPos,wnd),BOOL,(Cint,Cint),X,Y)
end

function GetCaretPos(lpPoint::Cint)
    ccall((:GetCaretPos,wnd),BOOL,(Cint,),lpPoint)
end

function ClientToScreen(hWnd::Cint,lpPoint::Cint)
    ccall((:ClientToScreen,wnd),BOOL,(Cint,Cint),hWnd,lpPoint)
end

function ScreenToClient(hWnd::Cint,lpPoint::Cint)
    ccall((:ScreenToClient,wnd),BOOL,(Cint,Cint),hWnd,lpPoint)
end

function MapWindowPoints(hWndFrom::Cint,hWndTo::Cint,lpPoints::Cint,cPoints::UINT)
    ccall((:MapWindowPoints,wnd),Cint,(Cint,Cint,Cint,UINT),hWndFrom,hWndTo,lpPoints,cPoints)
end

function WindowFromPoint()
    ccall((:WindowFromPoint,wnd),Cint,())
end

function ChildWindowFromPoint()
    ccall((:ChildWindowFromPoint,wnd),Cint,())
end

function ChildWindowFromPointEx()
    ccall((:ChildWindowFromPointEx,wnd),Cint,())
end

function GetSysColor(nIndex::Cint)
    ccall((:GetSysColor,wnd),DWORD,(Cint,),nIndex)
end

function GetSysColorBrush()
    ccall((:GetSysColorBrush,wnd),Cint,())
end

function SetSysColors(cElements::Cint,lpaElements,lpaRgbValues)
    ccall((:SetSysColors,wnd),BOOL,(Cint,Ptr{INT},Ptr{Cint}),cElements,lpaElements,lpaRgbValues)
end

function DrawFocusRect(hDC::Cint,lprc)
    ccall((:DrawFocusRect,wnd),BOOL,(Cint,Ptr{Cint}),hDC,lprc)
end

function FillRect(hDC::Cint,lprc,hbr::Cint)
    ccall((:FillRect,wnd),Cint,(Cint,Ptr{Cint},Cint),hDC,lprc,hbr)
end

function FrameRect(hDC::Cint,lprc,hbr::Cint)
    ccall((:FrameRect,wnd),Cint,(Cint,Ptr{Cint},Cint),hDC,lprc,hbr)
end

function InvertRect(hDC::Cint,lprc)
    ccall((:InvertRect,wnd),BOOL,(Cint,Ptr{Cint}),hDC,lprc)
end

function SetRect(lprc::Cint,xLeft::Cint,yTop::Cint,xRight::Cint,yBottom::Cint)
    ccall((:SetRect,wnd),BOOL,(Cint,Cint,Cint,Cint,Cint),lprc,xLeft,yTop,xRight,yBottom)
end

function SetRectEmpty(lprc::Cint)
    ccall((:SetRectEmpty,wnd),BOOL,(Cint,),lprc)
end

function CopyRect(lprcDst::Cint,lprcSrc)
    ccall((:CopyRect,wnd),BOOL,(Cint,Ptr{Cint}),lprcDst,lprcSrc)
end

function InflateRect(lprc::Cint,dx::Cint,dy::Cint)
    ccall((:InflateRect,wnd),BOOL,(Cint,Cint,Cint),lprc,dx,dy)
end

function IntersectRect(lprcDst::Cint,lprcSrc1,lprcSrc2)
    ccall((:IntersectRect,wnd),BOOL,(Cint,Ptr{Cint},Ptr{Cint}),lprcDst,lprcSrc1,lprcSrc2)
end

function UnionRect(lprcDst::Cint,lprcSrc1,lprcSrc2)
    ccall((:UnionRect,wnd),BOOL,(Cint,Ptr{Cint},Ptr{Cint}),lprcDst,lprcSrc1,lprcSrc2)
end

function SubtractRect(lprcDst::Cint,lprcSrc1,lprcSrc2)
    ccall((:SubtractRect,wnd),BOOL,(Cint,Ptr{Cint},Ptr{Cint}),lprcDst,lprcSrc1,lprcSrc2)
end

function OffsetRect(lprc::Cint,dx::Cint,dy::Cint)
    ccall((:OffsetRect,wnd),BOOL,(Cint,Cint,Cint),lprc,dx,dy)
end

function IsRectEmpty(lprc)
    ccall((:IsRectEmpty,wnd),BOOL,(Ptr{Cint},),lprc)
end

function EqualRect(lprc1,lprc2)
    ccall((:EqualRect,wnd),BOOL,(Ptr{Cint},Ptr{Cint}),lprc1,lprc2)
end

function PtInRect(lprc,pt::Cint)
    ccall((:PtInRect,wnd),BOOL,(Ptr{Cint},Cint),lprc,pt)
end

function GetWindowWord(hWnd::Cint,nIndex::Cint)
    ccall((:GetWindowWord,wnd),WORD,(Cint,Cint),hWnd,nIndex)
end

function SetWindowWord(hWnd::Cint,nIndex::Cint,wNewWord::WORD)
    ccall((:SetWindowWord,wnd),WORD,(Cint,Cint,WORD),hWnd,nIndex,wNewWord)
end

function GetWindowLongA(hWnd::Cint,nIndex::Cint)
    ccall((:GetWindowLongA,wnd),LONG,(Cint,Cint),hWnd,nIndex)
end

function GetWindowLongW(hWnd::Cint,nIndex::Cint)
    ccall((:GetWindowLongW,wnd),LONG,(Cint,Cint),hWnd,nIndex)
end

function SetWindowLongA(hWnd::Cint,nIndex::Cint,dwNewLong::LONG)
    ccall((:SetWindowLongA,wnd),LONG,(Cint,Cint,LONG),hWnd,nIndex,dwNewLong)
end

function SetWindowLongW(hWnd::Cint,nIndex::Cint,dwNewLong::LONG)
    ccall((:SetWindowLongW,wnd),LONG,(Cint,Cint,LONG),hWnd,nIndex,dwNewLong)
end

function GetClassWord(hWnd::Cint,nIndex::Cint)
    ccall((:GetClassWord,wnd),WORD,(Cint,Cint),hWnd,nIndex)
end

function SetClassWord(hWnd::Cint,nIndex::Cint,wNewWord::WORD)
    ccall((:SetClassWord,wnd),WORD,(Cint,Cint,WORD),hWnd,nIndex,wNewWord)
end

function GetClassLongA(hWnd::Cint,nIndex::Cint)
    ccall((:GetClassLongA,wnd),DWORD,(Cint,Cint),hWnd,nIndex)
end

function GetClassLongW(hWnd::Cint,nIndex::Cint)
    ccall((:GetClassLongW,wnd),DWORD,(Cint,Cint),hWnd,nIndex)
end

function SetClassLongA(hWnd::Cint,nIndex::Cint,dwNewLong::LONG)
    ccall((:SetClassLongA,wnd),DWORD,(Cint,Cint,LONG),hWnd,nIndex,dwNewLong)
end

function SetClassLongW(hWnd::Cint,nIndex::Cint,dwNewLong::LONG)
    ccall((:SetClassLongW,wnd),DWORD,(Cint,Cint,LONG),hWnd,nIndex,dwNewLong)
end

function GetProcessDefaultLayout(pdwDefaultLayout)
    ccall((:GetProcessDefaultLayout,wnd),BOOL,(Ptr{DWORD},),pdwDefaultLayout)
end

function SetProcessDefaultLayout(dwDefaultLayout::DWORD)
    ccall((:SetProcessDefaultLayout,wnd),BOOL,(DWORD,),dwDefaultLayout)
end

function GetDesktopWindow()
    ccall((:GetDesktopWindow,wnd),Cint,())
end

function GetParent()
    ccall((:GetParent,wnd),Cint,())
end

function SetParent()
    ccall((:SetParent,wnd),Cint,())
end

function EnumChildWindows(hWndParent::Cint,lpEnumFunc::WNDENUMPROC,lParam::LPARAM)
    ccall((:EnumChildWindows,wnd),BOOL,(Cint,WNDENUMPROC,LPARAM),hWndParent,lpEnumFunc,lParam)
end

function FindWindowA()
    ccall((:FindWindowA,wnd),Cint,())
end

function FindWindowW()
    ccall((:FindWindowW,wnd),Cint,())
end

function FindWindowExA()
    ccall((:FindWindowExA,wnd),Cint,())
end

function FindWindowExW()
    ccall((:FindWindowExW,wnd),Cint,())
end

function GetShellWindow()
    ccall((:GetShellWindow,wnd),Cint,())
end

function RegisterShellHookWindow(hwnd::Cint)
    ccall((:RegisterShellHookWindow,wnd),BOOL,(Cint,),hwnd)
end

function DeregisterShellHookWindow(hwnd::Cint)
    ccall((:DeregisterShellHookWindow,wnd),BOOL,(Cint,),hwnd)
end

function EnumWindows(lpEnumFunc::WNDENUMPROC,lParam::LPARAM)
    ccall((:EnumWindows,wnd),BOOL,(WNDENUMPROC,LPARAM),lpEnumFunc,lParam)
end

function EnumThreadWindows(dwThreadId::DWORD,lpfn::WNDENUMPROC,lParam::LPARAM)
    ccall((:EnumThreadWindows,wnd),BOOL,(DWORD,WNDENUMPROC,LPARAM),dwThreadId,lpfn,lParam)
end

function GetClassNameA(hWnd::Cint,lpClassName::LPSTR,nMaxCount::Cint)
    ccall((:GetClassNameA,wnd),Cint,(Cint,LPSTR,Cint),hWnd,lpClassName,nMaxCount)
end

function GetClassNameW(hWnd::Cint,lpClassName::LPWSTR,nMaxCount::Cint)
    ccall((:GetClassNameW,wnd),Cint,(Cint,LPWSTR,Cint),hWnd,lpClassName,nMaxCount)
end

function GetTopWindow()
    ccall((:GetTopWindow,wnd),Cint,())
end

function GetWindowThreadProcessId(hWnd::Cint,lpdwProcessId::LPDWORD)
    ccall((:GetWindowThreadProcessId,wnd),DWORD,(Cint,LPDWORD),hWnd,lpdwProcessId)
end

function IsGUIThread(bConvert::BOOL)
    ccall((:IsGUIThread,wnd),BOOL,(BOOL,),bConvert)
end

function GetLastActivePopup()
    ccall((:GetLastActivePopup,wnd),Cint,())
end

function GetWindow()
    ccall((:GetWindow,wnd),Cint,())
end

function SetWindowsHookA()
    ccall((:SetWindowsHookA,wnd),Cint,())
end

function SetWindowsHookW()
    ccall((:SetWindowsHookW,wnd),Cint,())
end

function UnhookWindowsHook(nCode::Cint,pfnFilterProc::HOOKPROC)
    ccall((:UnhookWindowsHook,wnd),BOOL,(Cint,HOOKPROC),nCode,pfnFilterProc)
end

function SetWindowsHookExA()
    ccall((:SetWindowsHookExA,wnd),Cint,())
end

function SetWindowsHookExW()
    ccall((:SetWindowsHookExW,wnd),Cint,())
end

function UnhookWindowsHookEx(hhk::Cint)
    ccall((:UnhookWindowsHookEx,wnd),BOOL,(Cint,),hhk)
end

function CallNextHookEx(hhk::Cint,nCode::Cint,wParam::WPARAM,lParam::LPARAM)
    ccall((:CallNextHookEx,wnd),LRESULT,(Cint,Cint,WPARAM,LPARAM),hhk,nCode,wParam,lParam)
end

function CheckMenuRadioItem(hmenu::Cint,first::UINT,last::UINT,check::UINT,flags::UINT)
    ccall((:CheckMenuRadioItem,wnd),BOOL,(Cint,UINT,UINT,UINT,UINT),hmenu,first,last,check,flags)
end

function LoadBitmapA()
    ccall((:LoadBitmapA,wnd),Cint,())
end

function LoadBitmapW()
    ccall((:LoadBitmapW,wnd),Cint,())
end

function LoadCursorA()
    ccall((:LoadCursorA,wnd),Cint,())
end

function LoadCursorW()
    ccall((:LoadCursorW,wnd),Cint,())
end

function LoadCursorFromFileA()
    ccall((:LoadCursorFromFileA,wnd),Cint,())
end

function LoadCursorFromFileW()
    ccall((:LoadCursorFromFileW,wnd),Cint,())
end

function CreateCursor()
    ccall((:CreateCursor,wnd),Cint,())
end

function DestroyCursor(hCursor::Cint)
    ccall((:DestroyCursor,wnd),BOOL,(Cint,),hCursor)
end

function SetSystemCursor(hcur::Cint,id::DWORD)
    ccall((:SetSystemCursor,wnd),BOOL,(Cint,DWORD),hcur,id)
end

function LoadIconA()
    ccall((:LoadIconA,wnd),Cint,())
end

function LoadIconW()
    ccall((:LoadIconW,wnd),Cint,())
end

function PrivateExtractIconsA(szFileName::LPCSTR,nIconIndex::Cint,cxIcon::Cint,cyIcon::Cint,phicon,piconid,nIcons::UINT,flags::UINT)
    ccall((:PrivateExtractIconsA,wnd),UINT,(LPCSTR,Cint,Cint,Cint,Ptr{Cint},Ptr{UINT},UINT,UINT),szFileName,nIconIndex,cxIcon,cyIcon,phicon,piconid,nIcons,flags)
end

function PrivateExtractIconsW(szFileName::LPCWSTR,nIconIndex::Cint,cxIcon::Cint,cyIcon::Cint,phicon,piconid,nIcons::UINT,flags::UINT)
    ccall((:PrivateExtractIconsW,wnd),UINT,(LPCWSTR,Cint,Cint,Cint,Ptr{Cint},Ptr{UINT},UINT,UINT),szFileName,nIconIndex,cxIcon,cyIcon,phicon,piconid,nIcons,flags)
end

function CreateIcon()
    ccall((:CreateIcon,wnd),Cint,())
end

function DestroyIcon(hIcon::Cint)
    ccall((:DestroyIcon,wnd),BOOL,(Cint,),hIcon)
end

function LookupIconIdFromDirectory(presbits::PBYTE,fIcon::BOOL)
    ccall((:LookupIconIdFromDirectory,wnd),Cint,(PBYTE,BOOL),presbits,fIcon)
end

function LookupIconIdFromDirectoryEx(presbits::PBYTE,fIcon::BOOL,cxDesired::Cint,cyDesired::Cint,Flags::UINT)
    ccall((:LookupIconIdFromDirectoryEx,wnd),Cint,(PBYTE,BOOL,Cint,Cint,UINT),presbits,fIcon,cxDesired,cyDesired,Flags)
end

function CreateIconFromResource()
    ccall((:CreateIconFromResource,wnd),Cint,())
end

function CreateIconFromResourceEx()
    ccall((:CreateIconFromResourceEx,wnd),Cint,())
end

function LoadImageA(hInst::HINSTANCE,name::LPCSTR,_type::UINT,cx::Cint,cy::Cint,fuLoad::UINT)
    ccall((:LoadImageA,wnd),HANDLE,(HINSTANCE,LPCSTR,UINT,Cint,Cint,UINT),hInst,name,_type,cx,cy,fuLoad)
end

function LoadImageW(hInst::HINSTANCE,name::LPCWSTR,_type::UINT,cx::Cint,cy::Cint,fuLoad::UINT)
    ccall((:LoadImageW,wnd),HANDLE,(HINSTANCE,LPCWSTR,UINT,Cint,Cint,UINT),hInst,name,_type,cx,cy,fuLoad)
end

function CopyImage(h::HANDLE,_type::UINT,cx::Cint,cy::Cint,flags::UINT)
    ccall((:CopyImage,wnd),HANDLE,(HANDLE,UINT,Cint,Cint,UINT),h,_type,cx,cy,flags)
end

function DrawIconEx(hdc::Cint,xLeft::Cint,yTop::Cint,hIcon::Cint,cxWidth::Cint,cyWidth::Cint,istepIfAniCur::UINT,hbrFlickerFreeDraw::Cint,diFlags::UINT)
    ccall((:DrawIconEx,wnd),BOOL,(Cint,Cint,Cint,Cint,Cint,Cint,UINT,Cint,UINT),hdc,xLeft,yTop,hIcon,cxWidth,cyWidth,istepIfAniCur,hbrFlickerFreeDraw,diFlags)
end

function CreateIconIndirect()
    ccall((:CreateIconIndirect,wnd),Cint,())
end

function CopyIcon()
    ccall((:CopyIcon,wnd),Cint,())
end

function GetIconInfo(hIcon::Cint,piconinfo::PICONINFO)
    ccall((:GetIconInfo,wnd),BOOL,(Cint,PICONINFO),hIcon,piconinfo)
end

function GetIconInfoExA(hicon::Cint,piconinfo::PICONINFOEXA)
    ccall((:GetIconInfoExA,wnd),BOOL,(Cint,PICONINFOEXA),hicon,piconinfo)
end

function GetIconInfoExW(hicon::Cint,piconinfo::PICONINFOEXW)
    ccall((:GetIconInfoExW,wnd),BOOL,(Cint,PICONINFOEXW),hicon,piconinfo)
end

function IsDialogMessageA(hDlg::Cint,lpMsg::LPMSG)
    ccall((:IsDialogMessageA,wnd),BOOL,(Cint,LPMSG),hDlg,lpMsg)
end

function IsDialogMessageW(hDlg::Cint,lpMsg::LPMSG)
    ccall((:IsDialogMessageW,wnd),BOOL,(Cint,LPMSG),hDlg,lpMsg)
end

function MapDialogRect(hDlg::Cint,lpRect::Cint)
    ccall((:MapDialogRect,wnd),BOOL,(Cint,Cint),hDlg,lpRect)
end

function DlgDirListA(hDlg::Cint,lpPathSpec::LPSTR,nIDListBox::Cint,nIDStaticPath::Cint,uFileType::UINT)
    ccall((:DlgDirListA,wnd),Cint,(Cint,LPSTR,Cint,Cint,UINT),hDlg,lpPathSpec,nIDListBox,nIDStaticPath,uFileType)
end

function DlgDirListW(hDlg::Cint,lpPathSpec::LPWSTR,nIDListBox::Cint,nIDStaticPath::Cint,uFileType::UINT)
    ccall((:DlgDirListW,wnd),Cint,(Cint,LPWSTR,Cint,Cint,UINT),hDlg,lpPathSpec,nIDListBox,nIDStaticPath,uFileType)
end

function DlgDirSelectExA(hwndDlg::Cint,lpString::LPSTR,chCount::Cint,idListBox::Cint)
    ccall((:DlgDirSelectExA,wnd),BOOL,(Cint,LPSTR,Cint,Cint),hwndDlg,lpString,chCount,idListBox)
end

function DlgDirSelectExW(hwndDlg::Cint,lpString::LPWSTR,chCount::Cint,idListBox::Cint)
    ccall((:DlgDirSelectExW,wnd),BOOL,(Cint,LPWSTR,Cint,Cint),hwndDlg,lpString,chCount,idListBox)
end

function DlgDirListComboBoxA(hDlg::Cint,lpPathSpec::LPSTR,nIDComboBox::Cint,nIDStaticPath::Cint,uFiletype::UINT)
    ccall((:DlgDirListComboBoxA,wnd),Cint,(Cint,LPSTR,Cint,Cint,UINT),hDlg,lpPathSpec,nIDComboBox,nIDStaticPath,uFiletype)
end

function DlgDirListComboBoxW(hDlg::Cint,lpPathSpec::LPWSTR,nIDComboBox::Cint,nIDStaticPath::Cint,uFiletype::UINT)
    ccall((:DlgDirListComboBoxW,wnd),Cint,(Cint,LPWSTR,Cint,Cint,UINT),hDlg,lpPathSpec,nIDComboBox,nIDStaticPath,uFiletype)
end

function DlgDirSelectComboBoxExA(hwndDlg::Cint,lpString::LPSTR,cchOut::Cint,idComboBox::Cint)
    ccall((:DlgDirSelectComboBoxExA,wnd),BOOL,(Cint,LPSTR,Cint,Cint),hwndDlg,lpString,cchOut,idComboBox)
end

function DlgDirSelectComboBoxExW(hwndDlg::Cint,lpString::LPWSTR,cchOut::Cint,idComboBox::Cint)
    ccall((:DlgDirSelectComboBoxExW,wnd),BOOL,(Cint,LPWSTR,Cint,Cint),hwndDlg,lpString,cchOut,idComboBox)
end

function SetScrollInfo(hwnd::Cint,nBar::Cint,lpsi::LPCSCROLLINFO,redraw::BOOL)
    ccall((:SetScrollInfo,wnd),Cint,(Cint,Cint,LPCSCROLLINFO,BOOL),hwnd,nBar,lpsi,redraw)
end

function GetScrollInfo(hwnd::Cint,nBar::Cint,lpsi::LPSCROLLINFO)
    ccall((:GetScrollInfo,wnd),BOOL,(Cint,Cint,LPSCROLLINFO),hwnd,nBar,lpsi)
end

function DefFrameProcA(hWnd::Cint,hWndMDIClient::Cint,uMsg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:DefFrameProcA,wnd),LRESULT,(Cint,Cint,UINT,WPARAM,LPARAM),hWnd,hWndMDIClient,uMsg,wParam,lParam)
end

function DefFrameProcW(hWnd::Cint,hWndMDIClient::Cint,uMsg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:DefFrameProcW,wnd),LRESULT,(Cint,Cint,UINT,WPARAM,LPARAM),hWnd,hWndMDIClient,uMsg,wParam,lParam)
end

function DefMDIChildProcA(hWnd::Cint,uMsg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:DefMDIChildProcA,wnd),LRESULT,(Cint,UINT,WPARAM,LPARAM),hWnd,uMsg,wParam,lParam)
end

function DefMDIChildProcW(hWnd::Cint,uMsg::UINT,wParam::WPARAM,lParam::LPARAM)
    ccall((:DefMDIChildProcW,wnd),LRESULT,(Cint,UINT,WPARAM,LPARAM),hWnd,uMsg,wParam,lParam)
end

function TranslateMDISysAccel(hWndClient::Cint,lpMsg::LPMSG)
    ccall((:TranslateMDISysAccel,wnd),BOOL,(Cint,LPMSG),hWndClient,lpMsg)
end

function ArrangeIconicWindows(hWnd::Cint)
    ccall((:ArrangeIconicWindows,wnd),UINT,(Cint,),hWnd)
end

function CreateMDIWindowA()
    ccall((:CreateMDIWindowA,wnd),Cint,())
end

function CreateMDIWindowW()
    ccall((:CreateMDIWindowW,wnd),Cint,())
end

function TileWindows(hwndParent::Cint,wHow::UINT,lpRect,cKids::UINT,lpKids)
    ccall((:TileWindows,wnd),WORD,(Cint,UINT,Ptr{Cint},UINT,Ptr{Cint}),hwndParent,wHow,lpRect,cKids,lpKids)
end

function CascadeWindows(hwndParent::Cint,wHow::UINT,lpRect,cKids::UINT,lpKids)
    ccall((:CascadeWindows,wnd),WORD,(Cint,UINT,Ptr{Cint},UINT,Ptr{Cint}),hwndParent,wHow,lpRect,cKids,lpKids)
end

function WinHelpA(hWndMain::Cint,lpszHelp::LPCSTR,uCommand::UINT,dwData::ULONG_PTR)
    ccall((:WinHelpA,wnd),BOOL,(Cint,LPCSTR,UINT,ULONG_PTR),hWndMain,lpszHelp,uCommand,dwData)
end

function WinHelpW(hWndMain::Cint,lpszHelp::LPCWSTR,uCommand::UINT,dwData::ULONG_PTR)
    ccall((:WinHelpW,wnd),BOOL,(Cint,LPCWSTR,UINT,ULONG_PTR),hWndMain,lpszHelp,uCommand,dwData)
end

function GetGuiResources(hProcess::HANDLE,uiFlags::DWORD)
    ccall((:GetGuiResources,wnd),DWORD,(HANDLE,DWORD),hProcess,uiFlags)
end

function SystemParametersInfoA(uiAction::UINT,uiParam::UINT,pvParam::PVOID,fWinIni::UINT)
    ccall((:SystemParametersInfoA,wnd),BOOL,(UINT,UINT,PVOID,UINT),uiAction,uiParam,pvParam,fWinIni)
end

function SystemParametersInfoW(uiAction::UINT,uiParam::UINT,pvParam::PVOID,fWinIni::UINT)
    ccall((:SystemParametersInfoW,wnd),BOOL,(UINT,UINT,PVOID,UINT),uiAction,uiParam,pvParam,fWinIni)
end

function SoundSentry()
    ccall((:SoundSentry,wnd),BOOL,())
end

function SetDebugErrorLevel(dwLevel::DWORD)
    ccall((:SetDebugErrorLevel,wnd),Void,(DWORD,),dwLevel)
end

function SetLastErrorEx(dwErrCode::DWORD,dwType::DWORD)
    ccall((:SetLastErrorEx,wnd),Void,(DWORD,DWORD),dwErrCode,dwType)
end

function InternalGetWindowText(hWnd::Cint,pString::LPWSTR,cchMaxCount::Cint)
    ccall((:InternalGetWindowText,wnd),Cint,(Cint,LPWSTR,Cint),hWnd,pString,cchMaxCount)
end

function CancelShutdown()
    ccall((:CancelShutdown,wnd),BOOL,())
end

function MonitorFromPoint()
    ccall((:MonitorFromPoint,wnd),Cint,())
end

function MonitorFromRect()
    ccall((:MonitorFromRect,wnd),Cint,())
end

function MonitorFromWindow()
    ccall((:MonitorFromWindow,wnd),Cint,())
end

function GetMonitorInfoA(hMonitor::Cint,lpmi::LPMONITORINFO)
    ccall((:GetMonitorInfoA,wnd),BOOL,(Cint,LPMONITORINFO),hMonitor,lpmi)
end

function GetMonitorInfoW(hMonitor::Cint,lpmi::LPMONITORINFO)
    ccall((:GetMonitorInfoW,wnd),BOOL,(Cint,LPMONITORINFO),hMonitor,lpmi)
end

function EnumDisplayMonitors(hdc::Cint,lprcClip::Cint,lpfnEnum::MONITORENUMPROC,dwData::LPARAM)
    ccall((:EnumDisplayMonitors,wnd),BOOL,(Cint,Cint,MONITORENUMPROC,LPARAM),hdc,lprcClip,lpfnEnum,dwData)
end

function NotifyWinEvent(event::DWORD,hwnd::Cint,idObject::LONG,idChild::LONG)
    ccall((:NotifyWinEvent,wnd),Void,(DWORD,Cint,LONG,LONG),event,hwnd,idObject,idChild)
end

function SetWinEventHook()
    ccall((:SetWinEventHook,wnd),Cint,())
end

function IsWinEventHookInstalled(event::DWORD)
    ccall((:IsWinEventHookInstalled,wnd),BOOL,(DWORD,),event)
end

function UnhookWinEvent(hWinEventHook::Cint)
    ccall((:UnhookWinEvent,wnd),BOOL,(Cint,),hWinEventHook)
end

function GetGUIThreadInfo(idThread::DWORD,pgui::PGUITHREADINFO)
    ccall((:GetGUIThreadInfo,wnd),BOOL,(DWORD,PGUITHREADINFO),idThread,pgui)
end

function BlockInput(fBlockIt::BOOL)
    ccall((:BlockInput,wnd),BOOL,(BOOL,),fBlockIt)
end

function SetProcessDPIAware()
    ccall((:SetProcessDPIAware,wnd),BOOL,())
end

function IsProcessDPIAware()
    ccall((:IsProcessDPIAware,wnd),BOOL,())
end

function GetWindowModuleFileNameA(hwnd::Cint,pszFileName::LPSTR,cchFileNameMax::UINT)
    ccall((:GetWindowModuleFileNameA,wnd),UINT,(Cint,LPSTR,UINT),hwnd,pszFileName,cchFileNameMax)
end

function GetWindowModuleFileNameW(hwnd::Cint,pszFileName::LPWSTR,cchFileNameMax::UINT)
    ccall((:GetWindowModuleFileNameW,wnd),UINT,(Cint,LPWSTR,UINT),hwnd,pszFileName,cchFileNameMax)
end

function GetCursorInfo(pci::PCURSORINFO)
    ccall((:GetCursorInfo,wnd),BOOL,(PCURSORINFO,),pci)
end

function GetWindowInfo(hwnd::Cint,pwi::PWINDOWINFO)
    ccall((:GetWindowInfo,wnd),BOOL,(Cint,PWINDOWINFO),hwnd,pwi)
end

function GetTitleBarInfo(hwnd::Cint,pti::PTITLEBARINFO)
    ccall((:GetTitleBarInfo,wnd),BOOL,(Cint,PTITLEBARINFO),hwnd,pti)
end

function GetMenuBarInfo(hwnd::Cint,idObject::LONG,idItem::LONG,pmbi::PMENUBARINFO)
    ccall((:GetMenuBarInfo,wnd),BOOL,(Cint,LONG,LONG,PMENUBARINFO),hwnd,idObject,idItem,pmbi)
end

function GetScrollBarInfo(hwnd::Cint,idObject::LONG,psbi::PSCROLLBARINFO)
    ccall((:GetScrollBarInfo,wnd),BOOL,(Cint,LONG,PSCROLLBARINFO),hwnd,idObject,psbi)
end

function GetComboBoxInfo(hwndCombo::Cint,pcbi::PCOMBOBOXINFO)
    ccall((:GetComboBoxInfo,wnd),BOOL,(Cint,PCOMBOBOXINFO),hwndCombo,pcbi)
end

function GetAncestor()
    ccall((:GetAncestor,wnd),Cint,())
end

function RealChildWindowFromPoint()
    ccall((:RealChildWindowFromPoint,wnd),Cint,())
end

function RealGetWindowClassA(hwnd::Cint,ptszClassName::LPSTR,cchClassNameMax::UINT)
    ccall((:RealGetWindowClassA,wnd),UINT,(Cint,LPSTR,UINT),hwnd,ptszClassName,cchClassNameMax)
end

function RealGetWindowClassW(hwnd::Cint,ptszClassName::LPWSTR,cchClassNameMax::UINT)
    ccall((:RealGetWindowClassW,wnd),UINT,(Cint,LPWSTR,UINT),hwnd,ptszClassName,cchClassNameMax)
end

function GetAltTabInfoA(hwnd::Cint,iItem::Cint,pati::PALTTABINFO,pszItemText::LPSTR,cchItemText::UINT)
    ccall((:GetAltTabInfoA,wnd),BOOL,(Cint,Cint,PALTTABINFO,LPSTR,UINT),hwnd,iItem,pati,pszItemText,cchItemText)
end

function GetAltTabInfoW(hwnd::Cint,iItem::Cint,pati::PALTTABINFO,pszItemText::LPWSTR,cchItemText::UINT)
    ccall((:GetAltTabInfoW,wnd),BOOL,(Cint,Cint,PALTTABINFO,LPWSTR,UINT),hwnd,iItem,pati,pszItemText,cchItemText)
end

function GetListBoxInfo(hwnd::Cint)
    ccall((:GetListBoxInfo,wnd),DWORD,(Cint,),hwnd)
end

function LockWorkStation()
    ccall((:LockWorkStation,wnd),BOOL,())
end

function UserHandleGrantAccess(hUserHandle::HANDLE,hJob::HANDLE,bGrant::BOOL)
    ccall((:UserHandleGrantAccess,wnd),BOOL,(HANDLE,HANDLE,BOOL),hUserHandle,hJob,bGrant)
end

function GetRawInputData(hRawInput::HRAWINPUT,uiCommand::UINT,pData::LPVOID,pcbSize::PUINT,cbSizeHeader::UINT)
    ccall((:GetRawInputData,wnd),UINT,(HRAWINPUT,UINT,LPVOID,PUINT,UINT),hRawInput,uiCommand,pData,pcbSize,cbSizeHeader)
end

function GetRawInputDeviceInfoA(hDevice::HANDLE,uiCommand::UINT,pData::LPVOID,pcbSize::PUINT)
    ccall((:GetRawInputDeviceInfoA,wnd),UINT,(HANDLE,UINT,LPVOID,PUINT),hDevice,uiCommand,pData,pcbSize)
end

function GetRawInputDeviceInfoW(hDevice::HANDLE,uiCommand::UINT,pData::LPVOID,pcbSize::PUINT)
    ccall((:GetRawInputDeviceInfoW,wnd),UINT,(HANDLE,UINT,LPVOID,PUINT),hDevice,uiCommand,pData,pcbSize)
end

function GetRawInputBuffer(pData::PRAWINPUT,pcbSize::PUINT,cbSizeHeader::UINT)
    ccall((:GetRawInputBuffer,wnd),UINT,(PRAWINPUT,PUINT,UINT),pData,pcbSize,cbSizeHeader)
end

function RegisterRawInputDevices(pRawInputDevices::PCRAWINPUTDEVICE,uiNumDevices::UINT,cbSize::UINT)
    ccall((:RegisterRawInputDevices,wnd),BOOL,(PCRAWINPUTDEVICE,UINT,UINT),pRawInputDevices,uiNumDevices,cbSize)
end

function GetRegisteredRawInputDevices(pRawInputDevices::PRAWINPUTDEVICE,puiNumDevices::PUINT,cbSize::UINT)
    ccall((:GetRegisteredRawInputDevices,wnd),UINT,(PRAWINPUTDEVICE,PUINT,UINT),pRawInputDevices,puiNumDevices,cbSize)
end

function GetRawInputDeviceList(pRawInputDeviceList::PRAWINPUTDEVICELIST,puiNumDevices::PUINT,cbSize::UINT)
    ccall((:GetRawInputDeviceList,wnd),UINT,(PRAWINPUTDEVICELIST,PUINT,UINT),pRawInputDeviceList,puiNumDevices,cbSize)
end

function DefRawInputProc(paRawInput,nInput::INT,cbSizeHeader::UINT)
    ccall((:DefRawInputProc,wnd),LRESULT,(Ptr{PRAWINPUT},INT,UINT),paRawInput,nInput,cbSizeHeader)
end

function ShutdownBlockReasonCreate(hWnd::Cint,pwszReason::LPCWSTR)
    ccall((:ShutdownBlockReasonCreate,wnd),BOOL,(Cint,LPCWSTR),hWnd,pwszReason)
end

function ShutdownBlockReasonQuery(hWnd::Cint,pwszBuff::LPWSTR,pcchBuff)
    ccall((:ShutdownBlockReasonQuery,wnd),BOOL,(Cint,LPWSTR,Ptr{DWORD}),hWnd,pwszBuff,pcchBuff)
end

function ShutdownBlockReasonDestroy(hWnd::Cint)
    ccall((:ShutdownBlockReasonDestroy,wnd),BOOL,(Cint,),hWnd)
end
