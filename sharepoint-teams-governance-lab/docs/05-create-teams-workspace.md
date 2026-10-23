# Phase 5 — Create Teams Workspace

## Objective

Create a Microsoft Teams workspace connected to the Microsoft 365 group that backs the Operations Collaboration Hub SharePoint site.

## Scope

This phase uses the Microsoft Teams GUI. PowerShell is not required.

## Step 1 — Open Microsoft Teams

1. On CLIENT01, open Microsoft Edge.
2. Go to:

```text
https://teams.microsoft.com
```

3. Sign in with the administrative account.

## Step 2 — Create a Team from the Existing Group

1. In Teams, select **Teams**.
2. Select **Join or create a team**.
3. Select **Create team**.
4. Select **From a group or team**.
5. Select **Microsoft 365 group**.
6. Search for:

```text
Operations Collaboration Hub
```

7. Select the group associated with the SharePoint site.
8. Complete the team creation.

Because Teams are backed by Microsoft 365 Groups, selecting the existing group connects the new team to the existing SharePoint team site rather than creating a separate disconnected workspace.

### Screenshot

Capture:

```text
15-create-team-from-group.png
```

The screenshot should show the team creation flow selecting the existing Microsoft 365 group.

## Step 3 — Confirm Team Creation

1. Open the newly created **Operations Collaboration Hub** team.
2. Confirm the **General** channel exists.
3. Confirm that the team appears in your Teams list.

### Expected Result

The team is created and connected to the SharePoint site’s Microsoft 365 group.

### Screenshot

Capture:

```text
16-team-created.png
```

The screenshot should show the new team in Microsoft Teams.

## Step 4 — Create Operational Channels

In the team, select the options menu beside **General** and choose **Add channel**.

Create the following channels:

| Channel | Purpose |
|---|---|
| `Daily Operations` | Operational handovers and daily coordination |
| `Incidents` | Incident discussion and follow-up |
| `Vendor Coordination` | Vendor communication and scheduling |

Use the following settings:

- Privacy: **Standard**
- Create for: **Everyone in Operations Collaboration Hub**

### Expected Result

The team contains:

```text
General
Daily Operations
Incidents
Vendor Coordination
```

### Screenshot

Capture:

```text
17-channels-created.png
```

The screenshot should show all created channels.

## Step 5 — Post a Welcome Message

1. Open the **General** channel.
2. Post the following message:

```text
Welcome to the Operations Collaboration Hub.

Use this team for operational coordination, incident follow-up, and document collaboration. Operational procedures are maintained in the connected SharePoint document library.
```

## Step 6 — Add the SharePoint Library

1. In the **General** channel, select **Add a tab** or the **+** icon.
2. Select **Documents** or **SharePoint**, depending on the available option.
3. Select the **Operations Collaboration Hub** SharePoint site.
4. Select the **Documents** library.
5. Save the tab.

### Expected Result

The SharePoint Documents library is accessible from the Teams General channel.

### Screenshot

Capture:

```text
18-sharepoint-tab.png
```

The screenshot should show the SharePoint Documents tab inside Teams.

## Phase Validation

| Validation | Expected result |
|---|---|
| Team source | Existing Microsoft 365 group |
| SharePoint connection | Same group-backed SharePoint site |
| Channels | Daily Operations, Incidents, Vendor Coordination |
| Welcome message | Posted in General |
| SharePoint integration | Documents library available as a tab |

## Evidence Collected

| Filename | Evidence |
|---|---|
| `15-create-team-from-group.png` | Team created from existing group |
| `16-team-created.png` | New team workspace |
| `17-channels-created.png` | Operational channels |
| `18-sharepoint-tab.png` | SharePoint library integrated in Teams |
