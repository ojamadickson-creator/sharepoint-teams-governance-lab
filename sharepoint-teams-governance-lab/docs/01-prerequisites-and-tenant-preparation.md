# Phase 1 — Prerequisites and Tenant Preparation

## Objective

Prepare the Microsoft 365 trial tenant, administrative identity, test users, licenses, and PowerShell environment required for the SharePoint and Teams governance lab.

## Scope

This phase is completed entirely through the Microsoft 365 admin center and PowerShell. It does not require changes to DC01, DC02, or CLIENT01 beyond using CLIENT01 as the administration workstation.

## Required Access

Administrative account requires:

- SharePoint Administrator
- Teams Administrator

For a personal trial or developer tenant, Global Administrator is also acceptable.

## Step 1 — Sign in to Microsoft 365 Admin Center

1. On CLIENT01, open Microsoft Edge.
2. Go to:

```text
https://admin.microsoft.com
```

3. Sign in with your Microsoft 365 administrative account.

## Step 2 — Review or Create Test Users

Use the following naming pattern. Replace `<yourtenant>` with your actual tenant domain.

| User | Purpose |
|---|---|
| `ops-admin@<yourtenant>.onmicrosoft.com` | Administrative account |
| `ana.silva@<yourtenant>.onmicrosoft.com` | Internal operations team member |
| `guest.user@<external-domain>.com` | Optional external guest; not required for the core project |

To review users:

1. In the Microsoft 365 admin center, go to **Users** > **Active users**.
2. Confirm that the administrative account and `ana.silva` exist.
3. If `ana.silva` does not exist, select **Add a user**.
4. Enter the user details and assign a license.
5. Select **Finish adding**.

### Expected Result

Both internal users appear in **Active users**.

### Screenshot

Capture:

```text
01-m365-users.png
```

The screenshot should show the **Active users** page with both internal accounts visible.

## Step 3 — Confirm Administrative Roles

1. In the Microsoft 365 admin center, go to **Users** > **Active users**.
2. Select your administrative account.
3. Open the **Manage roles** pane.
4. Confirm the following roles:
   - SharePoint Administrator
   - Teams Administrator
5. If either role is missing, add it and save.

### Expected Result

The admin account has both required roles.

### Screenshot

Capture:

```text
02-admin-roles.png
```

The screenshot should show the role assignments for the administrative account.

## Step 4 — Confirm Licenses

1. Go to **Billing** > **Licenses**.
2. Confirm that your trial licenses include SharePoint Online and Microsoft Teams.
3. Go to **Users** > **Active users**.
4. Select `ana.silva`.
5. Open **Licenses and apps**.
6. Confirm that the user has a license that includes Teams and SharePoint.

### Expected Result

Both the administrator and test user have licenses that include SharePoint and Teams.

### Screenshot

Capture:

```text
03-licenses.png
```

The screenshot should show the assigned licenses for the test user.

## Step 5 — Prepare PowerShell on CLIENT01

Open PowerShell as your standard administrative user.

Check the PowerShell version:

```powershell
$PSVersionTable.PSVersion
```

Install the Microsoft Teams PowerShell module:

```powershell
Install-Module MicrosoftTeams -Scope CurrentUser
```

If prompted to install from an untrusted repository, select **Yes** or **Yes to All**.

Confirm the module is installed:

```powershell
Get-Module MicrosoftTeams -ListAvailable
```

### Expected Result

The MicrosoftTeams module appears in the installed module list.

## Phase Validation

| Validation | Expected result |
|---|---|
| Admin center access | You can open `https://admin.microsoft.com` |
| Administrative roles | SharePoint Administrator and Teams Administrator are assigned |
| Internal test user | `ana.silva` exists and is licensed |
| PowerShell module | MicrosoftTeams module is installed |
| On-premises lab | No changes are required to DC01, DC02, or CLIENT01 |

## Evidence Collected

| Filename | Evidence |
|---|---|
| `01-m365-users.png` | Active users list |
| `02-admin-roles.png` | Administrative role assignments |
| `03-licenses.png` | License assignment for the test user |
