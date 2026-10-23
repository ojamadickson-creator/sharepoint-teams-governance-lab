# Troubleshooting

## SharePoint Site Does Not Appear

### Symptom

The site does not appear in **Active sites** immediately after creation.

### Resolution

1. Wait several minutes; provisioning can take time.
2. Refresh the SharePoint admin center.
3. Search for the site name.
4. Confirm you are signed in with an account that has SharePoint Administrator access.

## Team Site Creation Fails

### Symptom

SharePoint reports an error during site creation.

### Resolution

1. Confirm that the site name and group email are unique.
2. Confirm that the admin account has the SharePoint Administrator role.
3. Confirm that SharePoint Online is enabled for the tenant.
4. Retry using a slightly different group email if the original alias is reserved.

## User Cannot Access the SharePoint Site

### Symptom

`ana.silva` cannot open the site.

### Resolution

1. Confirm the user has an active license.
2. Confirm the user was added as a **Site member**.
3. Wait a few minutes for permission propagation.
4. Confirm the user is signing in with the correct tenant account.

## External Sharing Setting Cannot Be Changed

### Symptom

The site sharing option is unavailable or cannot be saved.

### Resolution

1. Confirm that you have SharePoint Administrator access.
2. Review the organization-level SharePoint sharing policy.
3. Remember that the more restrictive of the organization-level and site-level settings applies.
4. Refresh the SharePoint admin center and retry.

## Team Does Not Appear in Teams

### Symptom

The team does not appear after creation from the Microsoft 365 group.

### Resolution

1. Refresh Microsoft Teams.
2. Sign out and sign back in.
3. Confirm the team was created from the correct Microsoft 365 group.
4. Confirm that the group is Teams-enabled.

## `Connect-MicrosoftTeams` Fails

### Symptom

PowerShell cannot connect to Teams.

### Resolution

1. Confirm internet connectivity from CLIENT01.
2. Confirm that the MicrosoftTeams module is installed.
3. Run PowerShell as the signed-in user, not necessarily as local Administrator.
4. Retry:

```powershell
Connect-MicrosoftTeams
```

5. If modern authentication fails, confirm that the account is not blocked by Conditional Access policies configured in the tenant.

## `Add-TeamUser` Fails

### Symptom

PowerShell reports that the user cannot be added.

### Resolution

1. Confirm the GroupId is correct.
2. Confirm the user principal name is exact.
3. Confirm that the signed-in admin has Teams Administrator privileges.
4. Confirm that the user is licensed.
5. Wait a few minutes after team creation and retry.

## PowerShell Output Is Empty

### Symptom

`Get-Team -DisplayName` returns no result.

### Resolution

1. Confirm the exact team display name.
2. Run:

```powershell
Get-Team | Select-Object DisplayName, GroupId
```

3. Locate the team manually and store its GroupId:

```powershell
$Team = Get-Team -GroupId "<paste-group-id>"
```

## Screenshot Quality Issues

### Resolution

- Use PNG format.
- Capture the full browser window or relevant admin pane.
- Avoid cropping out the site name, user name, or configuration value.
- Do not include passwords, tokens, cookies, or personal external-user data.
