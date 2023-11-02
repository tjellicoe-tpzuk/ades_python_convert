cwlVersion: v1.2
class: CommandLineTool
  doc: Convert Url image by adjusting size
  id: convert-url
  label: convert url app
  id: convert
  baseCommand: ["python", "-m", "convert_image"]
  inputs:
    fn:
      type: string
      inputBinding:
        position: 1
    url:
      type: string
      inputBinding:
        position: 2
        prefix: --url
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
       dockerPull: tjellicoetpzuk/convert:latest
