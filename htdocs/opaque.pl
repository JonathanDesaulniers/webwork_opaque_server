#!/usr/bin/perl -w

# warn "getting wsdl for opaque server\n\n";

# print <<END_WSDL;
# 
# <?xml version="1.0" encoding="UTF-8"?>
# <wsdl:definitions targetnamespace="http://localhost/OpaqueServer" xmlns:apachesoap="http://xml.apache.org/xml-soap" xmlns:impl="http://om.open.ac.uk/" xmlns:intf="http://om.open.ac.uk/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:wsdlsoap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
#  <wsdl:types>
#   <schema targetnamespace="http://localhost/OpaqueServer" xmlns="http://www.w3.org/2001/XMLSchema">
#    <import namespace="http://schemas.xmlsoap.org/soap/encoding/"/>
# 
#    <complexType name="ArrayOf_soapenc_string">
#     <complexContent>
#      <restriction base="soapenc:Array">
#       <attribute ref="soapenc:arrayType" wsdl:arrayType="soapenc:string[]"/>
#      </restriction>
#     </complexContent>
#    </complexType>
# 
#    <complexType name="Resource">
#     <sequence>
#      <element name="content" nillable="true" type="soapenc:base64Binary"/>
#      <element name="encoding" nillable="true" type="soapenc:string"/>
#      <element name="filename" nillable="true" type="soapenc:string"/>
#      <element name="mimeType" nillable="true" type="soapenc:string"/>
#     </sequence>
#    </complexType>
# 
#    <complexType name="ArrayOfResource">
#     <complexContent>
#      <restriction base="soapenc:Array">
#       <attribute ref="soapenc:arrayType" wsdl:arrayType="impl:Resource[]"/>
#      </restriction>
#     </complexContent>
#    </complexType>
# 
#    <complexType name="StartReturn">
#     <sequence>
#      <element name="CSS" nillable="true" type="soapenc:string"/>
#      <element name="XHTML" nillable="true" type="soapenc:string"/>
#      <element name="progressInfo" nillable="true" type="soapenc:string"/>
#      <element name="questionSession" nillable="true" type="soapenc:string"/>
#      <element name="resources" nillable="true" type="impl:ArrayOfResource"/>
#     </sequence>
#    </complexType>
# 
#    <complexType name="OmException">
#     <sequence/>
#    </complexType>
# 
#    <complexType name="CustomResult">
#     <sequence>
#      <element name="name" nillable="true" type="soapenc:string"/>
#      <element name="value" nillable="true" type="soapenc:string"/>
#     </sequence>
#    </complexType>
# 
#    <complexType name="ArrayOfCustomResult">
#     <complexContent>
#      <restriction base="soapenc:Array">
#       <attribute ref="soapenc:arrayType" wsdl:arrayType="impl:CustomResult[]"/>
#      </restriction>
#     </complexContent>
#    </complexType>
# 
#    <complexType name="Score">
#     <sequence>
#      <element name="axis" nillable="true" type="soapenc:string"/>
#      <element name="marks" type="xsd:int"/>
#     </sequence>
#    </complexType>
# 
#    <complexType name="ArrayOfScore">
#     <complexContent>
#      <restriction base="soapenc:Array">
#       <attribute ref="soapenc:arrayType" wsdl:arrayType="impl:Score[]"/>
#      </restriction>
#     </complexContent>
#    </complexType>
#
#   <complexType name="Results">
#    <sequence>
#     <element name="actionSummary" nillable="true" type="soapenc:string"/>
#     <element name="answerLine" nillable="true" type="soapenc:string"/>
#     <element name="attempts" type="xsd:int"/>
#     <element name="customResults" nillable="true" type="impl:ArrayOfCustomResult"/>
#     <element name="questionLine" nillable="true" type="soapenc:string"/>
#     <element name="scores" nillable="true" type="impl:ArrayOfScore"/>
#    </sequence>
#   </complexType>
#
#   <complexType name="ResultsTMP">
#    <sequence>
#     <element name="actionSummary" nillable="true" type="soapenc:string"/>
#     <element name="answerLine" nillable="true" type="soapenc:string"/>
#     <element name="attempts" type="xsd:int"/>
#     <element name="customResults" nillable="true" type="impl:ArrayOfCustomResult"/>
#     <element name="questionLine" nillable="true" type="soapenc:string"/>
#     <element name="scores" nillable="true" type="impl:ArrayOfScore"/>
#     <element name="TRY" type="xsd:int"/>
#    </sequence>
#   </complexType>
# 
#    <complexType name="ProcessReturn">
#     <sequence>
#      <element name="CSS" nillable="true" type="soapenc:string"/>
#      <element name="XHTML" nillable="true" type="soapenc:string"/>
#      <element name="progressInfo" nillable="true" type="soapenc:string"/>
#      <element name="questionEnd" type="xsd:boolean"/>
#      <element name="resources" nillable="true" type="impl:ArrayOfResource"/>
#      <element name="results" nillable="true" type="impl:Results"/>
#      <element name="resultstmp" nillable="true" type="impl:ResultsTMP"/>
#      <element name="solfeedback" nillable="true" type="soapenc:string"/>
#     </sequence>
#    </complexType>
# 
#   </schema>
# 
#  </wsdl:types>
# 
#    <wsdl:message name="getEngineInfoResponse">
#       <wsdl:part name="getEngineInfoReturn" type="soapenc:string"/>
#    </wsdl:message>
# 
#    <wsdl:message name="processRequest">
#       <wsdl:part name="questionSession" type="soapenc:string"/>
#       <wsdl:part name="names" type="impl:ArrayOf_soapenc_string"/>
#       <wsdl:part name="values" type="impl:ArrayOf_soapenc_string"/>
#    </wsdl:message>
# 
#    <wsdl:message name="getEngineInfoRequest">
#    </wsdl:message>
# 
#    <wsdl:message name="getQuestionMetadataResponse">
#       <wsdl:part name="getQuestionMetadataReturn" type="soapenc:string"/>
#    </wsdl:message>
# 
#    <wsdl:message name="processResponse">
#       <wsdl:part name="processReturn" type="impl:ProcessReturn"/>
#    </wsdl:message>
# 
#    <wsdl:message name="stopResponse">
#    </wsdl:message>
# 
#    <wsdl:message name="OmException">
#       <wsdl:part name="fault" type="impl:OmException"/>
#    </wsdl:message>
# 
#    <wsdl:message name="startResponse">
#       <wsdl:part name="startReturn" type="impl:StartReturn"/>
#    </wsdl:message>
# 
#    <wsdl:message name="stopRequest">
#       <wsdl:part name="questionSession" type="soapenc:string"/>
#    </wsdl:message>
# 
#    <wsdl:message name="getQuestionMetadataRequest">
#       <wsdl:part name="questionID" type="soapenc:string"/>
#       <wsdl:part name="questionVersion" type="soapenc:string"/>
#       <wsdl:part name="questionHint" type="xsd:int"/>
#       <wsdl:part name="questionSolution" type="xsd:int"/>
#       <wsdl:part name="endingquestionSolution" type="xsd:int"/>
#       <wsdl:part name="maxnumAttempt" type="xsd:int"/>
#       <wsdl:part name="modeExam" type="xsd:int"/>
#       <wsdl:part name="questionBaseURL" type="soapenc:string"/>
#    </wsdl:message>
# 
#    <wsdl:message name="startRequest">
#       <wsdl:part name="questionID" type="soapenc:string"/>
#       <wsdl:part name="questionVersion" type="soapenc:string"/>
#       <wsdl:part name="questionHint" type="xsd:int"/>
#       <wsdl:part name="questionSolution" type="xsd:int"/>
#       <wsdl:part name="endingquestionSolution" type="xsd:int"/>
#       <wsdl:part name="maxnumAttempt" type="xsd:int"/>
#       <wsdl:part name="modeExam" type="xsd:int"/>
#       <wsdl:part name="questionBaseURL" type="soapenc:string"/>
#       <wsdl:part name="initialParamNames" type="impl:ArrayOf_soapenc_string"/>
#       <wsdl:part name="initialParamValues" type="impl:ArrayOf_soapenc_string"/>
#       <wsdl:part name="cachedResources" type="impl:ArrayOf_soapenc_string"/>
#    </wsdl:message>
# 
#    <wsdl:portType name="OmService">
# 
#       <wsdl:operation name="start" parameterOrder="questionID questionVersion questionHint questionSolution endingquestionSolution maxnumAttempt modeExam questionBaseURL initialParamNames initialParamValues cachedResources">
#          <wsdl:input message="impl:startRequest" name="startRequest"/>
#          <wsdl:output message="impl:startResponse" name="startResponse"/>
#          <wsdl:fault message="impl:OmException" name="OmException"/>
#       </wsdl:operation>
# 
#       <wsdl:operation name="stop" parameterOrder="questionSession">
#          <wsdl:input message="impl:stopRequest" name="stopRequest"/>
#          <wsdl:output message="impl:stopResponse" name="stopResponse"/>
#          <wsdl:fault message="impl:OmException" name="OmException"/>
#       </wsdl:operation>
# 
#       <wsdl:operation name="process" parameterOrder="questionSession names values">
#          <wsdl:input message="impl:processRequest" name="processRequest"/>
#          <wsdl:output message="impl:processResponse" name="processResponse"/>
#          <wsdl:fault message="impl:OmException" name="OmException"/>
#       </wsdl:operation>
# 
#       <wsdl:operation name="getEngineInfo">
#          <wsdl:input message="impl:getEngineInfoRequest" name="getEngineInfoRequest"/>
#          <wsdl:output message="impl:getEngineInfoResponse" name="getEngineInfoResponse"/>
#       </wsdl:operation>
# 
#       <wsdl:operation name="getQuestionMetadata" parameterOrder="questionID questionVersion questionHint questionSolution endingquestionSolution maxnumAttempt modeExam questionBaseURL">
#          <wsdl:input message="impl:getQuestionMetadataRequest" name="getQuestionMetadataRequest"/>
#          <wsdl:output message="impl:getQuestionMetadataResponse" name="getQuestionMetadataResponse"/>
#          <wsdl:fault message="impl:OmException" name="OmException"/>
#       </wsdl:operation>
# 
#    </wsdl:portType>
# 
#    <wsdl:binding name="OmSoapBinding" type="impl:OmService">
#       <wsdlsoap:binding style="rpc" transport="http://schemas.xmlsoap.org/soap/http"/>
# 
#       <wsdl:operation name="start">
#          <wsdlsoap:operation soapAction=""/>
#          <wsdl:input name="startRequest">
#             <wsdlsoap:body encodingStyle="http://schemas.xmlsoap.org/soap/encoding/" namespace="http://localhost/OpaqueServer" use="encoded"/>
#          </wsdl:input>
#          <wsdl:output name="startResponse">
#             <wsdlsoap:body encodingStyle="http://schemas.xmlsoap.org/soap/encoding/" namespace="http://localhost/OpaqueServer" use="encoded"/>
#          </wsdl:output>
# 
#          <wsdl:fault name="OmException">
#             <wsdlsoap:fault encodingStyle="http://schemas.xmlsoap.org/soap/encoding/" name="OmException" namespace="http://localhost/OpaqueServer" use="encoded"/>
#          </wsdl:fault>
#       </wsdl:operation>
# 
#       <wsdl:operation name="stop">
#          <wsdlsoap:operation soapAction=""/>
#          <wsdl:input name="stopRequest">
#             <wsdlsoap:body encodingStyle="http://schemas.xmlsoap.org/soap/encoding/" namespace="http://localhost/OpaqueServer" use="encoded"/>
#          </wsdl:input>
# 
#          <wsdl:output name="stopResponse">
#             <wsdlsoap:body encodingStyle="http://schemas.xmlsoap.org/soap/encoding/" namespace="http://localhost/OpaqueServer" use="encoded"/>
#          </wsdl:output>
#          <wsdl:fault name="OmException">
#             <wsdlsoap:fault encodingStyle="http://schemas.xmlsoap.org/soap/encoding/" name="OmException" namespace="http://localhost/OpaqueServer" use="encoded"/>
#          </wsdl:fault>
#       </wsdl:operation>
# 
#       <wsdl:operation name="process">
#          <wsdlsoap:operation soapAction=""/>
#          <wsdl:input name="processRequest">
#             <wsdlsoap:body encodingStyle="http://schemas.xmlsoap.org/soap/encoding/" namespace="http://localhost/OpaqueServer" use="encoded"/>
#          </wsdl:input>
#          <wsdl:output name="processResponse">
#             <wsdlsoap:body encodingStyle="http://schemas.xmlsoap.org/soap/encoding/" namespace="http://localhost/OpaqueServer" use="encoded"/>
#          </wsdl:output>
#          <wsdl:fault name="OmException">
#             <wsdlsoap:fault encodingStyle="http://schemas.xmlsoap.org/soap/encoding/" name="OmException" namespace="http://localhost/OpaqueServer" use="encoded"/>
#          </wsdl:fault>
#       </wsdl:operation>
# 
#       <wsdl:operation name="getEngineInfo">
#          <wsdlsoap:operation soapAction=""/>
#          <wsdl:input name="getEngineInfoRequest">
#             <wsdlsoap:body encodingStyle="http://schemas.xmlsoap.org/soap/encoding/" namespace="http://localhost/OpaqueServer" use="encoded"/>
#          </wsdl:input>
#          <wsdl:output name="getEngineInfoResponse">
#             <wsdlsoap:body encodingStyle="http://schemas.xmlsoap.org/soap/encoding/" namespace="http://localhost/OpaqueServer" use="encoded"/>
#          </wsdl:output>
#       </wsdl:operation>
# 
#       <wsdl:operation name="getQuestionMetadata">
#          <wsdlsoap:operation soapAction=""/>
#          <wsdl:input name="getQuestionMetadataRequest">
#             <wsdlsoap:body encodingStyle="http://schemas.xmlsoap.org/soap/encoding/" namespace="http://localhost/OpaqueServer" use="encoded"/>
#          </wsdl:input>
#          <wsdl:output name="getQuestionMetadataResponse">
#             <wsdlsoap:body encodingStyle="http://schemas.xmlsoap.org/soap/encoding/" namespace="http://localhost/OpaqueServer" use="encoded"/>
#          </wsdl:output>
#          <wsdl:fault name="OmException">
#             <wsdlsoap:fault encodingStyle="http://schemas.xmlsoap.org/soap/encoding/" name="OmException" namespace="http://localhost/OpaqueServer" use="encoded"/>
#          </wsdl:fault>
#       </wsdl:operation>
# 
#    </wsdl:binding>
# 
#    <wsdl:service name="OmServiceService">
#       <wsdl:port binding="impl:OmSoapBinding" name="Om">
#          <wsdlsoap:address location="http://localhost/opaqueserver_rpc"/>
#       </wsdl:port>
#    </wsdl:service>
# 
# </wsdl:definitions>
# 
# END_WSDL
# 
# 1;