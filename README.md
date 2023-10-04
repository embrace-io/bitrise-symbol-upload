# Embrace iOS Symbol Upload

Upload iOS debug symbols to Embrace through Bitrise CI integration

## How to use this Step

Add this step to your workflow, and specify two environment variables:

  - EMBRACE_APP: Your Embrace app idenifier
  - BRACE_API_TOKEN: Your Embrace upload API token

Note that you should add EMBRACE_API_TOKEN to your Bitrise secrets, either .bitrise.secrets.yml or through the secrets UI in the Bitrise interface.
