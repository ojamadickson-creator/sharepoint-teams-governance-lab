# Phase 4 — Configure Permissions and Sharing

## Objective

Apply least-privilege access to the SharePoint site and restrict external sharing for the Operations Collaboration Hub.

## Scope

This phase uses the SharePoint admin center and SharePoint site settings GUI.

## Step 1 — Review Site Membership

1. Open the SharePoint admin center:

```text
https://admin.microsoft.com/sharepoint
```

2. Go to **Sites** > **Active sites**.
3. Select **Operations Collaboration Hub**.
4. Open the **Membership** tab or pane.
5. Confirm that your administrative account is listed as an owner.
6. Confirm that `ana.silva` is not yet a member.

### Screenshot

Capture:

```text
11-site-membership.png
```

The screenshot should show the current site membership.

## Step 2 — Add the Internal Test User

1. Open the SharePoint site.
2. Select the settings gear icon.
3. Select **Site permissions**.
4. Select **Add members**.
5. Enter:

```text
ana.silva@<yourtenant>.onmicrosoft.com
```

6. Select the user.
7. Choose **Site member**.
8. Select **Add**.

### Expected Result

`ana.silva` appears as a site member and can access the SharePoint site.

### Screenshot

Capture:

```text
12-add-member.png
```

The screenshot should show the user being added or the updated member list.

## Step 3 — Review Site-Level Sharing

1. Return to the SharePoint admin center.
2. Go to **Sites** > **Active sites**.
3. Select **Operations Collaboration Hub**.
4. Open **Policies** > **Sharing**.
5. Review the current external-sharing setting.

SharePoint external sharing is governed at both the organization and individual site level. When the settings differ, the more restrictive setting applies.

### Screenshot

Capture:

```text
13-site-sharing-policy.png
```

The screenshot should show the site sharing policy page.

## Step 4 — Restrict External Sharing

For this internal operations site, configure the site to prevent sharing outside the organization.

1. In the site sharing pane, select:

```text
Only people in your organization
```

2. Select **Save**.
3. Return to the site permissions page and confirm the setting.

### Expected Result

The site is configured for internal users only.

### Screenshot

Capture:

```text
14-external-sharing-disabled.png
```

The screenshot should show the saved site-level sharing configuration.

## Phase Validation

| Validation | Expected result |
|---|---|
| Site owner | Administrative account |
| Site member | `ana.silva` |
| External sharing | Only people in your organization |
| Guest access | Not enabled for this site |
| Access model | Least privilege applied |

## Evidence Collected

| Filename | Evidence |
|---|---|
| `11-site-membership.png` | Initial membership |
| `12-add-member.png` | Internal member added |
| `13-site-sharing-policy.png` | Sharing policy page |
| `14-external-sharing-disabled.png` | Internal-only sharing saved |
