function get-myclock{
    cls             # clears data from console
    Get-Date        # prints date & time
    sleep 1         # halts the code for 1 sec
    get-myclock     # recurrsive function calling
}
cls                 # clears the screen for 1st time
get-myclock         # calls the function for 1st time