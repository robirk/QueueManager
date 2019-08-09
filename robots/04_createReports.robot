<?xml version="1.0" encoding="UTF-8" ?>
<object class="Robot" serializationversion="2">
  <prologue>
    <saved-by-versions>
      <version>10.3.0.1</version>
    </saved-by-versions>
    <referenced-types>
      <type name="InputForReport"/>
      <type name="TaskReport"/>
    </referenced-types>
    <referenced-snippets/>
    <triggers/>
    <typed-variables>
      <typed-variable name="report" type-name="InputForReport"/>
      <typed-variable name="taskReport" type-name="TaskReport"/>
    </typed-variables>
    <global-variables/>
    <parameters>
      <parameter name="report" type-name="InputForReport"/>
    </parameters>
    <return-variables>
      <variable name="taskReport"/>
    </return-variables>
    <store-in-database-variables/>
    <device-mappings/>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">report</property>
      <property name="parameter" class="Boolean">true</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">InputForReport</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="0">sqlquery</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference">
          <property name="simpleTypeId" class="Integer">13</property>
        </property>
        <property name="assignments" class="AttributeAssignments">
          <property name="value" class="AttributeAssignment">
            <property name="attributeValue" class="String">SELECT 'Overdue' as ReportStatus, tc.TaskName, tc.Robot, tc.Schedule, tq.ID, tq.Reference, tq.Status, tq.Retry, tq.Priority, tq.Created, tq.Started, tq.Ended
FROM viewoverduetasks tq LEFT JOIN taskconfig tc ON tc.Robot = tq.Robot
WHERE Created &gt;= %START% AND Created &lt;= %END%
UNION
SELECT 'Error' as ReportStatus, tc.TaskName, tc.Robot, tc.Schedule, tq.ID, tq.Reference, tq.Status, tq.Retry, tq.Priority, tq.Created, tq.Started, tq.Ended
FROM taskqueue tq LEFT JOIN taskconfig tc ON tc.Robot = tq.Robot
WHERE Created &gt;= %START% AND Created &lt;= %END%
AND ((tq.Status = 'failed' and tq.Retry &gt;= tc.MaxRetrys)
OR (tq.Status = 'abandoned')
OR (tq.Status = 'error'))
UNION
SELECT 'Done' as ReportStatus, tc.TaskName, tc.Robot, tc.Schedule, tq.ID, tq.Reference, tq.Status, tq.Retry, tq.Priority, tq.Created, tq.Started, tq.Ended
FROM taskqueue tq LEFT JOIN taskconfig tc ON tc.Robot = tq.Robot
WHERE (Status = 'successful')
AND Created &gt;= %START% AND Created &lt;= %END%
ORDER BY Created</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" class="java.lang.Class">kapow.robot.plugin.common.domain.TextAttributeType</property>
          </property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="1">taskReport</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">TaskReport</property>
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
  <property name="usePre96DefaultWaiting" class="Boolean" id="2">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" idref="2"/>
  <property name="privateHTTPCacheEnabled" class="Boolean" id="3">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="executionMode" class="ExecutionMode">
    <property name="enum-name" class="String">DIRECT</property>
  </property>
  <property name="avoidExternalReExecution" idref="2"/>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="4"/>
    <steps class="ArrayList">
      <object class="Transition" serializationversion="3" id="5">
        <property name="name" class="String">Help</property>
        <property name="stepAction" class="CreatePage2">
          <property name="contents" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
            <property name="value" class="String">&lt;h1&gt;Create Reports&lt;/h1&gt;
