#!/bin/bash

# Read the template file
templateFile=".env.template"
content=$(<"$templateFile")

# Replace placeholders with specific test values
# Replace placeholders with actual values from GitHub Secrets
content=${content//COMMAND_SERVER_PORT=/$COMMAND_SERVER_PORT}
content=${content//QUERY_SERVER_PORT=/$QUERY_SERVER_PORT}
content=${content//WORKFLOW_ENGINE_PORT=/$WORKFLOW_ENGINE_PORT}

# Save the modified content to a new file
envFile=".env"
echo "$content" > "$envFile"
