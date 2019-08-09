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
      <snippet name="queryMySQL"/>
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
    <device-mappings>
      <mapping name="desktop"/>
    </device-mappings>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="0">folder</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference" id="1">
          <property name="simpleTypeId" class="Integer">12</property>
        </property>
        <property name="assignments" class="AttributeAssignments">
          <property name="value" class="AttributeAssignment">
            <property name="attributeValue" class="String">c:\temp</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" class="java.lang.Class">kapow.robot.plugin.common.domain.StringAttributeType</property>
          </property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="2">da_error</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference" id="3">
          <property name="simpleTypeId" class="Integer">13</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="4">reference</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" idref="1"/>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="5">xmltext</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" idref="3"/>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">taskQueue</property>
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
  <property name="usePre96DefaultWaiting" class="Boolean" id="6">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" idref="6"/>
  <property name="privateHTTPCacheEnabled" class="Boolean" id="7">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="executionMode" class="ExecutionMode">
    <property name="enum-name" class="String">FULL</property>
  </property>
  <property name="avoidExternalReExecution" idref="6"/>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="8"/>
    <steps class="ArrayList">
      <object class="Transition" serializationversion="3" id="9">
        <property name="name" class="String">Help</property>
        <property name="stepAction" class="CreatePage2">
          <property name="contents" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
            <property name="value" class="String">&lt;p&gt;&amp;nbsp;&lt;/p&gt;
