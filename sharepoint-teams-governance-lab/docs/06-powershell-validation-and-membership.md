# Phase 6 — PowerShell Validation and Membership

## Objective

Use the Microsoft Teams PowerShell module to validate the team and add the internal test user as a team member.

## Scope

This is the PowerShell portion of the project. It should represent approximately 10% of the total hands-on effort.

## Step 1 — Open PowerShell on CLIENT01

1. Sign in to CLIENT01.
2. Open **PowerShell**.
3. Confirm that you are using an account with permission to administer Teams.

## Step 2 — Install and Import the Module

Run:

```powershell
Install-Module MicrosoftTeams -Scope CurrentUser
Import-Module MicrosoftTeams
```

If the module is already installed, the installation command will report that it is already available.

## Step 3 — Connect to Microsoft Teams

Run:

```powershell
Connect-MicrosoftTeams
```

Complete the interactive authentication prompt using the administrative account.

Microsoft documents `Connect-MicrosoftTeams` as the cmdlet that establishes an authenticated session for Microsoft Teams PowerShell cmdlets.

### Expected Result

PowerShell returns an account object showing the signed-in administrator.

### Screenshot

Capture:

```text
19-connect-microsoftteams.png
```

The screenshot should show the successful connection output.

## Step 4 — Validate the Team

Run the following commands. Replace `<yourtenant>` with your tenant domain if needed.

```powershell
$Team = Get-Team -DisplayName "Operations Collaboration Hub"

Get-Team -GroupId $Team.GroupId |
    Select-Object DisplayName, Description, Visibility, GroupId
```

### Expected Result

PowerShell returns the team object with:

```text
DisplayName : Operations Collaboration Hub
Visibility  : Public or Private, depending on tenant configuration
GroupId     : A GUID
```

### Screenshot

Capture:

```text
20-team-validation.png
```

The screenshot should show the returned team properties.

## Step 5 — Add the Team Member

Run:

```powershell
Add-TeamUser -GroupId $Team.GroupId -User "ana.silva@<yourtenant>.onmicrosoft.com" -Role Member
```

Microsoft documents `Add-TeamUser` as adding an owner or member to the team and to the unified group that backs it.

### Expected Result

The command completes without an error.

### Screenshot

Capture:

```text
21-add-team-user.png
```

The screenshot should show the executed `Add-TeamUser` command.

## Step 6 — Validate Team Membership

Run:

```powershell
Get-TeamUser -GroupId $Team.GroupId |
    Select-Object User, Role
```

### Expected Result

The output includes:

| User | Role |
|---|---|
| Administrative account | Owner |
| `ana.silva@<yourtenant>.onmicrosoft.com` | Member |

### Screenshot

Capture:

```text
22-team-members-validation.png
```

The screenshot should show the membership output.

## Phase Validation

| Validation | Expected result |
|---|---|
| MicrosoftTeams module | Installed |
| Teams connection | Successful |
| Team lookup | Operations Collaboration Hub found |
| Membership change | `ana.silva` added as Member |
| Membership validation | Owner and Member roles visible |

## Evidence Collected

| Filename | Evidence |
|---|---|
| `19-connect-microsoftteams.png` | Successful Teams PowerShell connection |
| `20-team-validation.png` | Team object validation |
| `21-add-team-user.png` | Member added through PowerShell |
| `22-team-members-validation.png` | Final membership output |
