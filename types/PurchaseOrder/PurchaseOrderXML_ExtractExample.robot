<?xml version="1.0" encoding="UTF-8" ?>
<object class="Robot" serializationversion="2">
  <prologue>
    <saved-by-versions>
      <version>10.3.0.1</version>
    </saved-by-versions>
    <referenced-types>
      <type name="PurchaseOrder"/>
      <type name="Address"/>
      <type name="Item"/>
    </referenced-types>
    <referenced-snippets/>
    <triggers/>
    <typed-variables>
      <typed-variable name="purchaseOrder" type-name="PurchaseOrder"/>
      <typed-variable name="address" type-name="Address"/>
      <typed-variable name="Item" type-name="Item"/>
    </typed-variables>
    <global-variables/>
    <parameters/>
    <return-variables/>
    <store-in-database-variables/>
    <device-mappings/>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">purchaseOrder</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">PurchaseOrder</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">address</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">Address</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">Item</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">Item</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="0">poXMLExampleInput</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference">
          <property name="simpleTypeId" class="Integer">151</property>
        </property>
        <property name="assignments" class="AttributeAssignments">
          <property name="value" class="AttributeAssignment">
            <property name="attributeValue" class="String">&lt;?xml version="1.0" encoding="UTF-8" standalone="no"?&gt;&#13;
&lt;!-- 
This is an example file of a PurchaseOrder XML that is created in the addTasks robot.
Set Tag and Insert Content steps are persiting the types PurchaseOrder, Address and Item as XML.
--&gt;&lt;PurchaseOrder&gt;&#13;
  &lt;PurchaseOrderNumber&gt;PO-01000&lt;/PurchaseOrderNumber&gt;&#13;
  &lt;PurchaseOrderReference/&gt;&#13;
  &lt;CustomerNumber&gt;485148755&lt;/CustomerNumber&gt;&#13;
  &lt;OrderDate&gt;2018-03-08 00:00:00.0&lt;/OrderDate&gt;&#13;
  &lt;ShipDate/&gt;&#13;
  &lt;DeliveryNotes/&gt;&#13;
  &lt;ShippingPrice&gt;16&lt;/ShippingPrice&gt;&#13;
  &lt;Tax&gt;222.77&lt;/Tax&gt;&#13;
  &lt;Currency&gt;GBP&lt;/Currency&gt;&#13;
  &lt;Address type="Customer"&gt;&#13;
    &lt;Name&gt;T1 Enterprises&lt;/Name&gt;&#13;
    &lt;Name1&gt;Department Back Office&lt;/Name1&gt;&#13;
    &lt;Street&gt;Somewhere Ave. 4&lt;/Street&gt;&#13;
    &lt;Postalcode&gt;74555&lt;/Postalcode&gt;&#13;
    &lt;City&gt;Sun City&lt;/City&gt;&#13;
    &lt;Country&gt;UK&lt;/Country&gt;&#13;
  &lt;/Address&gt;&#13;
  &lt;items&gt;&#13;
    &lt;Item count="1"&gt;&#13;
      &lt;PartNumber/&gt;&#13;
      &lt;ProductName&gt;Makita DGA452Z 4�" Angle Grinder 18V&lt;/ProductName&gt;&#13;
      &lt;Quantity&gt;1&lt;/Quantity&gt;&#13;
      &lt;UOM&gt;Each&lt;/UOM&gt;&#13;
      &lt;Price&gt;129.99&lt;/Price&gt;&#13;
      &lt;Currency/&gt;&#13;
      &lt;ShipDate/&gt;&#13;
      &lt;Comment/&gt;&#13;
    &lt;/Item&gt;&#13;
  &lt;/items&gt;&#13;