&lt;h1&gt;Process Tasks&lt;/h1&gt;
&lt;p&gt;This robot is processing new tasks from a queue.&amp;nbsp;&lt;/p&gt;
&lt;p&gt;The robot runs in a Schedule that is assosiated with the robot in the task configuration. The implementation is designed for concurrent processing. A schedule can therefore contain this robot multiple times. The number of robots in a schedule and the intervall of execution&amp;nbsp; are dependend on the resources and time it needs to process a task.&lt;/p&gt;
&lt;p&gt;Use this example as a template for your own implementation.&amp;nbsp;&lt;/p&gt;
&lt;p&gt;Use either the queryMySQL or queryMicrosoftSQL snipped depending on the database used.&lt;/p&gt;
&lt;p&gt;Configuration needed for all "process tasks" robots.&lt;/p&gt;
&lt;table style="width: 672.8px; height: 409px;" border="1"&gt;
&lt;tbody&gt;
&lt;tr&gt;
&lt;td style="width: 148px;"&gt;Variable&lt;/td&gt;
&lt;td style="width: 511.8px;"&gt;Description&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style="width: 148px;"&gt;taskQueue.Robot&lt;/td&gt;
&lt;td style="width: 511.8px;"&gt;
&lt;p&gt;Default value is the current robot name (e.g. "02_ProcessTask). Needs to match the robot name provided in taskConfig.Robot&lt;/p&gt;
&lt;p&gt;Robot Name only: processTask&lt;br /&gt;Robot Name including folder: folder/processTask&lt;br /&gt;Robot Name including folder and project: project/folder/processTask&lt;/p&gt;
&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style="width: 148px;"&gt;taskQueue.Status&lt;/td&gt;
&lt;td style="width: 511.8px;"&gt;
&lt;p&gt;successful = Task compleded&lt;/p&gt;
&lt;p&gt;failed = Task not compleded, applications or website might not be available. In this case the task will be processed again until the MaxRetrys limit is reached.&lt;/p&gt;
&lt;p&gt;error = Logical or validation error. No more retrys.&lt;/p&gt;
&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style="width: 148px;"&gt;taskQueue.Ended&lt;/td&gt;
&lt;td style="width: 511.8px;"&gt;Allways assign current date-time.&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style="width: 148px;"&gt;taskQueue.Exception&lt;/td&gt;
&lt;td style="width: 511.8px;"&gt;Can optionaly have details about errors.&lt;/td&gt;
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
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="10">
        <property name="name" class="String">CLICK HERE FIRST</property>
        <property name="stepAction" class="DoNothing"/>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">To show the help text inside Kapow browser</property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="11">
        <property name="name" class="String">Assign Robot Name</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="Expression" serializationversion="1">
            <property name="text" class="String">Robot.name</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">taskQueue.Robot</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">Default value is the current robot name (e.g. "02_ProcessTask). Needs to match the robot name provided in taskConfig.Robot</property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="SnippetStep" id="12">
        <name>
          <null/>
        </name>
        <snippetName class="String">queryMySQL</snippetName>
        <snippetStepComment>
          <null/>
        </snippetStepComment>
      </object>
      <object class="Transition" serializationversion="3" id="13">
        <property name="name" class="String">Open Data</property>
        <property name="stepAction" class="OpenVariable">
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">taskQueue.Data</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="14">
        <property name="name" class="String">Assign Xmltext</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">taskQueue.Data</property>
            </property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="5"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders" id="15"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="16">
        <property name="name" class="String">Assign Reference</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">taskQueue.Reference</property>
            </property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="4"/>
          </property>
        </property>
        <property name="elementFinders" idref="15"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Try" id="17"/>
      <object class="Transition" serializationversion="3" id="18">
        <property name="name" class="String">Device Automation</property>
        <property name="stepAction" class="CallRL2Robot">
          <property name="inputValueExpression" class="kapow.robot.plugin.common.stepaction.rl2.InputValueBeanList">
            <object class="kapow.robot.plugin.common.stepaction.rl2.InputValue">
              <property name="inputValueExpression" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" idref="4"/>
                </property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.stepaction.rl2.InputValue">
              <property name="inputValueExpression" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" idref="5"/>
                </property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.stepaction.rl2.InputValue">
              <property name="inputValueExpression" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" idref="0"/>
                </property>
              </property>
            </object>
          </property>
          <property name="outputVariables" class="kapow.robot.plugin.common.stepaction.rl2.OutputVariableBeanList">
            <object class="kapow.robot.plugin.common.stepaction.rl2.OutputVariable">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" idref="2"/>
              </property>
            </object>
          </property>
          <property name="remoteHubReferences" class="kapow.robot.plugin.common.stepaction.rl2.RemoteHubReferences">
            <object class="kapow.robot.plugin.common.stepaction.rl2.RemoteHubReference" serializationversion="1">
              <property name="reference" class="kapow.robot.plugin.common.stepaction.rl2.RemoteHubReference$StaticReference">
                <property name="deviceName" class="String">desktop</property>
              </property>
            </object>
          </property>
          <property name="robot2Bean" class="kapow.robot.plugin.common.stepaction.rl2.Robot2Bean">{
  "meta":{
    "className":"Robot",
    "version":2
  },
  "gizmo":{
    "outputTypes": [{
      "meta":{
        "className":"TypeUse",
        "version":0
      },
      "gizmo":{
        "id": { "string": "Text" }
      }
    }],
    "parameters": [{
      "meta":{
        "className":"VariableDef",
        "version":0
      },
      "gizmo":{
        "id": { "string": "reference" },
        "typ": {
          "meta":{
            "className":"TypeUse",
            "version":0
          },
          "gizmo":{
            "id": { "string": "Text" }
          }
        }
      }
    },
    {
      "meta":{
        "className":"VariableDef",
        "version":0
      },
      "gizmo":{
        "id": { "string": "xmltext" },
        "typ": {
          "meta":{
            "className":"TypeUse",
            "version":0
          },
          "gizmo":{
            "id": { "string": "Text" }
          }
        }
      }
    },
    {
      "meta":{
        "className":"VariableDef",
        "version":0
      },
      "gizmo":{
        "id": { "string": "folder" },
        "typ": {
          "meta":{
            "className":"TypeUse",
            "version":0
          },
          "gizmo":{
            "id": { "string": "Text" }
          }
        }
      }
    }],
    "treeModes": [],
    "types": [],
    "variables": [{
      "meta":{
        "className":"VariableDef",
        "version":0
      },
      "gizmo":{
        "id": { "string": "errormessage" },
        "typ": {
          "meta":{
            "className":"TypeUse",
            "version":0
          },
          "gizmo":{
            "id": { "string": "Text" }
          }
        }
      }
    }],
    "block": {
      "meta":{
        "className":"Block",
        "version":1
      },
      "gizmo":{
        "steps": [{
          "meta":{
            "className":"OpenStep",
            "version":1
          },
          "gizmo":{
            "name": {
              "meta":{
                "className":"StepName",
                "version":0
              },
              "gizmo":{
                "customName": { "string": "" }
              }
            },
            "finder": {
              "meta":{
                "className":"DeviceFinderWithName",
                "version":2
              },
              "gizmo":{
                "name": {
                  "meta":{
                    "className":"FinderName",
                    "version":0
                  },
                  "gizmo":{
                    "id": { "string": "" }
                  }
                },
                "finder": {
                  "meta":{
                    "className":"DeviceReference",
                    "version":0
                  },
                  "gizmo":{
                    "reference": {
                      "meta":{
                        "className":"NamedFinderReference",
                        "version":0
                      },
                      "gizmo":{
                        "id": { "string": "desktop" }
                      }
                    }
                  }
                }
              }
            },
            "uri": {
              "meta":{
                "className":"Expression",
                "version":0
              },
              "gizmo":{
                "text": { "string": "notepad.exe" }
              }
            }
          }
        },
        {
          "meta":{
            "className":"GuardedChoiceStep",
            "version":0
          },
          "gizmo":{
            "name": {
              "meta":{
                "className":"StepName",
                "version":0
              },
              "gizmo":{
                "customName": { "string": "Guard Notepad Open" }
              }
            },
            "branches": [{
              "meta":{
                "className":"GuardAndBlock",
                "version":3
              },
              "gizmo":{
                "guard": {
                  "meta":{
                    "className":"LocationFoundGuard",
                    "version":0
                  },
                  "gizmo":{
                    "finder": {
                      "meta":{
                        "className":"ComponentFinderWithName",
                        "version":8
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"FinderName",
                            "version":0
                          },
                          "gizmo":{
                            "id": { "string": "" }
                          }
                        },
                        "finder": {
                          "meta":{
                            "className":"ComponentDescriptor",
                            "version":0
                          },
                          "gizmo":{
                            "applicationFinder": {
                              "meta":{
                                "className":"ApplicationDescriptor",
                                "version":0
                              },
                              "gizmo":{
                                "deviceFinder": {
                                  "meta":{
                                    "className":"DeviceReference",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "reference": {
                                      "meta":{
                                        "className":"NamedFinderReference",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "id": { "string": "desktop" }
                                      }
                                    }
                                  }
                                },
                                "applicationSelector": {
                                  "meta":{
                                    "className":"Expression",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "text": { "string": "notepad.exe" }
                                  }
                                }
                              }
                            },
                            "componentSelector": {
                              "meta":{
                                "className":"Expression",
                                "version":0
                              },
                              "gizmo":{
                                "text": { "string": "window" }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                },
                "block": {
                  "meta":{
                    "className":"Block",
                    "version":1
                  },
                  "gizmo":{
                    "steps": []
                  }
                }
              }
            },
            {
              "meta":{
                "className":"GuardAndBlock",
                "version":3
              },
              "gizmo":{
                "guard": {
                  "meta":{
                    "className":"TimeOutGuard",
                    "version":0
                  },
                  "gizmo":{
                    "seconds": {
                      "meta":{
                        "className":"Expression",
                        "version":0
                      },
                      "gizmo":{
                        "text": { "string": "60" }
                      }
                    }
                  }
                },
                "block": {
                  "meta":{
                    "className":"Block",
                    "version":1
                  },
                  "gizmo":{
                    "steps": [{
                      "meta":{
                        "className":"ThrowStep",
                        "version":0
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"StepName",
                            "version":0
                          },
                          "gizmo":{
                            "customName": { "string": "" }
                          }
                        },
                        "exception": {
                          "meta":{
                            "className":"ExceptionUse",
                            "version":0
                          },
                          "gizmo":{
                            "id": { "string": "TimeOutError" }
                          }
                        }
                      }
                    }]
                  }
                }
              }
            }]
          }
        },
        {
          "meta":{
            "className":"EnterTextStep",
            "version":0
          },
          "gizmo":{
            "name": {
              "meta":{
                "className":"StepName",
                "version":0
              },
              "gizmo":{
                "customName": { "string": "" }
              }
            },
            "finder": {
              "meta":{
                "className":"ApplicationFinderWithName",
                "version":5
              },
              "gizmo":{
                "name": {
                  "meta":{
                    "className":"FinderName",
                    "version":0
                  },
                  "gizmo":{
                    "id": { "string": "" }
                  }
                },
                "finder": {
                  "meta":{
                    "className":"ApplicationDescriptor",
                    "version":0
                  },
                  "gizmo":{
                    "deviceFinder": {
                      "meta":{
                        "className":"DeviceReference",
                        "version":0
                      },
                      "gizmo":{
                        "reference": {
                          "meta":{
                            "className":"NamedFinderReference",
                            "version":0
                          },
                          "gizmo":{
                            "id": { "string": "desktop" }
                          }
                        }
                      }
                    },
                    "applicationSelector": {
                      "meta":{
                        "className":"Expression",
                        "version":0
                      },
                      "gizmo":{
                        "text": { "string": "explorer.exe" }
                      }
                    }
                  }
                }
              }
            },
            "text": {
              "meta":{
                "className":"Expression",
                "version":0
              },
              "gizmo":{
                "text": { "string": "=xmltext" }
              }
            }
          }
        },
        {
          "meta":{
            "className":"GuardedChoiceStep",
            "version":0
          },
          "gizmo":{
            "name": {
              "meta":{
                "className":"StepName",
                "version":0
              },
              "gizmo":{
                "customName": { "string": "Wait 5 sec" }
              }
            },
            "branches": [{
              "meta":{
                "className":"GuardAndBlock",
                "version":3
              },
              "gizmo":{
                "guard": {
                  "meta":{
                    "className":"TimeOutGuard",
                    "version":0
                  },
                  "gizmo":{
                    "seconds": {
                      "meta":{
                        "className":"Expression",
                        "version":0
                      },
                      "gizmo":{
                        "text": { "string": "5" }
                      }
                    }
                  }
                },
                "block": {
                  "meta":{
                    "className":"Block",
                    "version":1
                  },
                  "gizmo":{
                    "steps": []
                  }
                }
              }
            }]
          }
        },
        {
          "meta":{
            "className":"PressKeyStep",
            "version":0
          },
          "gizmo":{
            "name": {
              "meta":{
                "className":"StepName",
                "version":0
              },
              "gizmo":{
                "customName": { "string": "Press Ctrl+S" }
              }
            },
            "finder": {
              "meta":{
                "className":"ApplicationFinderWithName",
                "version":5
              },
              "gizmo":{
                "name": {
                  "meta":{
                    "className":"FinderName",
                    "version":0
                  },
                  "gizmo":{
                    "id": { "string": "" }
                  }
                },
                "finder": {
                  "meta":{
                    "className":"ApplicationDescriptor",
                    "version":0
                  },
                  "gizmo":{
                    "deviceFinder": {
                      "meta":{
                        "className":"DeviceReference",
                        "version":0
                      },
                      "gizmo":{
                        "reference": {
                          "meta":{
                            "className":"NamedFinderReference",
                            "version":0
                          },
                          "gizmo":{
                            "id": { "string": "desktop" }
                          }
                        }
                      }
                    },
                    "applicationSelector": {
                      "meta":{
                        "className":"Expression",
                        "version":0
                      },
                      "gizmo":{
                        "text": { "string": "explorer.exe" }
                      }
                    }
                  }
                }
              }
            },
            "key": {
              "meta":{
                "className":"FixedKey",
                "version":0
              },
              "gizmo":{
                "virtualKeyCode": { "string": "VK_S" }
              }
            },
            "modifier": {
              "meta":{
                "className":"FixedKeyModifier",
                "version":0
              },
              "gizmo":{
                "shift": { "boolean": "false" },
                "ctrl": { "boolean": "true" },
                "alt": { "boolean": "false" }
              }
            },
            "count": {
              "meta":{
                "className":"Expression",
                "version":0
              },
              "gizmo":{
                "text": { "string": "1" }
              }
            }
          }
        },
        {
          "meta":{
            "className":"GuardedChoiceStep",
            "version":0
          },
          "gizmo":{
            "name": {
              "meta":{
                "className":"StepName",
                "version":0
              },
              "gizmo":{
                "customName": { "string": "Guard Save As Dialog" }
              }
            },
            "branches": [{
              "meta":{
                "className":"GuardAndBlock",
                "version":3
              },
              "gizmo":{
                "guard": {
                  "meta":{
                    "className":"LocationFoundGuard",
                    "version":0
                  },
                  "gizmo":{
                    "finder": {
                      "meta":{
                        "className":"ComponentFinderWithName",
                        "version":8
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"FinderName",
                            "version":0
                          },
                          "gizmo":{
                            "id": { "string": "" }
                          }
                        },
                        "finder": {
                          "meta":{
                            "className":"ComponentDescriptor",
                            "version":0
                          },
                          "gizmo":{
                            "applicationFinder": {
                              "meta":{
                                "className":"ApplicationDescriptor",
                                "version":0
                              },
                              "gizmo":{
                                "deviceFinder": {
                                  "meta":{
                                    "className":"DeviceReference",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "reference": {
                                      "meta":{
                                        "className":"NamedFinderReference",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "id": { "string": "desktop" }
                                      }
                                    }
                                  }
                                },
                                "applicationSelector": {
                                  "meta":{
                                    "className":"Expression",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "text": { "string": "notepad.exe[title=\"Save As\"]" }
                                  }
                                }
                              }
                            },
                            "componentSelector": {
                              "meta":{
                                "className":"Expression",
                                "version":0
                              },
                              "gizmo":{
                                "text": { "string": "dialog" }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                },
                "block": {
                  "meta":{
                    "className":"Block",
                    "version":1
                  },
                  "gizmo":{
                    "steps": [{
                      "meta":{
                        "className":"EnterTextStep",
                        "version":0
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"StepName",
                            "version":0
                          },
                          "gizmo":{
                            "customName": { "string": "" }
                          }
                        },
                        "finder": {
                          "meta":{
                            "className":"ApplicationFinderWithName",
                            "version":5
                          },
                          "gizmo":{
                            "name": {
                              "meta":{
                                "className":"FinderName",
                                "version":0
                              },
                              "gizmo":{
                                "id": { "string": "" }
                              }
                            },
                            "finder": {
                              "meta":{
                                "className":"ApplicationDescriptor",
                                "version":0
                              },
                              "gizmo":{
                                "deviceFinder": {
                                  "meta":{
                                    "className":"DeviceReference",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "reference": {
                                      "meta":{
                                        "className":"NamedFinderReference",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "id": { "string": "desktop" }
                                      }
                                    }
                                  }
                                },
                                "applicationSelector": {
                                  "meta":{
                                    "className":"Expression",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "text": { "string": "notepad.exe[title=\"Untitled - Notepad\"]" }
                                  }
                                }
                              }
                            }
                          }
                        },
                        "text": {
                          "meta":{
                            "className":"Expression",
                            "version":0
                          },
                          "gizmo":{
                            "text": { "string": "=folder + \"\\\\\" + reference + \".xml\"" }
                          }
                        }
                      }
                    }]
                  }
                }
              }
            },
            {
              "meta":{
                "className":"GuardAndBlock",
                "version":3
              },
              "gizmo":{
                "guard": {
                  "meta":{
                    "className":"TimeOutGuard",
                    "version":0
                  },
                  "gizmo":{
                    "seconds": {
                      "meta":{
                        "className":"Expression",
                        "version":0
                      },
                      "gizmo":{
                        "text": { "string": "60" }
                      }
                    }
                  }
                },
                "block": {
                  "meta":{
                    "className":"Block",
                    "version":1
                  },
                  "gizmo":{
                    "steps": [{
                      "meta":{
                        "className":"ThrowStep",
                        "version":0
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"StepName",
                            "version":0
                          },
                          "gizmo":{
                            "customName": { "string": "" }
                          }
                        },
                        "exception": {
                          "meta":{
                            "className":"ExceptionUse",
                            "version":0
                          },
                          "gizmo":{
                            "id": { "string": "TimeOutError" }
                          }
                        }
                      }
                    }]
                  }
                }
              }
            }]
          }
        },
        {
          "meta":{
            "className":"GuardedChoiceStep",
            "version":0
          },
          "gizmo":{
            "name": {
              "meta":{
                "className":"StepName",
                "version":0
              },
              "gizmo":{
                "customName": { "string": "Click Save" }
              }
            },
            "branches": [{
              "meta":{
                "className":"GuardAndBlock",
                "version":3
              },
              "gizmo":{
                "guard": {
                  "meta":{
                    "className":"LocationFoundGuard",
                    "version":0
                  },
                  "gizmo":{
                    "finder": {
                      "meta":{
                        "className":"ComponentFinderWithName",
                        "version":8
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"FinderName",
                            "version":0
                          },
                          "gizmo":{
                            "id": { "string": "" }
                          }
                        },
                        "finder": {
                          "meta":{
                            "className":"ComponentDescriptor",
                            "version":0
                          },
                          "gizmo":{
                            "applicationFinder": {
                              "meta":{
                                "className":"ApplicationDescriptor",
                                "version":0
                              },
                              "gizmo":{
                                "deviceFinder": {
                                  "meta":{
                                    "className":"DeviceReference",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "reference": {
                                      "meta":{
                                        "className":"NamedFinderReference",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "id": { "string": "desktop" }
                                      }
                                    }
                                  }
                                },
                                "applicationSelector": {
                                  "meta":{
                                    "className":"Expression",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "text": { "string": "notepad.exe[title=\"Save As\"]" }
                                  }
                                }
                              }
                            },
                            "componentSelector": {
                              "meta":{
                                "className":"Expression",
                                "version":0
                              },
                              "gizmo":{
                                "text": { "string": "button[automationId=\"1\"]" }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                },
                "block": {
                  "meta":{
                    "className":"Block",
                    "version":1
                  },
                  "gizmo":{
                    "steps": [{
                      "meta":{
                        "className":"MoveMouseStep",
                        "version":0
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"StepName",
                            "version":0
                          },
                          "gizmo":{
                            "customName": { "string": "" }
                          }
                        },
                        "finder": {
                          "meta":{
                            "className":"ComponentFinderWithName",
                            "version":8
                          },
                          "gizmo":{
                            "name": {
                              "meta":{
                                "className":"FinderName",
                                "version":0
                              },
                              "gizmo":{
                                "id": { "string": "" }
                              }
                            },
                            "finder": {
                              "meta":{
                                "className":"ComponentReference",
                                "version":0
                              },
                              "gizmo":{
                                "reference": {
                                  "meta":{
                                    "className":"PreviousFinderReference",
                                    "version":0
                                  },
                                  "gizmo":{
                                    
                                  }
                                }
                              }
                            }
                          }
                        },
                        "offset": {
                          "meta":{
                            "className":"NoOffset",
                            "version":0
                          },
                          "gizmo":{
                            
                          }
                        }
                      }
                    },
                    {
                      "meta":{
                        "className":"ClickStep",
                        "version":1
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"StepName",
                            "version":0
                          },
                          "gizmo":{
                            "customName": { "string": "" }
                          }
                        },
                        "finder": {
                          "meta":{
                            "className":"ApplicationFinderWithName",
                            "version":5
                          },
                          "gizmo":{
                            "name": {
                              "meta":{
                                "className":"FinderName",
                                "version":0
                              },
                              "gizmo":{
                                "id": { "string": "" }
                              }
                            },
                            "finder": {
                              "meta":{
                                "className":"ApplicationReference",
                                "version":0
                              },
                              "gizmo":{
                                "reference": {
                                  "meta":{
                                    "className":"PreviousFinderReference",
                                    "version":0
                                  },
                                  "gizmo":{
                                    
                                  }
                                }
                              }
                            }
                          }
                        },
                        "mouseAction": {
                          "meta":{
                            "className":"ClickAction",
                            "version":0
                          },
                          "gizmo":{
                            "button": {
                              "meta":{
                                "className":"FixedButton",
                                "version":0
                              },
                              "gizmo":{
                                "button": { "int": "0" }
                              }
                            },
                            "count": {
                              "meta":{
                                "className":"Expression",
                                "version":0
                              },
                              "gizmo":{
                                "text": { "string": "1" }
                              }
                            }
                          }
                        }
                      }
                    }]
                  }
                }
              }
            },
            {
              "meta":{
                "className":"GuardAndBlock",
                "version":3
              },
              "gizmo":{
                "guard": {
                  "meta":{
                    "className":"TimeOutGuard",
                    "version":0
                  },
                  "gizmo":{
                    "seconds": {
                      "meta":{
                        "className":"Expression",
                        "version":0
                      },
                      "gizmo":{
                        "text": { "string": "60" }
                      }
                    }
                  }
                },
                "block": {
                  "meta":{
                    "className":"Block",
                    "version":1
                  },
                  "gizmo":{
                    "steps": [{
                      "meta":{
                        "className":"ThrowStep",
                        "version":0
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"StepName",
                            "version":0
                          },
                          "gizmo":{
                            "customName": { "string": "" }
                          }
                        },
                        "exception": {
                          "meta":{
                            "className":"ExceptionUse",
                            "version":0
                          },
                          "gizmo":{
                            "id": { "string": "TimeOutError" }
                          }
                        }
                      }
                    }]
                  }
                }
              }
            }]
          }
        },
        {
          "meta":{
            "className":"GuardedChoiceStep",
            "version":0
          },
          "gizmo":{
            "name": {
              "meta":{
                "className":"StepName",
                "version":0
              },
              "gizmo":{
                "customName": { "string": "" }
              }
            },
            "branches": [{
              "meta":{
                "className":"GuardAndBlock",
                "version":3
              },
              "gizmo":{
                "guard": {
                  "meta":{
                    "className":"LocationFoundGuard",
                    "version":0
                  },
                  "gizmo":{
                    "finder": {
                      "meta":{
                        "className":"ComponentFinderWithName",
                        "version":8
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"FinderName",
                            "version":0
                          },
                          "gizmo":{
                            "id": { "string": "" }
                          }
                        },
                        "finder": {
                          "meta":{
                            "className":"ComponentDescriptor",
                            "version":0
                          },
                          "gizmo":{
                            "applicationFinder": {
                              "meta":{
                                "className":"ApplicationDescriptor",
                                "version":0
                              },
                              "gizmo":{
                                "deviceFinder": {
                                  "meta":{
                                    "className":"DeviceReference",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "reference": {
                                      "meta":{
                                        "className":"NamedFinderReference",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "id": { "string": "desktop" }
                                      }
                                    }
                                  }
                                },
                                "applicationSelector": {
                                  "meta":{
                                    "className":"Expression",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "text": { "string": "notepad.exe[title=\"Confirm Save As\"]" }
                                  }
                                }
                              }
                            },
                            "componentSelector": {
                              "meta":{
                                "className":"Expression",
                                "version":0
                              },
                              "gizmo":{
                                "text": { "string": "dialog" }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                },
                "block": {
                  "meta":{
                    "className":"Block",
                    "version":1
                  },
                  "gizmo":{
                    "steps": [{
                      "meta":{
                        "className":"AssignStep",
                        "version":0
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"StepName",
                            "version":0
                          },
                          "gizmo":{
                            "customName": { "string": "" }
                          }
                        },
                        "expression": {
                          "meta":{
                            "className":"Expression",
                            "version":0
                          },
                          "gizmo":{
                            "text": { "string": "=folder + \"\\\\\" + reference + \".xml already exists.\"" }
                          }
                        },
                        "variable": {
                          "meta":{
                            "className":"LeftHandSide",
                            "version":1
                          },
                          "gizmo":{
                            "text": { "string": "errormessage" }
                          }
                        }
                      }
                    },
                    {
                      "meta":{
                        "className":"GuardedChoiceStep",
                        "version":0
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"StepName",
                            "version":0
                          },
                          "gizmo":{
                            "customName": { "string": "Click No" }
                          }
                        },
                        "branches": [{
                          "meta":{
                            "className":"GuardAndBlock",
                            "version":3
                          },
                          "gizmo":{
                            "guard": {
                              "meta":{
                                "className":"LocationFoundGuard",
                                "version":0
                              },
                              "gizmo":{
                                "finder": {
                                  "meta":{
                                    "className":"ComponentFinderWithName",
                                    "version":8
                                  },
                                  "gizmo":{
                                    "name": {
                                      "meta":{
                                        "className":"FinderName",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "id": { "string": "" }
                                      }
                                    },
                                    "finder": {
                                      "meta":{
                                        "className":"ComponentDescriptor",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "applicationFinder": {
                                          "meta":{
                                            "className":"ApplicationDescriptor",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "deviceFinder": {
                                              "meta":{
                                                "className":"DeviceReference",
                                                "version":0
                                              },
                                              "gizmo":{
                                                "reference": {
                                                  "meta":{
                                                    "className":"NamedFinderReference",
                                                    "version":0
                                                  },
                                                  "gizmo":{
                                                    "id": { "string": "desktop" }
                                                  }
                                                }
                                              }
                                            },
                                            "applicationSelector": {
                                              "meta":{
                                                "className":"Expression",
                                                "version":0
                                              },
                                              "gizmo":{
                                                "text": { "string": "notepad.exe[title=\"Confirm Save As\"]" }
                                              }
                                            }
                                          }
                                        },
                                        "componentSelector": {
                                          "meta":{
                                            "className":"Expression",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "text": { "string": "button[automationId=\"CommandButton_7\"]" }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            },
                            "block": {
                              "meta":{
                                "className":"Block",
                                "version":1
                              },
                              "gizmo":{
                                "steps": [{
                                  "meta":{
                                    "className":"MoveMouseStep",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "name": {
                                      "meta":{
                                        "className":"StepName",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "customName": { "string": "" }
                                      }
                                    },
                                    "finder": {
                                      "meta":{
                                        "className":"ComponentFinderWithName",
                                        "version":8
                                      },
                                      "gizmo":{
                                        "name": {
                                          "meta":{
                                            "className":"FinderName",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "id": { "string": "" }
                                          }
                                        },
                                        "finder": {
                                          "meta":{
                                            "className":"ComponentReference",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "reference": {
                                              "meta":{
                                                "className":"PreviousFinderReference",
                                                "version":0
                                              },
                                              "gizmo":{
                                                
                                              }
                                            }
                                          }
                                        }
                                      }
                                    },
                                    "offset": {
                                      "meta":{
                                        "className":"NoOffset",
                                        "version":0
                                      },
                                      "gizmo":{
                                        
                                      }
                                    }
                                  }
                                },
                                {
                                  "meta":{
                                    "className":"ClickStep",
                                    "version":1
                                  },
                                  "gizmo":{
                                    "name": {
                                      "meta":{
                                        "className":"StepName",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "customName": { "string": "" }
                                      }
                                    },
                                    "finder": {
                                      "meta":{
                                        "className":"ApplicationFinderWithName",
                                        "version":5
                                      },
                                      "gizmo":{
                                        "name": {
                                          "meta":{
                                            "className":"FinderName",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "id": { "string": "" }
                                          }
                                        },
                                        "finder": {
                                          "meta":{
                                            "className":"ApplicationReference",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "reference": {
                                              "meta":{
                                                "className":"PreviousFinderReference",
                                                "version":0
                                              },
                                              "gizmo":{
                                                
                                              }
                                            }
                                          }
                                        }
                                      }
                                    },
                                    "mouseAction": {
                                      "meta":{
                                        "className":"ClickAction",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "button": {
                                          "meta":{
                                            "className":"FixedButton",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "button": { "int": "0" }
                                          }
                                        },
                                        "count": {
                                          "meta":{
                                            "className":"Expression",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "text": { "string": "1" }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }]
                              }
                            }
                          }
                        },
                        {
                          "meta":{
                            "className":"GuardAndBlock",
                            "version":3
                          },
                          "gizmo":{
                            "guard": {
                              "meta":{
                                "className":"TimeOutGuard",
                                "version":0
                              },
                              "gizmo":{
                                "seconds": {
                                  "meta":{
                                    "className":"Expression",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "text": { "string": "60" }
                                  }
                                }
                              }
                            },
                            "block": {
                              "meta":{
                                "className":"Block",
                                "version":1
                              },
                              "gizmo":{
                                "steps": [{
                                  "meta":{
                                    "className":"ThrowStep",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "name": {
                                      "meta":{
                                        "className":"StepName",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "customName": { "string": "" }
                                      }
                                    },
                                    "exception": {
                                      "meta":{
                                        "className":"ExceptionUse",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "id": { "string": "TimeOutError" }
                                      }
                                    }
                                  }
                                }]
                              }
                            }
                          }
                        }]
                      }
                    },
                    {
                      "meta":{
                        "className":"GuardedChoiceStep",
                        "version":0
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"StepName",
                            "version":0
                          },
                          "gizmo":{
                            "customName": { "string": "Click Cancel" }
                          }
                        },
                        "branches": [{
                          "meta":{
                            "className":"GuardAndBlock",
                            "version":3
                          },
                          "gizmo":{
                            "guard": {
                              "meta":{
                                "className":"LocationFoundGuard",
                                "version":0
                              },
                              "gizmo":{
                                "finder": {
                                  "meta":{
                                    "className":"ComponentFinderWithName",
                                    "version":8
                                  },
                                  "gizmo":{
                                    "name": {
                                      "meta":{
                                        "className":"FinderName",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "id": { "string": "" }
                                      }
                                    },
                                    "finder": {
                                      "meta":{
                                        "className":"ComponentDescriptor",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "applicationFinder": {
                                          "meta":{
                                            "className":"ApplicationDescriptor",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "deviceFinder": {
                                              "meta":{
                                                "className":"DeviceReference",
                                                "version":0
                                              },
                                              "gizmo":{
                                                "reference": {
                                                  "meta":{
                                                    "className":"NamedFinderReference",
                                                    "version":0
                                                  },
                                                  "gizmo":{
                                                    "id": { "string": "desktop" }
                                                  }
                                                }
                                              }
                                            },
                                            "applicationSelector": {
                                              "meta":{
                                                "className":"Expression",
                                                "version":0
                                              },
                                              "gizmo":{
                                                "text": { "string": "notepad.exe[title=\"Save As\"]" }
                                              }
                                            }
                                          }
                                        },
                                        "componentSelector": {
                                          "meta":{
                                            "className":"Expression",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "text": { "string": "button[automationId=\"2\"]" }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            },
                            "block": {
                              "meta":{
                                "className":"Block",
                                "version":1
                              },
                              "gizmo":{
                                "steps": [{
                                  "meta":{
                                    "className":"MoveMouseStep",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "name": {
                                      "meta":{
                                        "className":"StepName",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "customName": { "string": "" }
                                      }
                                    },
                                    "finder": {
                                      "meta":{
                                        "className":"ComponentFinderWithName",
                                        "version":8
                                      },
                                      "gizmo":{
                                        "name": {
                                          "meta":{
                                            "className":"FinderName",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "id": { "string": "" }
                                          }
                                        },
                                        "finder": {
                                          "meta":{
                                            "className":"ComponentReference",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "reference": {
                                              "meta":{
                                                "className":"PreviousFinderReference",
                                                "version":0
                                              },
                                              "gizmo":{
                                                
                                              }
                                            }
                                          }
                                        }
                                      }
                                    },
                                    "offset": {
                                      "meta":{
                                        "className":"NoOffset",
                                        "version":0
                                      },
                                      "gizmo":{
                                        
                                      }
                                    }
                                  }
                                },
                                {
                                  "meta":{
                                    "className":"ClickStep",
                                    "version":1
                                  },
                                  "gizmo":{
                                    "name": {
                                      "meta":{
                                        "className":"StepName",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "customName": { "string": "" }
                                      }
                                    },
                                    "finder": {
                                      "meta":{
                                        "className":"ApplicationFinderWithName",
                                        "version":5
                                      },
                                      "gizmo":{
                                        "name": {
                                          "meta":{
                                            "className":"FinderName",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "id": { "string": "" }
                                          }
                                        },
                                        "finder": {
                                          "meta":{
                                            "className":"ApplicationReference",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "reference": {
                                              "meta":{
                                                "className":"PreviousFinderReference",
                                                "version":0
                                              },
                                              "gizmo":{
                                                
                                              }
                                            }
                                          }
                                        }
                                      }
                                    },
                                    "mouseAction": {
                                      "meta":{
                                        "className":"ClickAction",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "button": {
                                          "meta":{
                                            "className":"FixedButton",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "button": { "int": "0" }
                                          }
                                        },
                                        "count": {
                                          "meta":{
                                            "className":"Expression",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "text": { "string": "1" }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }]
                              }
                            }
                          }
                        },
                        {
                          "meta":{
                            "className":"GuardAndBlock",
                            "version":3
                          },
                          "gizmo":{
                            "guard": {
                              "meta":{
                                "className":"TimeOutGuard",
                                "version":0
                              },
                              "gizmo":{
                                "seconds": {
                                  "meta":{
                                    "className":"Expression",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "text": { "string": "60" }
                                  }
                                }
                              }
                            },
                            "block": {
                              "meta":{
                                "className":"Block",
                                "version":1
                              },
                              "gizmo":{
                                "steps": [{
                                  "meta":{
                                    "className":"ThrowStep",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "name": {
                                      "meta":{
                                        "className":"StepName",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "customName": { "string": "" }
                                      }
                                    },
                                    "exception": {
                                      "meta":{
                                        "className":"ExceptionUse",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "id": { "string": "TimeOutError" }
                                      }
                                    }
                                  }
                                }]
                              }
                            }
                          }
                        }]
                      }
                    },
                    {
                      "meta":{
                        "className":"GuardedChoiceStep",
                        "version":0
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"StepName",
                            "version":0
                          },
                          "gizmo":{
                            "customName": { "string": "Click Close" }
                          }
                        },
                        "branches": [{
                          "meta":{
                            "className":"GuardAndBlock",
                            "version":3
                          },
                          "gizmo":{
                            "guard": {
                              "meta":{
                                "className":"LocationFoundGuard",
                                "version":0
                              },
                              "gizmo":{
                                "finder": {
                                  "meta":{
                                    "className":"ComponentFinderWithName",
                                    "version":8
                                  },
                                  "gizmo":{
                                    "name": {
                                      "meta":{
                                        "className":"FinderName",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "id": { "string": "" }
                                      }
                                    },
                                    "finder": {
                                      "meta":{
                                        "className":"ComponentDescriptor",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "applicationFinder": {
                                          "meta":{
                                            "className":"ApplicationDescriptor",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "deviceFinder": {
                                              "meta":{
                                                "className":"DeviceReference",
                                                "version":0
                                              },
                                              "gizmo":{
                                                "reference": {
                                                  "meta":{
                                                    "className":"NamedFinderReference",
                                                    "version":0
                                                  },
                                                  "gizmo":{
                                                    "id": { "string": "desktop" }
                                                  }
                                                }
                                              }
                                            },
                                            "applicationSelector": {
                                              "meta":{
                                                "className":"Expression",
                                                "version":0
                                              },
                                              "gizmo":{
                                                "text": { "string": "notepad.exe" }
                                              }
                                            }
                                          }
                                        },
                                        "componentSelector": {
                                          "meta":{
                                            "className":"Expression",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "text": { "string": "button[name=\"Close\"]" }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            },
                            "block": {
                              "meta":{
                                "className":"Block",
                                "version":1
                              },
                              "gizmo":{
                                "steps": [{
                                  "meta":{
                                    "className":"MoveMouseStep",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "name": {
                                      "meta":{
                                        "className":"StepName",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "customName": { "string": "" }
                                      }
                                    },
                                    "finder": {
                                      "meta":{
                                        "className":"ComponentFinderWithName",
                                        "version":8
                                      },
                                      "gizmo":{
                                        "name": {
                                          "meta":{
                                            "className":"FinderName",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "id": { "string": "" }
                                          }
                                        },
                                        "finder": {
                                          "meta":{
                                            "className":"ComponentReference",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "reference": {
                                              "meta":{
                                                "className":"PreviousFinderReference",
                                                "version":0
                                              },
                                              "gizmo":{
                                                
                                              }
                                            }
                                          }
                                        }
                                      }
                                    },
                                    "offset": {
                                      "meta":{
                                        "className":"NoOffset",
                                        "version":0
                                      },
                                      "gizmo":{
                                        
                                      }
                                    }
                                  }
                                },
                                {
                                  "meta":{
                                    "className":"ClickStep",
                                    "version":1
                                  },
                                  "gizmo":{
                                    "name": {
                                      "meta":{
                                        "className":"StepName",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "customName": { "string": "" }
                                      }
                                    },
                                    "finder": {
                                      "meta":{
                                        "className":"ApplicationFinderWithName",
                                        "version":5
                                      },
                                      "gizmo":{
                                        "name": {
                                          "meta":{
                                            "className":"FinderName",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "id": { "string": "" }
                                          }
                                        },
                                        "finder": {
                                          "meta":{
                                            "className":"ApplicationReference",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "reference": {
                                              "meta":{
                                                "className":"PreviousFinderReference",
                                                "version":0
                                              },
                                              "gizmo":{
                                                
                                              }
                                            }
                                          }
                                        }
                                      }
                                    },
                                    "mouseAction": {
                                      "meta":{
                                        "className":"ClickAction",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "button": {
                                          "meta":{
                                            "className":"FixedButton",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "button": { "int": "0" }
                                          }
                                        },
                                        "count": {
                                          "meta":{
                                            "className":"Expression",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "text": { "string": "1" }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }]
                              }
                            }
                          }
                        },
                        {
                          "meta":{
                            "className":"GuardAndBlock",
                            "version":3
                          },
                          "gizmo":{
                            "guard": {
                              "meta":{
                                "className":"TimeOutGuard",
                                "version":0
                              },
                              "gizmo":{
                                "seconds": {
                                  "meta":{
                                    "className":"Expression",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "text": { "string": "60" }
                                  }
                                }
                              }
                            },
                            "block": {
                              "meta":{
                                "className":"Block",
                                "version":1
                              },
                              "gizmo":{
                                "steps": [{
                                  "meta":{
                                    "className":"ThrowStep",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "name": {
                                      "meta":{
                                        "className":"StepName",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "customName": { "string": "" }
                                      }
                                    },
                                    "exception": {
                                      "meta":{
                                        "className":"ExceptionUse",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "id": { "string": "TimeOutError" }
                                      }
                                    }
                                  }
                                }]
                              }
                            }
                          }
                        }]
                      }
                    },
                    {
                      "meta":{
                        "className":"GuardedChoiceStep",
                        "version":0
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"StepName",
                            "version":0
                          },
                          "gizmo":{
                            "customName": { "string": "" }
                          }
                        },
                        "branches": [{
                          "meta":{
                            "className":"GuardAndBlock",
                            "version":3
                          },
                          "gizmo":{
                            "guard": {
                              "meta":{
                                "className":"LocationFoundGuard",
                                "version":0
                              },
                              "gizmo":{
                                "finder": {
                                  "meta":{
                                    "className":"ComponentFinderWithName",
                                    "version":8
                                  },
                                  "gizmo":{
                                    "name": {
                                      "meta":{
                                        "className":"FinderName",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "id": { "string": "" }
                                      }
                                    },
                                    "finder": {
                                      "meta":{
                                        "className":"ComponentDescriptor",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "applicationFinder": {
                                          "meta":{
                                            "className":"ApplicationDescriptor",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "deviceFinder": {
                                              "meta":{
                                                "className":"DeviceReference",
                                                "version":0
                                              },
                                              "gizmo":{
                                                "reference": {
                                                  "meta":{
                                                    "className":"NamedFinderReference",
                                                    "version":0
                                                  },
                                                  "gizmo":{
                                                    "id": { "string": "desktop" }
                                                  }
                                                }
                                              }
                                            },
                                            "applicationSelector": {
                                              "meta":{
                                                "className":"Expression",
                                                "version":0
                                              },
                                              "gizmo":{
                                                "text": { "string": "notepad.exe[title=\"Notepad\"]" }
                                              }
                                            }
                                          }
                                        },
                                        "componentSelector": {
                                          "meta":{
                                            "className":"Expression",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "text": { "string": "dialog" }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            },
                            "block": {
                              "meta":{
                                "className":"Block",
                                "version":1
                              },
                              "gizmo":{
                                "steps": [{
                                  "meta":{
                                    "className":"GuardedChoiceStep",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "name": {
                                      "meta":{
                                        "className":"StepName",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "customName": { "string": "Click Don't Save" }
                                      }
                                    },
                                    "branches": [{
                                      "meta":{
                                        "className":"GuardAndBlock",
                                        "version":3
                                      },
                                      "gizmo":{
                                        "guard": {
                                          "meta":{
                                            "className":"LocationFoundGuard",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "finder": {
                                              "meta":{
                                                "className":"ComponentFinderWithName",
                                                "version":8
                                              },
                                              "gizmo":{
                                                "name": {
                                                  "meta":{
                                                    "className":"FinderName",
                                                    "version":0
                                                  },
                                                  "gizmo":{
                                                    "id": { "string": "" }
                                                  }
                                                },
                                                "finder": {
                                                  "meta":{
                                                    "className":"ComponentDescriptor",
                                                    "version":0
                                                  },
                                                  "gizmo":{
                                                    "applicationFinder": {
                                                      "meta":{
                                                        "className":"ApplicationDescriptor",
                                                        "version":0
                                                      },
                                                      "gizmo":{
                                                        "deviceFinder": {
                                                          "meta":{
                                                            "className":"DeviceReference",
                                                            "version":0
                                                          },
                                                          "gizmo":{
                                                            "reference": {
                                                              "meta":{
                                                                "className":"NamedFinderReference",
                                                                "version":0
                                                              },
                                                              "gizmo":{
                                                                "id": { "string": "desktop" }
                                                              }
                                                            }
                                                          }
                                                        },
                                                        "applicationSelector": {
                                                          "meta":{
                                                            "className":"Expression",
                                                            "version":0
                                                          },
                                                          "gizmo":{
                                                            "text": { "string": "notepad.exe[title=\"Notepad\"]" }
                                                          }
                                                        }
                                                      }
                                                    },
                                                    "componentSelector": {
                                                      "meta":{
                                                        "className":"Expression",
                                                        "version":0
                                                      },
                                                      "gizmo":{
                                                        "text": { "string": "button[automationId=\"CommandButton_7\"]" }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        },
                                        "block": {
                                          "meta":{
                                            "className":"Block",
                                            "version":1
                                          },
                                          "gizmo":{
                                            "steps": [{
                                              "meta":{
                                                "className":"MoveMouseStep",
                                                "version":0
                                              },
                                              "gizmo":{
                                                "name": {
                                                  "meta":{
                                                    "className":"StepName",
                                                    "version":0
                                                  },
                                                  "gizmo":{
                                                    "customName": { "string": "" }
                                                  }
                                                },
                                                "finder": {
                                                  "meta":{
                                                    "className":"ComponentFinderWithName",
                                                    "version":8
                                                  },
                                                  "gizmo":{
                                                    "name": {
                                                      "meta":{
                                                        "className":"FinderName",
                                                        "version":0
                                                      },
                                                      "gizmo":{
                                                        "id": { "string": "" }
                                                      }
                                                    },
                                                    "finder": {
                                                      "meta":{
                                                        "className":"ComponentReference",
                                                        "version":0
                                                      },
                                                      "gizmo":{
                                                        "reference": {
                                                          "meta":{
                                                            "className":"PreviousFinderReference",
                                                            "version":0
                                                          },
                                                          "gizmo":{
                                                            
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                },
                                                "offset": {
                                                  "meta":{
                                                    "className":"NoOffset",
                                                    "version":0
                                                  },
                                                  "gizmo":{
                                                    
                                                  }
                                                }
                                              }
                                            },
                                            {
                                              "meta":{
                                                "className":"ClickStep",
                                                "version":1
                                              },
                                              "gizmo":{
                                                "name": {
                                                  "meta":{
                                                    "className":"StepName",
                                                    "version":0
                                                  },
                                                  "gizmo":{
                                                    "customName": { "string": "" }
                                                  }
                                                },
                                                "finder": {
                                                  "meta":{
                                                    "className":"ApplicationFinderWithName",
                                                    "version":5
                                                  },
                                                  "gizmo":{
                                                    "name": {
                                                      "meta":{
                                                        "className":"FinderName",
                                                        "version":0
                                                      },
                                                      "gizmo":{
                                                        "id": { "string": "" }
                                                      }
                                                    },
                                                    "finder": {
                                                      "meta":{
                                                        "className":"ApplicationReference",
                                                        "version":0
                                                      },
                                                      "gizmo":{
                                                        "reference": {
                                                          "meta":{
                                                            "className":"PreviousFinderReference",
                                                            "version":0
                                                          },
                                                          "gizmo":{
                                                            
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                },
                                                "mouseAction": {
                                                  "meta":{
                                                    "className":"ClickAction",
                                                    "version":0
                                                  },
                                                  "gizmo":{
                                                    "button": {
                                                      "meta":{
                                                        "className":"FixedButton",
                                                        "version":0
                                                      },
                                                      "gizmo":{
                                                        "button": { "int": "0" }
                                                      }
                                                    },
                                                    "count": {
                                                      "meta":{
                                                        "className":"Expression",
                                                        "version":0
                                                      },
                                                      "gizmo":{
                                                        "text": { "string": "1" }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }]
                                          }
                                        }
                                      }
                                    },
                                    {
                                      "meta":{
                                        "className":"GuardAndBlock",
                                        "version":3
                                      },
                                      "gizmo":{
                                        "guard": {
                                          "meta":{
                                            "className":"TimeOutGuard",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "seconds": {
                                              "meta":{
                                                "className":"Expression",
                                                "version":0
                                              },
                                              "gizmo":{
                                                "text": { "string": "60" }
                                              }
                                            }
                                          }
                                        },
                                        "block": {
                                          "meta":{
                                            "className":"Block",
                                            "version":1
                                          },
                                          "gizmo":{
                                            "steps": [{
                                              "meta":{
                                                "className":"ThrowStep",
                                                "version":0
                                              },
                                              "gizmo":{
                                                "name": {
                                                  "meta":{
                                                    "className":"StepName",
                                                    "version":0
                                                  },
                                                  "gizmo":{
                                                    "customName": { "string": "" }
                                                  }
                                                },
                                                "exception": {
                                                  "meta":{
                                                    "className":"ExceptionUse",
                                                    "version":0
                                                  },
                                                  "gizmo":{
                                                    "id": { "string": "TimeOutError" }
                                                  }
                                                }
                                              }
                                            }]
                                          }
                                        }
                                      }
                                    }]
                                  }
                                }]
                              }
                            }
                          }
                        },
                        {
                          "meta":{
                            "className":"GuardAndBlock",
                            "version":3
                          },
                          "gizmo":{
                            "guard": {
                              "meta":{
                                "className":"TimeOutGuard",
                                "version":0
                              },
                              "gizmo":{
                                "seconds": {
                                  "meta":{
                                    "className":"Expression",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "text": { "string": "60" }
                                  }
                                }
                              }
                            },
                            "block": {
                              "meta":{
                                "className":"Block",
                                "version":1
                              },
                              "gizmo":{
                                "steps": [{
                                  "meta":{
                                    "className":"ThrowStep",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "name": {
                                      "meta":{
                                        "className":"StepName",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "customName": { "string": "" }
                                      }
                                    },
                                    "exception": {
                                      "meta":{
                                        "className":"ExceptionUse",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "id": { "string": "TimeOutError" }
                                      }
                                    }
                                  }
                                }]
                              }
                            }
                          }
                        }]
                      }
                    }]
                  }
                }
              }
            },
            {
              "meta":{
                "className":"GuardAndBlock",
                "version":3
              },
              "gizmo":{
                "guard": {
                  "meta":{
                    "className":"LocationNotFoundGuard",
                    "version":2
                  },
                  "gizmo":{
                    "finder": {
                      "meta":{
                        "className":"ComponentFinderWithoutName",
                        "version":0
                      },
                      "gizmo":{
                        "finder": {
                          "meta":{
                            "className":"ComponentDescriptor",
                            "version":0
                          },
                          "gizmo":{
                            "applicationFinder": {
                              "meta":{
                                "className":"ApplicationDescriptor",
                                "version":0
                              },
                              "gizmo":{
                                "deviceFinder": {
                                  "meta":{
                                    "className":"DeviceReference",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "reference": {
                                      "meta":{
                                        "className":"NamedFinderReference",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "id": { "string": "desktop" }
                                      }
                                    }
                                  }
                                },
                                "applicationSelector": {
                                  "meta":{
                                    "className":"Expression",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "text": { "string": "notepad.exe[title=\"Confirm Save As\"]" }
                                  }
                                }
                              }
                            },
                            "componentSelector": {
                              "meta":{
                                "className":"Expression",
                                "version":0
                              },
                              "gizmo":{
                                "text": { "string": "dialog" }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                },
                "block": {
                  "meta":{
                    "className":"Block",
                    "version":1
                  },
                  "gizmo":{
                    "steps": [{
                      "meta":{
                        "className":"GuardedChoiceStep",
                        "version":0
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"StepName",
                            "version":0
                          },
                          "gizmo":{
                            "customName": { "string": "Click Close" }
                          }
                        },
                        "branches": [{
                          "meta":{
                            "className":"GuardAndBlock",
                            "version":3
                          },
                          "gizmo":{
                            "guard": {
                              "meta":{
                                "className":"LocationFoundGuard",
                                "version":0
                              },
                              "gizmo":{
                                "finder": {
                                  "meta":{
                                    "className":"ComponentFinderWithName",
                                    "version":8
                                  },
                                  "gizmo":{
                                    "name": {
                                      "meta":{
                                        "className":"FinderName",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "id": { "string": "" }
                                      }
                                    },
                                    "finder": {
                                      "meta":{
                                        "className":"ComponentDescriptor",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "applicationFinder": {
                                          "meta":{
                                            "className":"ApplicationDescriptor",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "deviceFinder": {
                                              "meta":{
                                                "className":"DeviceReference",
                                                "version":0
                                              },
                                              "gizmo":{
                                                "reference": {
                                                  "meta":{
                                                    "className":"NamedFinderReference",
                                                    "version":0
                                                  },
                                                  "gizmo":{
                                                    "id": { "string": "desktop" }
                                                  }
                                                }
                                              }
                                            },
                                            "applicationSelector": {
                                              "meta":{
                                                "className":"Expression",
                                                "version":0
                                              },
                                              "gizmo":{
                                                "text": { "string": "notepad.exe" }
                                              }
                                            }
                                          }
                                        },
                                        "componentSelector": {
                                          "meta":{
                                            "className":"Expression",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "text": { "string": "button[name=\"Close\"]" }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            },
                            "block": {
                              "meta":{
                                "className":"Block",
                                "version":1
                              },
                              "gizmo":{
                                "steps": [{
                                  "meta":{
                                    "className":"MoveMouseStep",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "name": {
                                      "meta":{
                                        "className":"StepName",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "customName": { "string": "" }
                                      }
                                    },
                                    "finder": {
                                      "meta":{
                                        "className":"ComponentFinderWithName",
                                        "version":8
                                      },
                                      "gizmo":{
                                        "name": {
                                          "meta":{
                                            "className":"FinderName",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "id": { "string": "" }
                                          }
                                        },
                                        "finder": {
                                          "meta":{
                                            "className":"ComponentReference",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "reference": {
                                              "meta":{
                                                "className":"PreviousFinderReference",
                                                "version":0
                                              },
                                              "gizmo":{
                                                
                                              }
                                            }
                                          }
                                        }
                                      }
                                    },
                                    "offset": {
                                      "meta":{
                                        "className":"NoOffset",
                                        "version":0
                                      },
                                      "gizmo":{
                                        
                                      }
                                    }
                                  }
                                },
                                {
                                  "meta":{
                                    "className":"ClickStep",
                                    "version":1
                                  },
                                  "gizmo":{
                                    "name": {
                                      "meta":{
                                        "className":"StepName",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "customName": { "string": "" }
                                      }
                                    },
                                    "finder": {
                                      "meta":{
                                        "className":"ApplicationFinderWithName",
                                        "version":5
                                      },
                                      "gizmo":{
                                        "name": {
                                          "meta":{
                                            "className":"FinderName",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "id": { "string": "" }
                                          }
                                        },
                                        "finder": {
                                          "meta":{
                                            "className":"ApplicationReference",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "reference": {
                                              "meta":{
                                                "className":"PreviousFinderReference",
                                                "version":0
                                              },
                                              "gizmo":{
                                                
                                              }
                                            }
                                          }
                                        }
                                      }
                                    },
                                    "mouseAction": {
                                      "meta":{
                                        "className":"ClickAction",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "button": {
                                          "meta":{
                                            "className":"FixedButton",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "button": { "int": "0" }
                                          }
                                        },
                                        "count": {
                                          "meta":{
                                            "className":"Expression",
                                            "version":0
                                          },
                                          "gizmo":{
                                            "text": { "string": "1" }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }]
                              }
                            }
                          }
                        },
                        {
                          "meta":{
                            "className":"GuardAndBlock",
                            "version":3
                          },
                          "gizmo":{
                            "guard": {
                              "meta":{
                                "className":"TimeOutGuard",
                                "version":0
                              },
                              "gizmo":{
                                "seconds": {
                                  "meta":{
                                    "className":"Expression",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "text": { "string": "60" }
                                  }
                                }
                              }
                            },
                            "block": {
                              "meta":{
                                "className":"Block",
                                "version":1
                              },
                              "gizmo":{
                                "steps": [{
                                  "meta":{
                                    "className":"ThrowStep",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "name": {
                                      "meta":{
                                        "className":"StepName",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "customName": { "string": "" }
                                      }
                                    },
                                    "exception": {
                                      "meta":{
                                        "className":"ExceptionUse",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "id": { "string": "TimeOutError" }
                                      }
                                    }
                                  }
                                }]
                              }
                            }
                          }
                        }]
                      }
                    }]
                  }
                }
              }
            }]
          }
        },
        {
          "meta":{
            "className":"ReturnStep",
            "version":0
          },
          "gizmo":{
            "name": {
              "meta":{
                "className":"StepName",
                "version":0
              },
              "gizmo":{
                "customName": { "string": "" }
              }
            },
            "values": [{
              "meta":{
                "className":"Expression",
                "version":0
              },
              "gizmo":{
                "text": { "string": "=errormessage" }
              }
            }]
          }
        }]
      }
    }
  }
}</property>
        </property>
        <property name="elementFinders" idref="15"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Try" id="19"/>
      <object class="Transition" serializationversion="3" id="20">
        <property name="name" class="String">Random Simulate Failure</property>
        <property name="stepAction" class="TestValue" serializationversion="0">
          <property name="condition" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="EvaluateExpression" serializationversion="0">
                <property name="expression" class="String">length(da_error) &gt; 0</property>
              </element>
            </property>
          </property>
          <property name="mode" class="Integer">1</property>
        </property>
        <property name="elementFinders" class="ElementFinders" id="21"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="22">
        <property name="name" class="String">Assign Status successful</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">successful</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">taskQueue.Status</property>
          </property>
        </property>
        <property name="elementFinders" idref="21"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">successful = Task compleded</property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="23">
        <property name="name" class="String">Assign Ended</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="Expression" serializationversion="1">
            <property name="text" class="String">now()</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">taskQueue.Ended</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">Allways assign current date-time.</property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="24">
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
        <property name="elementFinders" idref="21"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="End" id="25"/>
      <object class="Transition" serializationversion="3" id="26">
        <property name="name" class="String">Assign Status error</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">error</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">taskQueue.Status</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">error = Logical or validation error. No more retrys.</property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="27">
        <property name="name" class="String">Assign Exception</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" idref="2"/>
            </property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">taskQueue.Exception</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">Can optionaly have details about errors.</property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="28">
        <property name="name" class="String">Assign Status failed</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">failed</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">taskQueue.Status</property>
          </property>
        </property>
        <property name="elementFinders" idref="21"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">failed = Task not compleded, applications or website might not be available. In this case the task will be processed again until the MaxRetrys limit is reached.</property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="8"/>
        <to idref="9"/>
      </object>
      <object class="TransitionEdge">
        <from idref="9"/>
        <to idref="10"/>
      </object>
      <object class="TransitionEdge">
        <from idref="10"/>
        <to idref="11"/>
      </object>
      <object class="TransitionEdge">
        <from idref="11"/>
        <to idref="12"/>
      </object>
      <object class="TransitionEdge">
        <from idref="12"/>
        <to idref="13"/>
      </object>
      <object class="TransitionEdge">
        <from idref="13"/>
        <to idref="14"/>
      </object>
      <object class="TransitionEdge">
        <from idref="14"/>
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
        <to idref="28"/>
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
        <from idref="19"/>
        <to idref="26"/>
      </object>
      <object class="TransitionEdge">
        <from idref="20"/>
        <to idref="22"/>
      </object>
      <object class="TransitionEdge">
        <from idref="22"/>
        <to idref="23"/>
      </object>
      <object class="TransitionEdge">
        <from idref="23"/>
        <to idref="24"/>
      </object>
      <object class="TransitionEdge">
        <from idref="24"/>
        <to idref="25"/>
      </object>
      <object class="TransitionEdge">
        <from idref="26"/>
        <to idref="27"/>
      </object>
      <object class="TransitionEdge">
        <from idref="27"/>
        <to idref="23"/>
      </object>
      <object class="TransitionEdge">
        <from idref="28"/>
        <to idref="23"/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25"/>
</object>
