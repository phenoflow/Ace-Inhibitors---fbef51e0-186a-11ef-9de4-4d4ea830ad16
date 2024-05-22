cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ace-inhibitors-captopril---primary:
    run: ace-inhibitors-captopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  ace-inhibitors-fosinopril---primary:
    run: ace-inhibitors-fosinopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-captopril---primary/output
  ace-inhibitors-captomex---primary:
    run: ace-inhibitors-captomex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-fosinopril---primary/output
  ace-inhibitors-genus---primary:
    run: ace-inhibitors-genus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-captomex---primary/output
  ace-inhibitors-arrow---primary:
    run: ace-inhibitors-arrow---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-genus---primary/output
  ace-inhibitors-captoco---primary:
    run: ace-inhibitors-captoco---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-arrow---primary/output
  ace-inhibitors-focus---primary:
    run: ace-inhibitors-focus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-captoco---primary/output
  ace-inhibitors-lagap---primary:
    run: ace-inhibitors-lagap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-focus---primary/output
  ace-inhibitors---primary:
    run: ace-inhibitors---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-lagap---primary/output
  ace-inhibitors-625mg---primary:
    run: ace-inhibitors-625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: ace-inhibitors---primary/output
  ace-inhibitors-perindopril---primary:
    run: ace-inhibitors-perindopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-625mg---primary/output
  ace-inhibitors-hillcross---primary:
    run: ace-inhibitors-hillcross---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-perindopril---primary/output
  ace-inhibitors-dexcel---primary:
    run: ace-inhibitors-dexcel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-hillcross---primary/output
  ace-inhibitors-tillomed---primary:
    run: ace-inhibitors-tillomed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-dexcel---primary/output
  ace-inhibitors-titration---primary:
    run: ace-inhibitors-titration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-tillomed---primary/output
  ace-inhibitors-pharm---primary:
    run: ace-inhibitors-pharm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-titration---primary/output
  ace-inhibitors-125mg---primary:
    run: ace-inhibitors-125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-pharm---primary/output
  ace-inhibitors-sovereign---primary:
    run: ace-inhibitors-sovereign---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-125mg---primary/output
  ace-inhibitors-zestril---primary:
    run: ace-inhibitors-zestril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-sovereign---primary/output
  ace-inhibitors-capoten---primary:
    run: ace-inhibitors-capoten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-zestril---primary/output
  ace-inhibitors-quinapril---primary:
    run: ace-inhibitors-quinapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-capoten---primary/output
  ace-inhibitors-lisinopril---primary:
    run: ace-inhibitors-lisinopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-quinapril---primary/output
  ace-inhibitors-niche---primary:
    run: ace-inhibitors-niche---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-lisinopril---primary/output
  ace-inhibitors-sandoz---primary:
    run: ace-inhibitors-sandoz---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-niche---primary/output
  ace-inhibitors-imidapril---primary:
    run: ace-inhibitors-imidapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-sandoz---primary/output
  ace-inhibitors-ramipril---primary:
    run: ace-inhibitors-ramipril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-imidapril---primary/output
  ace-inhibitors-winthrop---primary:
    run: ace-inhibitors-winthrop---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-ramipril---primary/output
  ace-inhibitors-microgram---primary:
    run: ace-inhibitors-microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-winthrop---primary/output
  ace-inhibitors-caralpha---primary:
    run: ace-inhibitors-caralpha---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-microgram---primary/output
  ace-inhibitors-wafer---primary:
    run: ace-inhibitors-wafer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-caralpha---primary/output
  ace-inhibitors-coversyl---primary:
    run: ace-inhibitors-coversyl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-wafer---primary/output
  ace-inhibitors-staril---primary:
    run: ace-inhibitors-staril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-coversyl---primary/output
  ace-inhibitors-quinil---primary:
    run: ace-inhibitors-quinil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-staril---primary/output
  ace-inhibitors-sterwin---primary:
    run: ace-inhibitors-sterwin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-quinil---primary/output
  ace-inhibitors-hyteneze---primary:
    run: ace-inhibitors-hyteneze---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-sterwin---primary/output
  ace-inhibitors-moexipril---primary:
    run: ace-inhibitors-moexipril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-hyteneze---primary/output
  ace-inhibitors-ednyt---primary:
    run: ace-inhibitors-ednyt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-moexipril---primary/output
  ace-inhibitors-hydrochlorothiazide---primary:
    run: ace-inhibitors-hydrochlorothiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-ednyt---primary/output
  ace-inhibitors-enalapril---primary:
    run: ace-inhibitors-enalapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-hydrochlorothiazide---primary/output
  ace-inhibitors-accupro---primary:
    run: ace-inhibitors-accupro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-enalapril---primary/output
  ace-inhibitors-capozide---primary:
    run: ace-inhibitors-capozide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-accupro---primary/output
  ace-inhibitors-ranbaxy---primary:
    run: ace-inhibitors-ranbaxy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-capozide---primary/output
  ace-inhibitors-neolab---primary:
    run: ace-inhibitors-neolab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-ranbaxy---primary/output
  ace-inhibitors-kaplon---primary:
    run: ace-inhibitors-kaplon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-neolab---primary/output
  ace-inhibitors-cilazapril---primary:
    run: ace-inhibitors-cilazapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-kaplon---primary/output
  zestoretic-ace-inhibitors---primary:
    run: zestoretic-ace-inhibitors---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-cilazapril---primary/output
  ace-inhibitors-perdix---primary:
    run: ace-inhibitors-perdix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: zestoretic-ace-inhibitors---primary/output
  pralenal-ace-inhibitors---primary:
    run: pralenal-ace-inhibitors---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-perdix---primary/output
  ace-inhibitors-pliva---primary:
    run: ace-inhibitors-pliva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: pralenal-ace-inhibitors---primary/output
  ace-inhibitors-triapin---primary:
    run: ace-inhibitors-triapin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-pliva---primary/output
  ace-inhibitors-actavis---primary:
    run: ace-inhibitors-actavis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-triapin---primary/output
  ace-inhibitors-tanatril---primary:
    run: ace-inhibitors-tanatril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-actavis---primary/output
  ace-inhibitors-lennon---primary:
    run: ace-inhibitors-lennon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-tanatril---primary/output
  ace-inhibitors-tensopril---primary:
    run: ace-inhibitors-tensopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-lennon---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-tensopril---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