&lt;p&gt;This robot will output a report of completed, overdue or error tasks. It will not return tasks currently in progress.&lt;/p&gt;
&lt;p&gt;The robot is provided as Kapplet &lt;strong&gt;Task Queue Report&lt;/strong&gt;.&lt;/p&gt;
&lt;p&gt;An Excel file can be downloaded via the Kapplet.&lt;/p&gt;
&lt;p&gt;You can also use the Management Console Data tab to filter and search for tasks in the TaskQueue database table.&lt;/p&gt;
&lt;p&gt;Input:&lt;/p&gt;
&lt;table style="width: 612.6px; height: 89px;" border="1"&gt;
&lt;tbody&gt;
&lt;tr&gt;
&lt;td style="width: 59px;"&gt;Variable&lt;/td&gt;
&lt;td style="width: 542.6px;"&gt;Description&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style="width: 59px;"&gt;Start&lt;/td&gt;
&lt;td style="width: 542.6px;"&gt;
&lt;p&gt;Start date of data contained in the report (using created field)&lt;/p&gt;
&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style="width: 59px;"&gt;End&lt;/td&gt;
&lt;td style="width: 542.6px;"&gt;End date of data contained in the report (using created field)&lt;/td&gt;
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
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="6">
        <property name="name" class="String">CLICK HERE FIRST</property>
        <property name="stepAction" class="DoNothing"/>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">To show the help text inside Kapow browser</property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Try" id="7"/>
      <object class="Transition" serializationversion="3" id="8">
        <property name="name" class="String">Test Start</property>
        <property name="stepAction" class="TestValue" serializationversion="0">
          <property name="condition" class="Expression" serializationversion="1">
            <property name="text" class="String">length(report.Start) &gt; 0</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Try" id="9"/>
      <object class="Transition" serializationversion="3" id="10">
        <property name="name" class="String">Test End</property>
        <property name="stepAction" class="TestValue" serializationversion="0">
          <property name="condition" class="Expression" serializationversion="1">
            <property name="text" class="String">length(report.End) &gt; 0</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="11">
        <property name="name" class="String">Assign Sqlquery</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="GetVariable" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" idref="0"/>
                </property>
              </element>
              <element class="AdvancedExtract2">
                <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                  <property name="value" class="String">(.*?)(%START%)(.*)</property>
                </property>
                <property name="outputExpression" class="String">$1 + "'" + report.Start + "' " + $3</property>
              </element>
              <element class="AdvancedExtract2">
                <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                  <property name="value" class="String">(.*?)(%START%)(.*)</property>
                </property>
                <property name="outputExpression" class="String">$1 + "'" + report.Start + "' " + $3</property>
              </element>
              <element class="AdvancedExtract2">
                <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                  <property name="value" class="String">(.*?)(%START%)(.*)</property>
                </property>
                <property name="outputExpression" class="String">$1 + "'" + report.Start + "' " + $3</property>
              </element>
              <element class="AdvancedExtract2">
                <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                  <property name="value" class="String">(.*?)(%END%)(.*)</property>
                </property>
                <property name="outputExpression" class="String">$1 + "'" + report.End + "' " + $3</property>
              </element>
              <element class="AdvancedExtract2">
                <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                  <property name="value" class="String">(.*?)(%END%)(.*)</property>
                </property>
                <property name="outputExpression" class="String">$1 + "'" + report.End + "' " + $3</property>
              </element>
              <element class="AdvancedExtract2">
                <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                  <property name="value" class="String">(.*?)(%END%)(.*)</property>
                </property>
                <property name="outputExpression" class="String">$1 + "'" + report.End + "' " + $3</property>
              </element>
            </property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="0"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders" id="12"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="13">
        <property name="name" class="String">Query Database</property>
        <property name="stepAction" class="QueryDatabase2" serializationversion="1">
          <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String">queuedprocessing</property>
            </property>
          </property>
          <property name="sql" class="String">sqlquery</property>
          <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">TaskName</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">taskReport.TaskName</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">ReportStatus</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">taskReport.ReportStatus</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">Schedule</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">taskReport.Schedule</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">ID</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">taskReport.ID</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">Reference</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">taskReport.Reference</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">Status</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">taskReport.Status</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">Priority</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">taskReport.Priority</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">Robot</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">taskReport.Robot</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">Created</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">taskReport.Created</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">Started</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">taskReport.Started</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">Ended</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">taskReport.Ended</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">Retry</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">taskReport.Retry</property>
              </property>
            </object>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="14">
        <property name="name" class="String">Return Value</property>
        <property name="stepAction" class="ReturnVariable" serializationversion="1">
          <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
            <property name="name" idref="1"/>
          </property>
        </property>
        <property name="elementFinders" idref="12"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="End" id="15"/>
      <object class="Transition" serializationversion="3" id="16">
        <property name="name" class="String">Assign End</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="EvaluateExpression" serializationversion="0">
                <property name="expression" class="String">now()</property>
              </element>
            </property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">report.End</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="17">
        <property name="name" class="String">Assign Start</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="EvaluateExpression" serializationversion="0">
                <property name="expression" class="String">now()</property>
              </element>
              <element class="ModifyDate">
                <property name="amount" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">-1</property>
                </property>
              </element>
            </property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">report.Start</property>
          </property>
        </property>
        <property name="elementFinders" idref="12"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
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
        <to idref="8"/>
      </object>
      <object class="TransitionEdge">
        <from idref="7"/>
        <to idref="17"/>
      </object>
      <object class="TransitionEdge">
        <from idref="8"/>
        <to idref="9"/>
      </object>
      <object class="TransitionEdge">
        <from idref="9"/>
        <to idref="10"/>
      </object>
      <object class="TransitionEdge">
        <from idref="9"/>
        <to idref="16"/>
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
        <from idref="16"/>
        <to idref="11"/>
      </object>
      <object class="TransitionEdge">
        <from idref="17"/>
        <to idref="9"/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25"/>
</object>
