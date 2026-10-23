<#
.SYNOPSIS
    Adds a licensed internal user to the Operations Collaboration Hub team.

.DESCRIPTION
    Adds the specified user as a Member of the Operations Collaboration Hub team.
    The script validates the team and user principal name before making the change.

.NOTES
    Requires SharePoint/Teams administrative privileges and the MicrosoftTeams module.
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$TeamDisplayName = "Operations Collaboration Hub",

    [Parameter(Mandatory = $true)]
    [string]$UserPrincipalName,

    [ValidateSet("Member", "Owner")]
    [string]$Role = "Member"
)

if (-not (Get-Module -ListAvailable -Name MicrosoftTeams)) {
    Write-Host "MicrosoftTeams module not found. Installing..." -ForegroundColor Yellow
    Install-Module MicrosoftTeams -Scope CurrentUser -Force
}

Import-Module MicrosoftTeams

Write-Host "Connecting to Microsoft Teams..." -ForegroundColor Cyan
Connect-MicrosoftTeams

$Team = Get-Team -DisplayName $TeamDisplayName -ErrorAction Stop

if (-not $Team) {
    throw "Team '$TeamDisplayName' was not found."
}

Write-Host "Adding $UserPrincipalName to team '$TeamDisplayName' as $Role..." -ForegroundColor Cyan

Add-TeamUser -GroupId $Team.GroupId -User $UserPrincipalName -Role $Role

Write-Host "`nMembership after change:" -ForegroundColor Green
Get-TeamUser -GroupId $Team.GroupId |
    Select-Object User, Role