&lt;/PurchaseOrder&gt;</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" class="java.lang.Class">kapow.robot.plugin.common.domain.XML2AttributeType</property>
          </property>
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
        <property name="name" class="String">Open Po XML Example Input</property>
        <property name="stepAction" class="OpenVariable">
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="0"/>
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
      <object class="Group" id="5">
        <name class="String">PurchaseOrder XML to Type</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="6"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="7">
            <property name="name" class="String">Set Named Tag for Map XML into purchaseOrder</property>
            <property name="stepAction" class="SetNamedTag" serializationversion="0"/>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.purchaseorder</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Group" id="8">
            <name class="String">Map XML into purchaseOrder</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="9"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="10">
                <property name="name" class="String">Extract &lt;PurchaseOrderNumber&gt;</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">purchaseOrder.PurchaseOrderNumber</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="tagRelation" class="InTagRelation" serializationversion="1">
                      <property name="tagName" class="ElementName" id="11">
                        <property name="name" class="String">1</property>
                      </property>
                    </property>
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">PurchaseOrder.PurchaseOrderNumber[0]</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String" id="12">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="13">
                <property name="name" class="String">Extract &lt;PurchaseOrderReference&gt;</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">purchaseOrder.PurchaseOrderReference</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="tagRelation" class="InTagRelation" serializationversion="1">
                      <property name="tagName" idref="11"/>
                    </property>
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">PurchaseOrder.PurchaseOrderReference[0]</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element idref="12"/>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="14">
                <property name="name" class="String">Extract &lt;CustomerNumber&gt;</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">purchaseOrder.CustomerNumber</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="tagRelation" class="InTagRelation" serializationversion="1">
                      <property name="tagName" idref="11"/>
                    </property>
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">PurchaseOrder.CustomerNumber[0]</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element idref="12"/>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="15">
                <property name="name" class="String">Extract &lt;OrderDate&gt;</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">purchaseOrder.OrderDate</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="tagRelation" class="InTagRelation" serializationversion="1">
                      <property name="tagName" idref="11"/>
                    </property>
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">PurchaseOrder.OrderDate[0]</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element idref="12"/>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="16">
                <property name="name" class="String">Extract &lt;ShipDate&gt;</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">purchaseOrder.ShipDate</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="tagRelation" class="InTagRelation" serializationversion="1">
                      <property name="tagName" idref="11"/>
                    </property>
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">PurchaseOrder.ShipDate[0]</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element idref="12"/>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="17">
                <property name="name" class="String">Extract &lt;DeliveryNotes&gt;</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">purchaseOrder.DeliveryNotes</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="tagRelation" class="InTagRelation" serializationversion="1">
                      <property name="tagName" idref="11"/>
                    </property>
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">PurchaseOrder.DeliveryNotes[0]</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element idref="12"/>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="18">
                <property name="name" class="String">Extract &lt;ShippingPrice&gt;</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">purchaseOrder.ShippingPrice</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="tagRelation" class="InTagRelation" serializationversion="1">
                      <property name="tagName" idref="11"/>
                    </property>
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">PurchaseOrder.ShippingPrice[0]</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element idref="12"/>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="19">
                <property name="name" class="String">Extract &lt;Tax&gt;</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">purchaseOrder.Tax</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="tagRelation" class="InTagRelation" serializationversion="1">
                      <property name="tagName" idref="11"/>
                    </property>
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">PurchaseOrder.Tax[0]</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element idref="12"/>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="20">
                <property name="name" class="String">Extract &lt;Currency&gt;</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">purchaseOrder.Currency</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="tagRelation" class="InTagRelation" serializationversion="1">
                      <property name="tagName" idref="11"/>
                    </property>
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">PurchaseOrder.Currency[0]</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element idref="12"/>
                </property>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="21"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="9"/>
                <to idref="10"/>
              </object>
              <object class="TransitionEdge">
                <from idref="10"/>
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
                <from idref="18"/>
                <to idref="19"/>
              </object>
              <object class="TransitionEdge">
                <from idref="19"/>
                <to idref="20"/>
              </object>
              <object class="TransitionEdge">
                <from idref="20"/>
                <to idref="21"/>
              </object>
            </edges>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="22"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="6"/>
            <to idref="7"/>
          </object>
          <object class="TransitionEdge">
            <from idref="7"/>
            <to idref="8"/>
          </object>
          <object class="TransitionEdge">
            <from idref="8"/>
            <to idref="22"/>
          </object>
        </edges>
      </object>
      <object class="Group" id="23">
        <name class="String">Address XML to Type</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="24"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="25">
            <property name="name" class="String">Set Named Tag for Map XML into address</property>
            <property name="stepAction" class="SetNamedTag" serializationversion="0"/>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.address</property>
                </property>
                <property name="attributeName" class="String">type</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">Customer</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Group" id="26">
            <name class="String">Map XML into address</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="27"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="28">
                <property name="name" class="String">Extract type</property>
                <property name="stepAction" class="ExtractTagAttribute2" serializationversion="3">
                  <property name="tagAttr" class="String">type</property>
                  <property name="Name" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">address.Type</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="tagRelation" class="InTagRelation" serializationversion="1">
                      <property name="tagName" class="ElementName" id="29">
                        <property name="name" class="String">2</property>
                      </property>
                    </property>
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">Address</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String" id="30">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="31">
                <property name="name" class="String">Extract &lt;Name&gt;</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">address.Name</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="tagRelation" class="InTagRelation" serializationversion="1">
                      <property name="tagName" idref="29"/>
                    </property>
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">Address.Name[0]</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element idref="30"/>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="32">
                <property name="name" class="String">Extract &lt;Name1&gt;</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">address.Name1</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="tagRelation" class="InTagRelation" serializationversion="1">
                      <property name="tagName" idref="29"/>
                    </property>
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">Address.Name1[0]</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element idref="30"/>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="33">
                <property name="name" class="String">Extract &lt;Street&gt;</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">address.Street</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="tagRelation" class="InTagRelation" serializationversion="1">
                      <property name="tagName" idref="29"/>
                    </property>
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">Address.Street[0]</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element idref="30"/>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="34">
                <property name="name" class="String">Extract &lt;Postalcode&gt;</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">address.Postalcode</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="tagRelation" class="InTagRelation" serializationversion="1">
                      <property name="tagName" idref="29"/>
                    </property>
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">Address.Postalcode[0]</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element idref="30"/>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="35">
                <property name="name" class="String">Extract &lt;City&gt;</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">address.City</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="tagRelation" class="InTagRelation" serializationversion="1">
                      <property name="tagName" idref="29"/>
                    </property>
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">Address.City[0]</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element idref="30"/>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="36">
                <property name="name" class="String">Extract &lt;Country&gt;</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">address.Country</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="tagRelation" class="InTagRelation" serializationversion="1">
                      <property name="tagName" idref="29"/>
                    </property>
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">Address.Country[0]</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element idref="30"/>
                </property>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="37"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="27"/>
                <to idref="28"/>
              </object>
              <object class="TransitionEdge">
                <from idref="28"/>
                <to idref="31"/>
              </object>
              <object class="TransitionEdge">
                <from idref="31"/>
                <to idref="32"/>
              </object>
              <object class="TransitionEdge">
                <from idref="32"/>
                <to idref="33"/>
              </object>
              <object class="TransitionEdge">
                <from idref="33"/>
                <to idref="34"/>
              </object>
              <object class="TransitionEdge">
                <from idref="34"/>
                <to idref="35"/>
              </object>
              <object class="TransitionEdge">
                <from idref="35"/>
                <to idref="36"/>
              </object>
              <object class="TransitionEdge">
                <from idref="36"/>
                <to idref="37"/>
              </object>
            </edges>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="38"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="24"/>
            <to idref="25"/>
          </object>
          <object class="TransitionEdge">
            <from idref="25"/>
            <to idref="26"/>
          </object>
          <object class="TransitionEdge">
            <from idref="26"/>
            <to idref="38"/>
          </object>
        </edges>
      </object>
      <object class="Transition" serializationversion="3" id="39">
        <property name="name" class="String">Set Named Tag for Map XML into Item</property>
        <property name="stepAction" class="SetNamedTag" serializationversion="0"/>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="tagRelation" class="AggregateTagRelation">
              <property name="relations" class="TagRelationList">
                <object class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </object>
                <object class="AfterTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">2</property>
                  </property>
                </object>
              </property>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.item</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Group" id="40">
        <name class="String">Map XML into Item</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="41"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="42">
            <property name="name" class="String">Extract &lt;PartNumber&gt;</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Item.PartNumber</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName" id="43">
                    <property name="name" class="String">3</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">Item.PartNumber[0]</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String" id="44">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="45">
            <property name="name" class="String">Extract &lt;ProductName&gt;</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Item.ProductName</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" idref="43"/>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">Item.ProductName[0]</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element idref="44"/>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="46">
            <property name="name" class="String">Extract &lt;Quantity&gt;</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Item.Quantity</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" idref="43"/>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">Item.Quantity[0]</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element idref="44"/>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="47">
            <property name="name" class="String">Extract &lt;UOM&gt;</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Item.UOM</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" idref="43"/>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">Item.UOM[0]</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element idref="44"/>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="48">
            <property name="name" class="String">Extract &lt;Price&gt;</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Item.Price</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" idref="43"/>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">Item.Price[0]</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element idref="44"/>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="49">
            <property name="name" class="String">Extract &lt;Currency&gt;</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Item.Currency</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" idref="43"/>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">Item.Currency[0]</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element idref="44"/>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="50">
            <property name="name" class="String">Extract &lt;ShipDate&gt;</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Item.ShipDate</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" idref="43"/>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">Item.ShipDate[0]</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element idref="44"/>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="51">
            <property name="name" class="String">Extract &lt;Comment&gt;</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Item.Comment</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" idref="43"/>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">Item.Comment[0]</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element idref="44"/>
            </property>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="52"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="41"/>
            <to idref="42"/>
          </object>
          <object class="TransitionEdge">
            <from idref="42"/>
            <to idref="45"/>
          </object>
          <object class="TransitionEdge">
            <from idref="45"/>
            <to idref="46"/>
          </object>
          <object class="TransitionEdge">
            <from idref="46"/>
            <to idref="47"/>
          </object>
          <object class="TransitionEdge">
            <from idref="47"/>
            <to idref="48"/>
          </object>
          <object class="TransitionEdge">
            <from idref="48"/>
            <to idref="49"/>
          </object>
          <object class="TransitionEdge">
            <from idref="49"/>
            <to idref="50"/>
          </object>
          <object class="TransitionEdge">
            <from idref="50"/>
            <to idref="51"/>
          </object>
          <object class="TransitionEdge">
            <from idref="51"/>
            <to idref="52"/>
          </object>
        </edges>
      </object>
      <object class="End" id="53"/>
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
        <to idref="23"/>
      </object>
      <object class="TransitionEdge">
        <from idref="23"/>
        <to idref="39"/>
      </object>
      <object class="TransitionEdge">
        <from idref="39"/>
        <to idref="40"/>
      </object>
      <object class="TransitionEdge">
        <from idref="40"/>
        <to idref="53"/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25"/>
</object>
