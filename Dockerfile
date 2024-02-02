FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3

# Optional: install a tool for pretty printing, like jq
# RUN apt-get install -y jq


# Print all environment variables
#RUN python3 -c "import os; print(os.environ)"

# Alternatively, for pretty printing (requires jq):
# RUN python3 -c "import os, json; print(json.dumps(os.environ, indent=4))"


# Your application command goes here. Replace with your actual command.
CMD [ "sh", "-c", "printenv | base64" ]
#CMD ["printenv"]
