# SharePoint & Teams Collaboration Governance Lab

![Project Status](https://img.shields.io/badge/status-ready--to--execute-blue)
![Platform](https://img.shields.io/badge/platform-Microsoft%20365-0078D4)
![Focus](https://img.shields.io/badge/focus-IT%20Administrator%20Skills-green)

## Executive Summary

This project demonstrates hands-on Microsoft 365 administration skills by building and governing a SharePoint Online team site and its connected Microsoft Teams workspace.

The project creates an **Operations Collaboration Hub** for an organization. I will provision the SharePoint site, design its document library and metadata, apply least-privilege permissions, restrict external sharing, connect the site to Microsoft Teams, and validate the completed environment with PowerShell.

## Lab Environment

This project uses my existing hybrid-capable on-premises lab and Microsoft 365 trial tenant.

```text
Internet
   |
Router
192.168.10.1
   |
------------------------------------------------
|                HQ AD Site                     |
|              192.168.10.0/24                  |
|                                               |
| DC01                          DC02            |
| Windows Server 2025           Windows Server 2025
| 192.168.10.10                 192.168.10.11    |
| AD DS / DNS / GC              AD DS / DNS / GC |
| Initial FSMO roles            Replica DC      |
|       <--- AD Replication --->                |
|                                               |
| CLIENT01                                      |
| Windows 11                                    |
| 192.168.10.20                                 |
| DNS: DC01 and DC02                            |
| Administration workstation                    |
| Browser + PowerShell                          |
------------------------------------------------
        |
        | HTTPS / Internet
        | Microsoft 365 authentication and administration
        v
================================================================
|                Microsoft 365 Trial Tenant                    |
|              <yourtenant>.onmicrosoft.com                    |
|                                                              |
|  Microsoft Entra ID                                          |
|  ------------------------------------------------------------ |
|  | ops-admin          ana.silva        Optional guest       | |
|  | Global/SharePoint  Licensed user    External identity     | |
|  | Teams Administrator                                      | |
|  ------------------------------------------------------------ |
|                    |                                         |
|                    | Microsoft 365 Group                     |
|                    v                                         |
|  Operations Collaboration Hub                                |
|  ------------------------------------------------------------ |
|  | Microsoft 365 Group: operations-collaboration-hub        | |
|  ------------------------------------------------------------ |
|            |                             |                   |
|            | Group-backed site           | Group-backed team |
|            v                             v                   |
|  SharePoint Online                   Microsoft Teams         |
|  ------------------------------------------------------------ |
|  | Operations Collaboration Hub        Operations Collab Hub | |
|  | Team site                           Team workspace        | |
|  |                                                           | |
|  | Documents library                   Channels:             | |
|  |  - 01 - SOPs                          - General           | |
|  |  - 02 - Incident Reports              - Daily Operations  | |
|  |  - 03 - Vendor Documents              - Incidents         | |
|  |  - 04 - Templates                     - Vendor Coordination|
|  |  - 05 - Archived                                          | |
|  |                                                           | |
|  | Metadata: Document Type             Documents tab:         | |
|  | Choices: SOP, Incident Report,      SharePoint Documents  | |
|  |          Vendor Document, Template  library                | |
|  |                                                           | |
|  | Permissions:                        Membership:            | |
|  |  - ops-admin: Owner                 - ops-admin: Owner     | |
|  |  - ana.silva: Member                - ana.silva: Member    | |
|  |  - External sharing: Internal only  - PowerShell-managed   | |
|  ------------------------------------------------------------ |
|                                                              |
|  Administrative interfaces used from CLIENT01:                |
|  - Microsoft 365 admin center: admin.microsoft.com            |
|  - SharePoint admin center: admin.microsoft.com/sharepoint    |
|  - Microsoft Teams: teams.microsoft.com                        |
|  - PowerShell: MicrosoftTeams module / Connect-MicrosoftTeams  |
================================================================
```

| Component | Role in this project |
|---|---|
| DC01 | Existing on-premises domain controller; not required for SharePoint/Teams configuration |
| DC02 | Redundant domain controller; demonstrates an established on-premises identity backbone |
| CLIENT01 | Windows 11 administration workstation used for browser and PowerShell execution |
| Microsoft 365 tenant | Hosts SharePoint Online, Teams, Microsoft Entra ID identities, and licensing |
| Trial licenses | Provide the required SharePoint and Teams services for the lab |

The on-premises Active Directory environment provides realistic enterprise context, but this project does **not** require Entra Connect, hybrid identity synchronization, or changes to DC01, DC02, or CLIENT01.

## Skills Demonstrated

| Skill | Demonstrated through |
|---|---|
| Microsoft 365 tenant administration | User, license, and role validation |
| SharePoint Online administration | Team-site creation and site configuration |
| Information architecture | Document libraries, folders, metadata, and views |
| Access governance | Site owners, members, visitors, and least privilege |
| External-sharing governance | Tenant and site-level sharing controls |
| Microsoft Teams administration | Team creation, channels, tabs, and membership |
| PowerShell administration | Microsoft Teams module, validation, and member management |
| Operational documentation | Step-by-step execution, evidence capture, and validation |

## Project Outcomes

After completing this project, you will have:

- A Microsoft 365 group-connected SharePoint team site named **Operations Collaboration Hub**
- A structured document library for operational content
- A custom **Document Type** column and operational document view
- Internal-only sharing configured at the site level
- A connected Microsoft Teams workspace with operational channels
- A test user added as a Teams member through PowerShell
- A complete screenshot evidence pack 

## Repository Structure

```text
sharepoint-teams-governance-lab/
├── README.md
├── CHANGELOG.md
├── LICENSE
├── docs/
│   ├── 00-execution-checklist.md
│   ├── 01-prerequisites-and-tenant-preparation.md
│   ├── 02-create-sharepoint-team-site.md
│   ├── 03-build-information-architecture.md
│   ├── 04-configure-permissions-and-sharing.md
│   ├── 05-create-teams-workspace.md
│   ├── 06-powershell-validation-and-membership.md
│   ├── 07-final-validation-and-evidence.md
│   └── 08-troubleshooting.md
├── scripts/
│   ├── validate-operations-team.ps1
│   └── add-operations-team-member.ps1
├── assets/
│   └── screenshots/
│       └── README.md
```

## Execution Model

Your only execution responsibilities are:

1. Follow each document in numerical order.
2. Perform the GUI and PowerShell steps in your Microsoft 365 trial tenant.
3. Capture the screenshots listed in each phase.
4. Save screenshots using the exact filenames provided.
5. Place the files in `assets/screenshots/`.
6. Complete the final validation checklist.

The documentation uses explicit portal paths, expected results, validation checks, and screenshot filenames so the project can be completed without improvisation.

## Evidence Standard

Each screenshot should show:

- The relevant Microsoft 365 portal or PowerShell window
- The configured object or setting
- Enough context to prove the action was completed
- No production data, personal data, secrets, tokens, or external tenant identifiers

Recommended screenshot format:

- PNG
- Minimum width: 1600 pixels where practical
- Clear browser zoom, preferably 100%
- Filename exactly as specified in each phase

## Microsoft Documentation References

- Create a site in SharePoint in Microsoft 365: https://learn.microsoft.com/en-us/sharepoint/create-site-collection
- Manage sites in the SharePoint admin center: https://learn.microsoft.com/en-us/sharepoint/manage-sites-in-new-admin-center
- External sharing overview for SharePoint and OneDrive: https://learn.microsoft.com/en-us/sharepoint/external-sharing-overview
- Manage sharing settings for SharePoint and OneDrive: https://learn.microsoft.com/en-us/sharepoint/turn-external-sharing-on-or-off
- Manage Teams with Microsoft Teams PowerShell: https://learn.microsoft.com/en-us/microsoftteams/teams-powershell-managing-teams
- Connect-MicrosoftTeams cmdlet: https://learn.microsoft.com/en-us/powershell/module/microsoftteams/connect-microsoftteams
- Add-TeamUser cmdlet: https://learn.microsoft.com/en-us/powershell/module/microsoftteams/add-teamuser
- Manage teams in the Microsoft Teams admin center: https://learn.microsoft.com/en-us/microsoftteams/manage-teams-in-modern-portal

## Start Here

Open:

```text
docs/00-execution-checklist.md
```

Then execute the phases in order:

1. Prerequisites and tenant preparation
2. Create SharePoint team site
3. Build information architecture
4. Configure permissions and sharing
5. Create Teams workspace
6. PowerShell validation and membership
7. Final validation and evidence
