<?xml version="1.0" encoding="UTF-8" ?>
<object class="Robot" serializationversion="2">
  <prologue>
    <saved-by-versions>
      <version>10.3.0.1</version>
    </saved-by-versions>
    <referenced-types>
      <type name="TaskQueue"/>
    </referenced-types>
    <referenced-snippets>
      <snippet name="Load_Example_Data"/>
    </referenced-snippets>
    <triggers/>
    <typed-variables>
      <typed-variable name="taskQueue" type-name="TaskQueue"/>
    </typed-variables>
    <global-variables/>
    <parameters/>
    <return-variables/>
    <store-in-database-variables>
      <variable name="taskQueue"/>
    </store-in-database-variables>
    <device-mappings/>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="0">taskQueue</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">TaskQueue</property>
        </property>
      </property>
    </object>
  </property>
  <property name="proxyServerConfiguration" class="ProxyServerConfiguration" serializationversion="0"/>
  <property name="httpClientType" class="HttpClientType">
    <property name="enum-name" class="String">WEBKIT</property>
  </property>
  <property name="ntlmAuthentication" class="NTLMAuthenticationType">
    <property name="enum-name" class="String">STANDARD</property>
  </property>
  <property name="usePre96DefaultWaiting" class="Boolean" id="1">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" idref="1"/>
  <property name="privateHTTPCacheEnabled" class="Boolean" id="2">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="executionMode" class="ExecutionMode">
    <property name="enum-name" class="String">DIRECT</property>
  </property>
  <property name="avoidExternalReExecution" idref="1"/>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="3"/>
    <steps class="ArrayList">
      <object class="Transition" serializationversion="3" id="4">
        <property name="name" class="String">Help</property>
        <property name="stepAction" class="CreatePage2">
          <property name="contents" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
            <property name="value" class="String">&lt;h1&gt;Add Tasks to Queue&lt;/h1&gt;
