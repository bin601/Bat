//
// Enabling Event Handlers
// You must enable event handlers before using them. 
// For security reasons, they are disabled by default. 
// To enable event handlers, select Options > Preferences and click the General tab. 
// Then, check the box that says “Enable event handlers”.
// Once you enable event handlers, that option is saved so you don’t have to do it again.
//
event DocumentOpen (sFile)
{

  cwnd = WndListCount()


  WndLimit = 25

  if (cwnd > WndLimit)
  {

    iwnd = cwnd - 1
    while (iwnd > WndLimit)
    {
      hwnd = WndListItem(iwnd)
      CloseWnd (hwnd)
      iwnd = iwnd - 1
    }
  }
}