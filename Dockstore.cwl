baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: demobharris
inputs:
  chromosome:
    default: '2'
    doc: ''
    inputBinding:
      position: 2
      prefix: --chromosome
    type: string
  end:
    default: 47640088
    doc: ''
    inputBinding:
      position: 4
      prefix: --end
    type: long
  start:
    default: 47602241
    doc: ''
    inputBinding:
      position: 3
      prefix: --start
    type: long
  vcf:
    doc: ''
    inputBinding:
      position: 1
      prefix: --vcf
    type: File
label: Tutorial DEMO BHarris
outputs:
  output:
    doc: ''
    outputBinding:
      glob: output/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/demobharris:2
s:author:
  class: s:Person
  s:name: Beth Harris
