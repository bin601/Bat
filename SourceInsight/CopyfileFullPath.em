macro CopyFileFullPath()
{
    /* Get current file name from buf */
    hbuf = GetCurrentBuf()
    if(hbuf == 0)
    {
          msg("No buffer available");
          stop
    }
    FullFileName = GetBufName( hbuf )

    /* Add file name to clipboard */
    hbufClip = GetBufHandle("Clipboard")
    ClearBuf( hbufClip )
    AppendBufLine( hbufClip, FullFileName )
}