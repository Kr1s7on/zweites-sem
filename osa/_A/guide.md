# A simple guide for the base 28

### 1. Verify that all disk partitions are formatted with NTFS
   - **Step 1**: Open "This PC" or "File Explorer."
   - **Step 2**: Right-click on each drive, choose "Properties."
   - **Step 3**: Check under "File system" to ensure it says "NTFS."
   - **Step 4**: If any partitions are not NTFS, reformatting may be required (backup first if needed).

### 2. Make sure the Guest account is disabled
   - **Step 1**: Open "Computer Management" by searching in the Start Menu.
   - **Step 2**: Go to "Local Users and Groups" > "Users."
   - **Step 3**: Right-click on the "Guest" account, select "Properties."
   - **Step 4**: Check "Account is disabled" and click "OK" if it’s not already disabled.

### 3. Disable or delete unnecessary accounts
   - **Step 1**: In "Computer Management," go to "Local Users and Groups" > "Users."
   - **Step 2**: Review all accounts; right-click unnecessary accounts and select "Delete" or "Disable."

### 4. Use account passwords
   - **Step 1**: Open "Settings" > "Accounts" > "Sign-in options."
   - **Step 2**: Ensure that each account has a password set by clicking on "Password" and following the prompts if necessary.

### 5. Set stronger password policies
   - **Step 1**: Open "Local Security Policy" by searching in the Start Menu.
   - **Step 2**: Go to "Account Policies" > "Password Policy."
   - **Step 3**: Configure policies such as "Minimum password length" (e.g., set to 8 characters), "Password complexity requirements," and "Password expiration."

### 6. Set account lockout policy
   - **Step 1**: In "Local Security Policy," go to "Account Policies" > "Account Lockout Policy."
   - **Step 2**: Configure "Account lockout threshold" (e.g., 3 attempts), and set durations for lockout and reset as needed.

### 7. Disable Internet Connection Sharing
   - **Step 1**: Open "Control Panel" > "Network and Sharing Center."
   - **Step 2**: Select "Change adapter settings."
   - **Step 3**: Right-click your network connection, choose "Properties."
   - **Step 4**: Go to the "Sharing" tab and uncheck "Allow other network users to connect."

### 8. Protect file sharing and shared folders
   - **Step 1**: In "Control Panel," go to "Network and Sharing Center."
   - **Step 2**: Select "Advanced sharing settings."
   - **Step 3**: Turn off "File and printer sharing" for all networks, if sharing is not required.

### 9. Enable Internet Connection Firewall
   - **Step 1**: Go to "Control Panel" > "Windows Defender Firewall."
   - **Step 2**: Ensure that the firewall is turned on for all network profiles.
   - **Step 3**: Optionally, configure specific rules under "Advanced settings."

### 10. Use software restriction policies
   - **Step 1**: Open "Local Group Policy Editor" by searching in the Start Menu.
   - **Step 2**: Go to "Computer Configuration" > "Windows Settings" > "Security Settings" > "Software Restriction Policies."
   - **Step 3**: Create new policies to restrict unauthorized applications.

### 11. Disable unnecessary services
   - **Step 1**: Open "Services" by searching in the Start Menu.
   - **Step 2**: Review the list of services; for any that are not essential, right-click and select "Properties," then set "Startup type" to "Disabled."
   - **Note**: Be cautious, as disabling critical services may impact system stability.

### 12. Disable USB, or Disable Autorun and Boot from USB (preferred)
   - **Step 1**: Open "Group Policy Editor."
   - **Step 2**: Go to "Computer Configuration" > "Administrative Templates" > "System."
   - **Step 3**: For Autorun, find "Turn off Autoplay" and set it to "Enabled."
   - **Step 4**: To disable boot from USB, adjust settings in the BIOS (access BIOS on system boot, often by pressing keys like F2, F10, or Del).

### 13. Install antivirus software and updates
   - **Step 1**: Check if antivirus software is installed (e.g., Windows Defender).
   - **Step 2**: If no antivirus is installed, download and install one. 
   - **Step 3**: Ensure it’s updated by running an update check in the antivirus application.

### 14. Keep up-to-date on the latest security updates
   - **Step 1**: Go to "Settings" > "Update & Security" > "Windows Update."
   - **Step 2**: Click "Check for updates" and install any available updates.
   - **Step 3**: Set up automatic updates to keep the system secure by selecting "Advanced options" in Windows Update and ensuring updates are enabled. 

### 15. Disable Remote Access
   - **Step 1**: Open "Control Panel," select "System and Security" > "System."
   - **Step 2**: Click on "Remote settings" on the left panel.
   - **Step 3**: In the "Remote Desktop" section, select "Don’t allow remote connections to this computer."
   - **Step 4**: Click "Apply" and "OK" to save the settings.

