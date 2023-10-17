# Use the official Metabase base image
FROM metabase/metabase:latest

# Set environment variables
ENV MB_EMAIL_FROM_ADDRESS="your_email@example.com"
ENV MB_REPORT_TIMEOUT=600
ENV MB_ALLOW_EXPORT=true
ENV MB_LANDING_PAGE_ID=5
ENV MB_ANONYMOUS_USER_PERMISSIONS="dashboard_view"
ENV MB_SECURITY_XSS=high
ENV MB_JAVA_TOOL_OPTIONS="-Xmx512m -Xms256m"

# Add other instructions and configurations if needed

# Start Metabase
CMD ["java", "-jar", "app/metabase.jar"]
