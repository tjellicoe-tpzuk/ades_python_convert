cwlVersion: v1.0


  # convert.sh - takes input args `--stac`
class: CommandLineTool
id: convert
baseCommand: convert.sh
inputs:
  fn:
    type: string
    inputBinding:
      position: 1
  stac:
    type: Directory
    inputBinding:
      position: 2
      prefix: --stac
  size:
    type: string
    inputBinding:
      position: 3
outputs:
  results:
    type: Directory
    outputBinding:
      glob: .
requirements:
  DockerRequirement:
    dockerPull: eoepca/convert:latest