&lt;p&gt;This robot is adding new tasks to a queue category.&lt;/p&gt;
&lt;p&gt;Use this example as a template for your own implementation. Add task robots could be scheduled or used as Kapplet or Webservice, depending on your requirements.&lt;/p&gt;
&lt;p&gt;Configure loading of example data.&lt;/p&gt;
&lt;table style="width: 612.6px; height: 89px;" border="1"&gt;
&lt;tbody&gt;
&lt;tr&gt;
&lt;td style="width: 59px;"&gt;Variable&lt;/td&gt;
&lt;td style="width: 542.6px;"&gt;Description&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style="width: 59px;"&gt;folder&lt;/td&gt;
&lt;td style="width: 542.6px;"&gt;Folder of example files (created with generateExampleFiles.robot).&lt;/td&gt;
&lt;/tr&gt;
&lt;/tbody&gt;
&lt;/table&gt;
&lt;p&gt;&amp;nbsp;Configuration needed for all "add tasks" robots&lt;/p&gt;
&lt;table style="width: 612.6px; height: 89px;" border="1"&gt;
&lt;tbody&gt;
&lt;tr&gt;
&lt;td style="width: 59px;"&gt;Variable&lt;/td&gt;
&lt;td style="width: 542.6px;"&gt;Description&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style="width: 59px;"&gt;taskQueue.Robot&lt;/td&gt;
&lt;td style="width: 542.6px;"&gt;Target Robot which will execute the task. Needs to match a TaskConfig entry.&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style="width: 59px;"&gt;taskQueue.Reference&lt;/td&gt;
&lt;td style="width: 542.6px;"&gt;Make a reference that identifies the data source. This reference is used in log entries and should help to track progress. This reference should be a unique identifier.&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style="width: 59px;"&gt;taskQueue.ID&lt;/td&gt;
&lt;td style="width: 542.6px;"&gt;The value for taskQueue.ID together with taskQueue.Robot constitues the database keys. In the example robot the database key values of the PurchaseOrder.type are used to calculate the ID. This ensures that every purchase order is only added once per robot task configuration!&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style="width: 59px;"&gt;taskQueue.Status&lt;/td&gt;
&lt;td style="width: 542.6px;"&gt;You can set the status to "delay" to postpone the execution of the task for a duration configured in taskConfig.Delay.&amp;nbsp;Default status of an added task is "new".&amp;nbsp;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style="width: 59px;"&gt;taskQueue.Priority&lt;/td&gt;
&lt;td style="width: 542.6px;"&gt;Allows to configure a priority of a task.&amp;nbsp;Lower value = higher priority.&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style="width: 59px;"&gt;taskQueue.Created&lt;/td&gt;
&lt;td style="width: 542.6px;"&gt;Allways assign current date-time.&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style="width: 59px;"&gt;taskQueue.Data&lt;/td&gt;
&lt;td style="width: 542.6px;"&gt;XML document holding the data that the process task robot will pick up. In the example robot a PurchaseOrderXML is used. It is easy to assemble such an XML out of types. See the Load Example Data snippet.&lt;/td&gt;
&lt;/tr&gt;
&lt;/tbody&gt;
&lt;/table&gt;
&lt;p&gt;Do not change variables not listed here.&lt;/p&gt;</property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
            <property name="executeJavaScript" class="Boolean">false</property>
            <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">executeJavaScript</element>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">Created with https://html-online.com/editor/ </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="5">
        <property name="name" class="String">CLICK HERE FIRST</property>
        <property name="stepAction" class="DoNothing"/>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">To show the help text inside Kapow browser</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="6">
        <property name="name" class="String">Assign Folder</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">C:\Users\Robert.Birkenheuer\Documents\My Robots\Queued Processing\Example Data</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">folder</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">Folder location of exampe files (created by generateExampleFiles.robot).</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="7">
        <property name="name" class="String">Assign Target Robot</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">02_processTaskNotepad</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">taskQueue.Robot</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders" id="8"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">This will be the name of the robot responsible to execute this kind of tasks.</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String" id="9">name</element>
        </property>
      </object>
      <object class="SnippetStep" id="10">
        <name class="String">Load Example Data</name>
        <snippetName class="String">Load_Example_Data</snippetName>
        <snippetStepComment>
          <null/>
        </snippetStepComment>
      </object>
      <object class="Transition" serializationversion="3" id="11">
        <property name="name" class="String">Assign Reference</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="Expression" serializationversion="1">
            <property name="text" class="String">po.CustomerNumber + "-" + po.PurchaseOrderNumber</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">taskQueue.Reference</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders" id="12"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">Make a reference that identifies the data source. This reference is used in log entries and should help to track progress. This reference should be a unique identifier.</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="13">
        <property name="name" class="String">Calculate Key</property>
        <property name="stepAction" class="CalculateKey" serializationversion="1">
          <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
            <property name="name" class="String">po</property>
          </property>
          <property name="keyOutput" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">taskQueue.ID</property>
          </property>
        </property>
        <property name="elementFinders" idref="12"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">Key will be created out ot the attributes from PurchaseOrder type which are marked as "Part of Database Key".</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="14">
        <property name="name" class="String">Assign Random Priority</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="EvaluateExpression" serializationversion="0">
                <property name="expression" class="String">random()</property>
              </element>
              <element class="Extract2DataConverter">
                <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                  <property name="value" class="String">0\.(\d).*</property>
                </property>
              </element>
              <element class="EvaluateExpression" serializationversion="0">
                <property name="expression" class="String">INPUT == 0 ? 1 : INPUT </property>
              </element>
            </property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">taskQueue.Priority</property>
          </property>
        </property>
        <property name="elementFinders" idref="8"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">For test purpose only</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="9"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="15">
        <property name="name" class="String">Assign Created</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="Expression" serializationversion="1">
            <property name="text" class="String">now()</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">taskQueue.Created</property>
          </property>
        </property>
        <property name="elementFinders" idref="12"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="16">
        <property name="name" class="String">Assign XML Data</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">poXML</property>
            </property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">taskQueue.Data</property>
          </property>
        </property>
        <property name="elementFinders" idref="12"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="9"/>
        </property>
      </object>
      <object class="Try" id="17"/>
      <object class="Transition" serializationversion="3" id="18">
        <property name="name" class="String">Find in Database</property>
        <property name="stepAction" class="FindInDatabase" serializationversion="0">
          <property name="db" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String">queuedprocessing</property>
            </property>
          </property>
          <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
            <property name="name" idref="0"/>
          </property>
        </property>
        <property name="elementFinders" idref="12"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment" class="String">Test to avoid updating existing tasks with same keys.</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="19">
        <property name="name" class="String">Generate Error</property>
        <property name="stepAction" class="GenerateError">
          <property name="errorMessageExpression" class="Expression" serializationversion="1">
            <property name="text" class="String">"Reference already existis in TaskQueue: " + taskQueue.Reference</property>
          </property>
        </property>
        <property name="elementFinders" idref="12"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="End" id="20"/>
      <object class="Transition" serializationversion="3" id="21">
        <property name="name" class="String">Store in Database</property>
        <property name="stepAction" class="StoreInDatabase" serializationversion="0">
          <property name="db" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String">queuedprocessing</property>
            </property>
          </property>
          <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
            <property name="name" class="String">taskQueue</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="End" id="22"/>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="3"/>
        <to idref="4"/>
      </object>
      <object class="TransitionEdge">
        <from idref="4"/>
        <to idref="5"/>
      </object>
      <object class="TransitionEdge">
        <from idref="5"/>
        <to idref="6"/>
      </object>
      <object class="TransitionEdge">
        <from idref="6"/>
        <to idref="7"/>
      </object>
      <object class="TransitionEdge">
        <from idref="7"/>
        <to idref="10"/>
      </object>
      <object class="TransitionEdge">
        <from idref="10"/>
        <to idref="11"/>
      </object>
      <object class="TransitionEdge">
        <from idref="11"/>
        <to idref="13"/>
      </object>
      <object class="TransitionEdge">
        <from idref="13"/>
        <to idref="14"/>
      </object>
      <object class="TransitionEdge">
        <from idref="14"/>
        <to idref="15"/>
      </object>
      <object class="TransitionEdge">
        <from idref="15"/>
        <to idref="16"/>
      </object>
      <object class="TransitionEdge">
        <from idref="16"/>
        <to idref="17"/>
      </object>
      <object class="TransitionEdge">
        <from idref="17"/>
        <to idref="18"/>
      </object>
      <object class="TransitionEdge">
        <from idref="17"/>
        <to idref="21"/>
      </object>
      <object class="TransitionEdge">
        <from idref="18"/>
        <to idref="19"/>
      </object>
      <object class="TransitionEdge">
        <from idref="19"/>
        <to idref="20"/>
      </object>
      <object class="TransitionEdge">
        <from idref="21"/>
        <to idref="22"/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25"/>
</object>
