# Phase 2 — Create SharePoint Team Site

## Objective

Create a Microsoft 365 group-connected SharePoint team site named **Operations Collaboration Hub** using the SharePoint admin center.

## Scope

This phase uses the SharePoint admin center GUI. PowerShell is not required.

## Step 1 — Open the SharePoint Admin Center

1. On CLIENT01, open Microsoft Edge.
2. Go to:

```text
https://admin.microsoft.com/sharepoint
```

3. Sign in with the administrative account used in Phase 1.

## Step 2 — Open Active Sites

1. In the SharePoint admin center, expand **Sites**.
2. Select **Active sites**.
3. Confirm that the **Active sites** page loads.

The **Active sites** page is the central location for viewing, searching, filtering, and creating SharePoint sites in the tenant.

### Screenshot

Capture:

```text
04-create-team-site.png
```

The screenshot should show the **Active sites** page with the **Create** button visible.

## Step 3 — Create the Team Site

1. Select **Create**.
2. Select **Team site**.
3. Choose the **Standard team** template.
4. Select **Use this template**.
5. Enter the following values:

| Field | Value |
|---|---|
| Site name | `Operations Collaboration Hub` |
| Group email | `operations-collaboration-hub` |
| Site owner | Your administrative account |
| Language | English or Portuguese, according to your preference |
| Time zone | Western Europe Standard Time, if offered |

6. Select **Next**.
7. Review the site settings.
8. Select **Create site**.
9. Wait until provisioning completes.
10. Select **Finish** or open the site URL.

Microsoft documents the SharePoint admin-center flow as **Active sites** > **Create** > **Team site** > template selection > site details > **Create site**.

## Step 4 — Confirm Site Creation

1. Return to **Sites** > **Active sites**.
2. Search for:

```text
Operations Collaboration Hub
```

3. Confirm that the site appears.
4. Confirm the site type is a team site.
5. Open the site URL.

The site URL should resemble:

```text
https://<yourtenant>.sharepoint.com/sites/operations-collaboration-hub
```

### Expected Result

- The site appears in **Active sites**
- The site has an associated Microsoft 365 group
- The SharePoint home page loads successfully

### Screenshots

Capture:

```text
05-site-created.png
```

The screenshot should show the site listed in **Active sites**.

Capture:

```text
06-site-homepage.png
```

The screenshot should show the newly created SharePoint site home page.

## Phase Validation

| Validation | Expected result |
|---|---|
| Site name | `Operations Collaboration Hub` |
| Site type | Team site |
| Microsoft 365 group | Created or connected |
| Site owner | Administrative account |
| Site access | Site home page opens successfully |

## Evidence Collected

| Filename | Evidence |
|---|---|
| `04-create-team-site.png` | SharePoint admin center before site creation |
| `05-site-created.png` | Site listed in Active sites |
| `06-site-homepage.png` | New SharePoint team-site home page |
