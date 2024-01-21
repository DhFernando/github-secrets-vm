#!/bin/bash

# Read the template file
templateFile=".env.template"
content=$(<"$templateFile")

# Replace placeholders with specific test values
content=${content//COMMAND_SERVER_PORT=/COMMAND_SERVER_PORT=7070}
content=${content//QUERY_SERVER_PORT=/QUERY_SERVER_PORT=8080}
content=${content//WORKFLOW_ENGINE_PORT=/WORKFLOW_ENGINE_PORT=9090}

# Save the modified content to a new file
envFile=".env"
echo "$content" > "$envFile"
