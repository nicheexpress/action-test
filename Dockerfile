FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3

# Optional: install a tool for pretty printing, like jq
# RUN apt-get install -y jq

RUN printenv

# Print all environment variables
#RUN python3 -c "import os; print(os.environ)"

# Alternatively, for pretty printing (requires jq):
# RUN python3 -c "import os, json; print(json.dumps(os.environ, indent=4))"
