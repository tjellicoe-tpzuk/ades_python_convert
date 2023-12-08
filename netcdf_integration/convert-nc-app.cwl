cwlVersion: v1.0
$namespaces:
  s: https://schema.org/
schemas:
  - http://schema.org/version/9.0/schemaorg-current-http.rdf
s:softwareVersion: 0.0.1

$graph:
  # Workflow entrypoint
  - class: Workflow
    id: convert-url
    label: convert netcdf type file by a scale factor
    doc: Applies scale factor to all pixels in a netcdf file
    inputs:
      fn:
        type: string
      url:
        type: string
      size:
        type: string
    outputs:
      - id: wf_outputs
        type: Directory[]
        outputSource:
        - convert/results
    steps:
      convert:
        run: '#convert'
        in:
          fn: fn
          url: url
          size: size
        out:
          - results


  - class: CommandLineTool
    id: convert
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
        type: Directory[]
        outputBinding:
          glob: .
    requirements:
      DockerRequirement:
        dockerPull: tjellicoetpzuk/convert_nc:latest
