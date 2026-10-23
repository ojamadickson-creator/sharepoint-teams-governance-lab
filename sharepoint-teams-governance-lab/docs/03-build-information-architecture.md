# Phase 3 — Build Information Architecture

## Objective

Create a practical document-library structure, metadata model, and custom view for the Operations Collaboration Hub.

## Scope

This phase is completed entirely in the SharePoint site GUI.

## Step 1 — Open the Documents Library

1. Open the **Operations Collaboration Hub** SharePoint site.
2. In the left navigation, select **Documents**.
3. Confirm the default document library opens.

### Screenshot

Capture:

```text
07-document-library.png
```

The screenshot should show the empty or default **Documents** library.

## Step 2 — Create Operational Folders

In the **Documents** library, select **New** > **Folder**.

Create the following folders:

```text
01 - SOPs
02 - Incident Reports
03 - Vendor Documents
04 - Templates
05 - Archived
```

Use the exact names above, including the numeric prefixes. The prefixes preserve a predictable operational sorting order.

### Expected Result

The document library contains five folders.

### Screenshot

Capture:

```text
08-folders-created.png
```

The screenshot should show all five folders.

## Step 3 — Create Sample SOP Documents

1. Open the `01 - SOPs` folder.
2. Select **New** > **Word document**.
3. Name the first document:

```text
SOP-001 - Daily Operations Checklist
```

4. Add this sample content:

```text
Daily Operations Checklist

1. Review overnight alerts
2. Confirm backup completion
3. Review open incidents
4. Check critical service status
5. Escalate unresolved issues
```

5. Save and close the document.
6. Create a second Word document named:

```text
SOP-002 - Incident Escalation Process
```

7. Add this sample content:

```text
Incident Escalation Process

1. Identify the affected service
2. Record the initial impact
3. Assign an owner
4. Escalate according to severity
5. Document resolution and lessons learned
```

8. Save and close the document.

### Expected Result

The `01 - SOPs` folder contains two Word documents.

## Step 4 — Create the Document Type Column

1. Return to the root of the **Documents** library.
2. Select the settings gear icon.
3. Select **Library settings**.
4. Under **Columns**, select **Create column**.
5. Enter:

| Field | Value |
|---|---|
| Column name | `Document Type` |
| Type | Choice |
| Require that this column contains information | No |
| Choices | `SOP`, `Incident Report`, `Vendor Document`, `Template` |
| Display choices using | Drop-Down Menu |
| Default value | `SOP` |

6. Select **OK**.

### Expected Result

The `Document Type` column appears in the library.

### Screenshot

Capture:

```text
09-site-column.png
```

The screenshot should show the new column settings or the column visible in the library.

## Step 5 — Create the Operational Documents View

1. In the **Documents** library, select the view selector.
2. Select **Create new view**.
3. Choose **List** or **Standard View**, depending on the available interface.
4. Name the view:

```text
Operational Documents
```

5. Make it a public view.
6. Add or confirm the following columns:
   - Name
   - Modified
   - Modified By
   - Document Type
7. Save the view.
8. Open the new view.

### Expected Result

The custom view displays the operational documents with the selected columns.

### Screenshot

Capture:

```text
10-custom-view.png
```

The screenshot should show the **Operational Documents** view.

## Phase Validation

| Validation | Expected result |
|---|---|
| Folders | Five operational folders exist |
| Documents | Two SOP documents exist |
| Metadata | `Document Type` column exists |
| View | `Operational Documents` view exists |
| Library organization | Content is separated by operational function |

## Evidence Collected

| Filename | Evidence |
|---|---|
| `07-document-library.png` | Initial document library |
| `08-folders-created.png` | Five operational folders |
| `09-site-column.png` | Document Type column |
| `10-custom-view.png` | Custom operational view |
