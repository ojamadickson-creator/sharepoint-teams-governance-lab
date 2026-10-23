# Phase 7 — Final Validation and Evidence

## Objective

Validate that the SharePoint site, Teams workspace, permissions, and PowerShell configuration meet the project requirements.

## Validation Matrix

| # | Validation | Expected result | Evidence |
|---|---|---|---|
| 1 | SharePoint site exists | `Operations Collaboration Hub` appears in Active sites | `23-final-site-validation.png` |
| 2 | Site type | Microsoft 365 group-connected team site | `23-final-site-validation.png` |
| 3 | Document structure | Five operational folders exist | `23-final-site-validation.png` |
| 4 | Metadata | `Document Type` column exists | `23-final-site-validation.png` |
| 5 | Custom view | `Operational Documents` view exists | `23-final-site-validation.png` |
| 6 | Internal access | `ana.silva` can access the site | `25-final-permissions-validation.png` |
| 7 | External sharing | Restricted to people in your organization | `25-final-permissions-validation.png` |
| 8 | Teams workspace | Operations Collaboration Hub team exists | `24-final-teams-validation.png` |
| 9 | Teams channels | Daily Operations, Incidents, Vendor Coordination exist | `24-final-teams-validation.png` |
| 10 | SharePoint integration | Documents library is available in Teams | `24-final-teams-validation.png` |
| 11 | PowerShell membership | `ana.silva` is a team Member | `22-team-members-validation.png` |

## Step 1 — Validate SharePoint

1. Open:

```text
https://admin.microsoft.com/sharepoint
```

2. Go to **Sites** > **Active sites**.
3. Search for `Operations Collaboration Hub`.
4. Open the site.
5. Confirm the folders, documents, column, and custom view.

### Screenshot

Capture:

```text
23-final-site-validation.png
```

## Step 2 — Validate Teams

1. Open:

```text
https://teams.microsoft.com
```

2. Open the **Operations Collaboration Hub** team.
3. Confirm the channels.
4. Confirm the SharePoint Documents tab.
5. Confirm that `ana.silva` appears in the team membership, if visible through the GUI.

### Screenshot

Capture:

```text
24-final-teams-validation.png
```

## Step 3 — Validate Permissions and Sharing

1. Open the SharePoint admin center.
2. Select the site.
3. Review **Membership**.
4. Review **Policies** > **Sharing**.
5. Confirm that external sharing is restricted to internal users.

### Screenshot

Capture:

```text
25-final-permissions-validation.png
```

## Final Evidence Pack

Ensure the following 25 screenshots are present in `assets/screenshots/`:

```text
01-m365-users.png
02-admin-roles.png
03-licenses.png
04-create-team-site.png
05-site-created.png
06-site-homepage.png
07-document-library.png
08-folders-created.png
09-site-column.png
10-custom-view.png
11-site-membership.png
12-add-member.png
13-site-sharing-policy.png
14-external-sharing-disabled.png
15-create-team-from-group.png
16-team-created.png
17-channels-created.png
18-sharepoint-tab.png
19-connect-microsoftteams.png
20-team-validation.png
21-add-team-user.png
22-team-members-validation.png
23-final-site-validation.png
24-final-teams-validation.png
25-final-permissions-validation.png
```

## Completion Statement

When all validations pass, add the following completed statement to the bottom of this document:

```text
Project completed on: YYYY-MM-DD
Executed by: <your name>
Microsoft 365 tenant type: Trial tenant
SharePoint site: Operations Collaboration Hub
Teams workspace: Operations Collaboration Hub
Final result: PASS
```
