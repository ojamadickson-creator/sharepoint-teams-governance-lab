# Execution Checklist

Use this checklist as the master execution record. 
## Before You Start

- [ ] Confirm access to the Microsoft 365 admin center
- [ ] Confirm access to the SharePoint admin center
- [ ] Confirm access to Microsoft Teams
- [ ] Confirm the administrative account has SharePoint Administrator and Teams Administrator roles
- [ ] Confirm at least two licensed internal test users exist
- [ ] Confirm PowerShell is available on CLIENT01
- [ ] Create the folder `assets/screenshots/` if it is not already present

## Phase 1 — Prerequisites and Tenant Preparation

- [ ] Review or create test users
- [ ] Confirm licenses
- [ ] Confirm administrative roles
- [ ] Capture `01-m365-users.png`
- [ ] Capture `02-admin-roles.png`
- [ ] Capture `03-licenses.png`

## Phase 2 — Create SharePoint Team Site

- [ ] Open SharePoint admin center
- [ ] Create the `Operations Collaboration Hub` team site
- [ ] Confirm site provisioning completed
- [ ] Capture `04-create-team-site.png`
- [ ] Capture `05-site-created.png`
- [ ] Capture `06-site-homepage.png`

## Phase 3 — Build Information Architecture

- [ ] Create the five operational folders
- [ ] Upload or create two sample SOP documents
- [ ] Create the `Document Type` site column
- [ ] Create the `Operational Documents` view
- [ ] Capture `07-document-library.png`
- [ ] Capture `08-folders-created.png`
- [ ] Capture `09-site-column.png`
- [ ] Capture `10-custom-view.png`

## Phase 4 — Configure Permissions and Sharing

- [ ] Review site membership
- [ ] Add the internal test user as a site member
- [ ] Configure site sharing to internal users only
- [ ] Capture `11-site-membership.png`
- [ ] Capture `12-add-member.png`
- [ ] Capture `13-site-sharing-policy.png`
- [ ] Capture `14-external-sharing-disabled.png`

## Phase 5 — Create Teams Workspace

- [ ] Create a team from the existing Microsoft 365 group
- [ ] Confirm the team is connected to the SharePoint site
- [ ] Create the operational channels
- [ ] Post the welcome message
- [ ] Add the SharePoint Documents library as a tab, if available
- [ ] Capture `15-create-team-from-group.png`
- [ ] Capture `16-team-created.png`
- [ ] Capture `17-channels-created.png`
- [ ] Capture `18-sharepoint-tab.png`

## Phase 6 — PowerShell Validation and Membership

- [ ] Install the MicrosoftTeams PowerShell module
- [ ] Connect to Microsoft Teams
- [ ] Validate the team object
- [ ] Add the test user as a team member
- [ ] Validate team membership
- [ ] Capture `19-connect-microsoftteams.png`
- [ ] Capture `20-team-validation.png`
- [ ] Capture `21-add-team-user.png`
- [ ] Capture `22-team-members-validation.png`

## Phase 7 — Final Validation and Evidence

- [ ] Confirm SharePoint site exists in Active sites
- [ ] Confirm document structure and metadata
- [ ] Confirm internal-only sharing
- [ ] Confirm Teams channels
- [ ] Confirm SharePoint integration in Teams
- [ ] Confirm PowerShell membership validation
- [ ] Capture `23-final-site-validation.png`
- [ ] Capture `24-final-teams-validation.png`
- [ ] Capture `25-final-permissions-validation.png`
- [ ] Move all screenshots into `assets/screenshots/`
- [ ] Update this checklist

