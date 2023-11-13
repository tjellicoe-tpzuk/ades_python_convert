# Common Workflow Language Files For Use With The ADES For EOEPCA Deployment

## The CWL files contained in this repository are to be used alongside the EOEPCA ADES to run such commands as part of an EOEPCA application package
This application should be run on an [EOEPCA processing deployment](https://github.com/EOEPCA/deployment-guide) to provide an example of a python script being exploited on the ADES as a proof of concept before attempting to run more complex Python scripts via this process.

## How to run this application
This application should be run on an EOEPCA processing deployment. This can be done by taking inspiration from some of the http files found in the EOEPCA Deployment Guide [repository](https://github.com/EOEPCA/deployment-guide/tree/main/deploy/samples/requests/processing) which contains sample scripts that allow cwl commands to be passed to the ADES for execution.
A copy of the `convert-url-app.http` file is contained within this directory and can be used to run the `convert-url-app.cwl` with any inputs so desired. I suggest the files contained within this public repository are passed to the ADES using the http file including the png input images.
To run the API requests I suggest using the REST API extension within VSCode.

Updates need to be made to the `convert-url.http` files to point to the cwl scripts found in this repo, as well as updating the input arguments contained in the http file.
