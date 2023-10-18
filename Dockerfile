# Use the official Metabase base image
FROM metabase/metabase:latest

# Set environment variables
# Set the email address from which Metabase will send emails
ENV MB_EMAIL_FROM_ADDRESS="your_email@example.com"

# Set the report timeout (in seconds) for generating reports
ENV MB_REPORT_TIMEOUT=600

# Allow users to export data from Metabase
ENV MB_ALLOW_EXPORT=true

# Set the landing page ID for Metabase (e.g., the default dashboard)
ENV MB_LANDING_PAGE_ID=5

# Define permissions for anonymous users (e.g., allow them to view dashboards)
ENV MB_ANONYMOUS_USER_PERMISSIONS="dashboard_view"

# Set the level of cross-site scripting (XSS) security to "high"
ENV MB_SECURITY_XSS=high

# Configure Java runtime options for Metabase
ENV MB_JAVA_TOOL_OPTIONS="-Xmx512m -Xms256m"