### 16. Secure system from PowerShell exploits
   - **Step 1**: Open "Group Policy Editor" by searching in the Start Menu.
   - **Step 2**: Go to "Computer Configuration" > "Administrative Templates" > "Windows Components" > "Windows PowerShell."
   - **Step 3**: Enable "Turn on PowerShell Script Block Logging" and "Turn on Module Logging" to monitor script usage.
   - **Step 4**: Optionally, restrict PowerShell usage by using Software Restriction Policies if PowerShell is not needed.

### 17. Enable Auto Updates
   - **Step 1**: Go to "Settings" > "Update & Security" > "Windows Update."
   - **Step 2**: Select "Advanced options" and ensure that "Automatic" updates are turned on.
   - **Step 3**: Check that "Restart this device as soon as possible when a restart is required" is enabled.

### 18. App Management - Only allow the installation of approved applications
   - **Step 1**: Open "Group Policy Editor."
   - **Step 2**: Go to "Computer Configuration" > "Administrative Templates" > "Windows Components" > "App Package Deployment."
   - **Step 3**: Configure "Only allow installation of apps from the Store" to restrict application sources if appropriate.

### 19. Application Control - Whitelisting and blacklisting of executables or apps
   - **Step 1**: In "Group Policy Editor," go to "Computer Configuration" > "Windows Settings" > "Security Settings" > "Application Control Policies."
   - **Step 2**: Set up either "AppLocker" or "Software Restriction Policies" to specify which applications are allowed or blocked.
   - **Step 3**: Define rules to whitelist trusted applications or blacklist unwanted ones based on your security needs.

### 20. Maximize or Enhance Windows Defender Features
   - **Step 1**: Go to "Settings" > "Update & Security" > "Windows Security" > "Virus & threat protection."
   - **Step 2**: Click "Manage settings" and enable all security features under each section.
   - **Step 3**: Enable "Exploit Guard," "Device Guard," "Application Guard," and "Credential Guard" if available under "App & browser control" and "Device security."

### 21. Enable Microsoft SmartScreen
   - **Step 1**: Go to "Settings" > "Update & Security" > "Windows Security" > "App & browser control."
   - **Step 2**: Under "Reputation-based protection," ensure "Check apps and files" is set to "On."
   - **Step 3**: Also enable "SmartScreen for Microsoft Edge" and "Potentially unwanted app blocking."

### 22. Enable Windows Hello
   - **Step 1**: Go to "Settings" > "Accounts" > "Sign-in options."
   - **Step 2**: Under "Windows Hello," set up features like fingerprint or facial recognition if supported by the hardware.
   - **Step 3**: Follow on-screen prompts to complete setup.

### 23. Enable Windows Sandbox
   - **Step 1**: Open "Control Panel" > "Programs" > "Turn Windows features on or off."
   - **Step 2**: Check "Windows Sandbox" and click "OK."
   - **Step 3**: Restart the computer if prompted to apply the changes.
   - **Note**: Windows Sandbox is only available in Windows 10 Pro or Enterprise editions.

### 24. Enable Windows Secure Boot
   - **Step 1**: Restart your system and enter the BIOS or UEFI settings (usually by pressing a key like F2, F10, or Del during startup).
   - **Step 2**: Find the "Secure Boot" option and enable it.
   - **Step 3**: If available, enable TPM (Trusted Platform Module).
   - **Step 4**: Save settings and exit BIOS.

### 25. Enable Windows BitLocker Encryption
   - **Step 1**: Open "Control Panel" > "System and Security" > "BitLocker Drive Encryption."
   - **Step 2**: Click "Turn on BitLocker" next to each drive you want to encrypt.
   - **Step 3**: Follow the setup wizard to complete the encryption process, including setting a recovery key.
   - **Note**: If BitLocker is unavailable, consider using encrypted folders instead.

### 26. Enable File Backups
   - **Step 1**: Go to "Settings" > "Update & Security" > "Backup."
   - **Step 2**: Connect an external drive or select a network location and click "Add a drive."
   - **Step 3**: Choose the drive and enable "Automatically back up my files" to start automatic backups.

### 27. Enable Restore Points
   - **Step 1**: Open "Control Panel" > "System" > "System Protection."
   - **Step 2**: Select the system drive and click "Configure."
   - **Step 3**: Enable "Turn on system protection" and set a disk space amount for restore points.
   - **Step 4**: Click "OK" and "Create" to set an initial restore point.

### 28. Install Host-Based Intrusion Prevention System (HIPS)
   - **Step 1**: Research and select a HIPS tool that is compatible with Windows (examples include Comodo HIPS or McAfee HIPS).
   - **Step 2**: Download, install, and configure the HIPS tool as per the software’s guidelines.
   - **Step 3**: Customize settings to detect and prevent suspicious activity based on your system’s needs.
