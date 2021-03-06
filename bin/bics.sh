#!/bin/bash
# pflint Thu 22 Jan 2015 11:52:41 AM EST   
# Bull In China Shop approach to content.xml
#
#
# Output the header stuff
#debug spause
# packs expect and sends it out...
# 
# From this line to EOF is the code to export
# note slash escapes (\\)
read -d '' header <<"EOF"
    <office:text>
      <office:forms form:automatic-focus="false" form:apply-design-mode="false"/>
      <text:sequence-decls>
        <text:sequence-decl text:display-outline-level="0" text:name="Illustration"/>
        <text:sequence-decl text:display-outline-level="0" text:name="Table"/>
        <text:sequence-decl text:display-outline-level="0" text:name="Text"/>
        <text:sequence-decl text:display-outline-level="0" text:name="Drawing"/>
      </text:sequence-decls>
      <text:p text:style-name="P2">PROGRAM PLANNING AND PROPOSAL WRIRING</text:p>
      <text:list xml:id="list6309700949849434465" text:style-name="WW8Num3">
        <text:list-item>
          <text:h text:style-name="Heading_20_1" text:outline-level="1">Heading 1</text:h>
        </text:list-item>
      </text:list>
        <text:p text:style-name="P1">Text under heading 1</text:p>
        <text:list xml:id="list164202752164137" text:continue-numbering="true" text:style-name="WW8Num3">
		<text:list-item>
EOF
# Output the stuff we want to:
#	Output Header 1
read -d '' section1 <<"EOF"
			<text:h text:style-name="Heading_20_1" text:outline-level="1">Heading 1</text:h>
EOF
# 	Output Text
read -d '' text <<"EOF"
      <text:p text:style-name="P1">Text under heading 1</text:p>
EOF
#	Output Header 2
read -d '' section2 <<"EOF"
				     <text:list-item><text:h text:style-name="Heading_20_2" text:outline-level="2">Heading 2</text:h></text:list-item>
EOF
# 	Output Text
# Output the tail stuff
# note slash escapes (\\)
read -d '' footer <<"EOF"
		</text:list-item>
        </text:list>
      <text:p text:style-name="P1">Text under heading 2</text:p>
    </office:text>
  </office:body>
</office:document-content>
EOF
#
# do not forget the quotes!
echo "$header"
echo "$section1"
echo "$footer"
