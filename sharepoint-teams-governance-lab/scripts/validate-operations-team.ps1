<#
.SYNOPSIS
    Validates the Operations Collaboration Hub Microsoft Teams workspace.

.DESCRIPTION
    Connects to Microsoft Teams, locates the Operations Collaboration Hub team,
    and displays core team properties and membership.

.NOTES
    Requires the MicrosoftTeams PowerShell module.
    Run this script on CLIENT01 or another workstation with internet access.
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$TeamDisplayName = "Operations Collaboration Hub"
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

Write-Host "`nTeam validation successful." -ForegroundColor Green
$Team | Select-Object DisplayName, Description, Visibility, GroupId

Write-Host "`nTeam membership:" -ForegroundColor Cyan
Get-TeamUser -GroupId $Team.GroupId |
    Select-Object User, Role
