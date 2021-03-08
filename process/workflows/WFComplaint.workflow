{
	"contents": {
		"4e4d0202-b7f1-4428-b4e5-dbac152fec25": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "WFComplaint",
			"subject": "WFComplaint",
			"customAttributes": [{
				"id": "ComplaintId",
				"label": "Complain tId",
				"type": "string",
				"value": "${context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ID}"
			}, {
				"id": "Country",
				"label": "Country",
				"type": "string",
				"value": "${context.Messages.Message2.ServiceRequestPartyCollection.ServiceRequestParty.CountryCode}"
			}, {
				"id": "Resolver_Group",
				"label": "Resolver Group",
				"type": "string",
				"value": "${context.Resolver_Group}"
			}, {
				"id": "Complaint_Value",
				"label": "Complaint Value",
				"type": "string",
				"value": "${context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_CostAllocationcontent_KUT}"
			}, {
				"id": "ComplaintStatus",
				"label": "Complaint Status",
				"type": "string",
				"value": "${context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode}"
			}, {
				"id": "ImmediateSettlement",
				"label": "Immediate Settlement",
				"type": "string",
				"value": "${context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_ImmediateSettlement_Header_KUT}"
			}, {
				"id": "ComplaintCategory",
				"label": "Complaint Category",
				"type": "string",
				"value": "${context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode}"
			}],
			"name": "WFComplaint",
			"documentation": "Complaints workflow",
			"lastIds": "e427f93f-19ec-48b6-b848-c19b18243101",
			"events": {
				"a048f43e-2701-4c64-a605-0698ccd58d1f": {
					"name": "StartEvent1"
				},
				"dfea7543-f13c-48ff-b635-388953911302": {
					"name": "EndEvent1"
				},
				"909b24a6-6241-4624-ace4-b8d868f42afb": {
					"name": "escalation time reached"
				},
				"35302442-9de9-4305-bbbb-02251c8f3c95": {
					"name": "EndEvent2"
				},
				"a44c7fe7-6576-48fa-b33b-e9126086547f": {
					"name": "Daily mail reminder"
				},
				"3b1b957a-e76c-4b45-b76c-bd19199fa7b5": {
					"name": "daily "
				}
			},
			"activities": {
				"65b45ec1-071e-427b-9ac4-000e2166fa28": {
					"name": "Context building"
				},
				"c353af51-80ea-4e99-9eef-3b0cbe199500": {
					"name": "BMI Complaint Approval workflow "
				},
				"dc60d930-1617-4516-897d-bd30dfd9cdf0": {
					"name": "ApprovalStepDetermination"
				},
				"62f07f74-8d90-4fcb-a0f4-7f04538b01cd": {
					"name": "ButtonDetermination"
				},
				"61e31de4-8b6a-4490-8993-24d9b5867fd9": {
					"name": "status update"
				},
				"621c09d7-0f29-4ce7-83ed-99371d468005": {
					"name": "status determination"
				},
				"cfd4f805-c619-4d7a-8db9-d12fbb0a0a77": {
					"name": "status update 1"
				},
				"6cb64768-f288-4537-a38b-176e043b6ad7": {
					"name": "app/rej/arb"
				},
				"b82000f2-e43b-407f-82ed-f364926167b0": {
					"name": "final status"
				},
				"6c6e1fd8-3ce7-437e-ac67-2181987232d6": {
					"name": "status update"
				},
				"22238418-1be5-4676-945c-47b71576c4ba": {
					"name": "ExclusiveGateway9"
				},
				"5aecaef2-4b2b-4f17-833b-09e778064f4d": {
					"name": "initial status"
				},
				"5f6b9e8f-ac55-413d-ab3b-9a9ac59d4c2d": {
					"name": "approval determination1"
				},
				"2d868259-92f6-4735-b459-c323440d906f": {
					"name": "Esclation Mail"
				},
				"54e83ab6-aa06-486b-b3c2-6f6a57294dd1": {
					"name": "Daily Mail Reminder"
				},
				"4ebda8ab-ac27-4a89-80b5-a549e738f810": {
					"name": "status"
				},
				"378adc1c-7c39-4fd3-aa18-542ec8eea999": {
					"name": "Determine mail"
				},
				"f769f3ac-da7d-4c76-a158-485153296ddd": {
					"name": "EsclationMail"
				},
				"8558f919-23c7-493e-9289-8d42a88e08c0": {
					"name": "Approval Email"
				},
				"a0422c39-8ed0-4e44-b4a7-4644622c9ab7": {
					"name": "Increase counter"
				},
				"7c16fa23-c33e-4692-a7d0-d2dae09c0c92": {
					"name": "Approverlist update"
				},
				"23cf46f7-99d1-445a-af1e-613725218497": {
					"name": "Determine mail"
				},
				"1ceb73f4-3708-422b-bd2c-c4f41af2217e": {
					"name": "manager details"
				},
				"13055a62-1bad-41e4-b7de-aea0e0d6ea63": {
					"name": "Approver Name"
				},
				"1d7efdd9-c627-48d8-9ae8-32e1eee2745c": {
					"name": "Approver result"
				},
				"658abed9-08ad-4d7c-8750-d30411159431": {
					"name": "Name Update"
				},
				"820702de-0c9b-4c3a-8c52-7c5721fce956": {
					"name": "Processor Name"
				},
				"3f9ffe38-49b3-47cb-80a4-a118a097145e": {
					"name": "update processor"
				}
			},
			"sequenceFlows": {
				"81eff7e9-156a-4e48-ac57-c41b0a85b34e": {
					"name": "SequenceFlow9"
				},
				"4af0e3ec-fb17-4e5c-9234-f4265ad5598c": {
					"name": "SequenceFlow23"
				},
				"ff8d8b9a-2f72-4adb-ad14-76598ae96398": {
					"name": "SequenceFlow59"
				},
				"21acd884-d215-4c3e-81d3-2c2a702e1425": {
					"name": "SequenceFlow69"
				},
				"ae5b0e7f-b220-497d-b04c-46f31e7901c5": {
					"name": "SequenceFlow73"
				},
				"b7f8e5b6-c58c-4419-9985-9263484b21fd": {
					"name": "Default"
				},
				"47ae268c-50ee-448e-9f37-d1410d89840b": {
					"name": "SequenceFlow87"
				},
				"43d12add-db47-4ff7-8ea0-5b66fbb05a87": {
					"name": "SequenceFlow88"
				},
				"29dc940e-a816-465f-b41f-4a4e614a69eb": {
					"name": "Approval level Req check"
				},
				"29a930ce-7824-4b28-94e6-4349237e9c98": {
					"name": "Reject"
				},
				"53cab001-ea8b-4ad9-a2f6-329c38b53969": {
					"name": "SequenceFlow96"
				},
				"05fa6f94-385e-426f-b204-270c39109b96": {
					"name": "SequenceFlow97"
				},
				"27664fd4-6b03-4dba-b649-1792ddab3c74": {
					"name": "SequenceFlow98"
				},
				"f93654b1-708d-498b-ad42-717b196d4936": {
					"name": "SequenceFlow105"
				},
				"ec935fdd-524c-4d9d-9b04-82d3fcd897fc": {
					"name": "SequenceFlow115"
				},
				"a75f53e4-b49b-44e9-a01b-1834d1b5bdbc": {
					"name": "SequenceFlow116"
				},
				"d56b4ad7-7f6c-4396-b8e6-7eda6d80b158": {
					"name": "SequenceFlow117"
				},
				"89f2da64-4057-4d1b-9c02-3ff6f067f29c": {
					"name": "SequenceFlow119"
				},
				"0f3ad763-086e-433b-9b0d-320473dca5c9": {
					"name": "complete"
				},
				"69192eba-964a-4fa6-ba75-caf55064eefd": {
					"name": "SequenceFlow124"
				},
				"19800944-ded9-4333-af4f-c4b7eccdf0d3": {
					"name": "SequenceFlow127"
				},
				"e9880043-079a-4824-b0bc-c565cc62ebe8": {
					"name": "SequenceFlow129"
				},
				"573dc87a-df91-4c39-96c6-cf1ec7bf1748": {
					"name": "SequenceFlow130"
				},
				"a693f6ae-5839-4820-9d3d-4aca74c3d54b": {
					"name": "SequenceFlow131"
				},
				"02a9db51-8db6-4a35-b2ba-070e5906ba01": {
					"name": "SequenceFlow133"
				},
				"bb988295-9700-4370-8293-b37242801e53": {
					"name": "SequenceFlow135"
				},
				"fb95e4fe-4a1f-4d4e-bc92-06660022028a": {
					"name": "SequenceFlow137"
				},
				"083f95d2-523e-4b7f-8018-221c047dc88e": {
					"name": "SequenceFlow138"
				},
				"1ff4c7dc-3ed4-47c1-95a7-768502c61bad": {
					"name": "SequenceFlow139"
				},
				"e05e3f6b-9108-437a-a437-02b1880db8d4": {
					"name": "SequenceFlow140"
				},
				"358c1072-25f7-414b-ae4e-2b59ae6b8f7d": {
					"name": "SequenceFlow144"
				},
				"c5342d5b-d0f1-4879-9427-ee6df649aa3c": {
					"name": "SequenceFlow149"
				},
				"6d948edb-2f32-41dd-9b39-04412a3d4622": {
					"name": "SequenceFlow150"
				},
				"a24e4227-b2d9-4242-819e-0fba0e4f494e": {
					"name": "SequenceFlow155"
				},
				"eb5e55cf-4e2f-46e9-a8e1-f6170bc06a7e": {
					"name": "SequenceFlow156"
				}
			},
			"diagrams": {
				"83b35ba5-cfe5-43bb-8dbf-e2ef79d3f30e": {}
			}
		},
		"a048f43e-2701-4c64-a605-0698ccd58d1f": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"e5aaaeef-fca5-42b1-95b9-f0a888de074a": {}
			}
		},
		"dfea7543-f13c-48ff-b635-388953911302": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"909b24a6-6241-4624-ace4-b8d868f42afb": {
			"classDefinition": "com.sap.bpm.wfs.BoundaryEvent",
			"isCanceling": false,
			"id": "boundarytimerevent1",
			"name": "escalation time reached",
			"attachedToRef": "c353af51-80ea-4e99-9eef-3b0cbe199500",
			"eventDefinitions": {
				"37226669-d699-42c1-8f1a-0ca07b2a2064": {}
			}
		},
		"35302442-9de9-4305-bbbb-02251c8f3c95": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2"
		},
		"a44c7fe7-6576-48fa-b33b-e9126086547f": {
			"classDefinition": "com.sap.bpm.wfs.BoundaryEvent",
			"isCanceling": false,
			"id": "boundarytimerevent2",
			"name": "Daily mail reminder",
			"attachedToRef": "c353af51-80ea-4e99-9eef-3b0cbe199500",
			"eventDefinitions": {
				"3648bd2e-e653-4a58-8fe1-80a9d99ce6a0": {}
			}
		},
		"3b1b957a-e76c-4b45-b76c-bd19199fa7b5": {
			"classDefinition": "com.sap.bpm.wfs.IntermediateCatchEvent",
			"id": "intermediatetimerevent4",
			"name": "daily ",
			"eventDefinitions": {
				"944c1e80-661d-4d66-aeef-3190ebb82de3": {}
			}
		},
		"65b45ec1-071e-427b-9ac4-000e2166fa28": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFComplaint/ComplaintDetail.js",
			"id": "scripttask1",
			"name": "Context building",
			"documentation": "Context building"
		},
		"c353af51-80ea-4e99-9eef-3b0cbe199500": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "${context.ComplaintId} ",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbmiscpappscomplaintforms/com.sap.bmi.scp.apps.complaintforms",
			"recipientUsers": "${context.CurrentUser}",
			"recipientGroups": "",
			"userInterfaceParams": [],
			"id": "usertask1",
			"name": "BMI Complaint Approval workflow ",
			"documentation": "Approver for complaint",
			"dueDateRef": "d119e441-24a0-4d98-8be1-91fc6578ccd5"
		},
		"dc60d930-1617-4516-897d-bd30dfd9cdf0": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BPMRule_CF",
			"path": "/rules-service/rest/v2/workingset-rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.request}",
			"responseVariable": "${context.response}",
			"id": "servicetask1",
			"name": "ApprovalStepDetermination",
			"apiReference": "b1341450-b04e-44c3-b480-5a24af112f3d"
		},
		"62f07f74-8d90-4fcb-a0f4-7f04538b01cd": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BPMRule_CF",
			"path": "/rules-service/rest/v2/workingset-rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.ButtonIf}",
			"responseVariable": "${context.ButtonText}",
			"id": "servicetask4",
			"name": "ButtonDetermination",
			"apiReference": "8737d96d-2c01-4a0c-8b56-8f114974f54c"
		},
		"61e31de4-8b6a-4490-8993-24d9b5867fd9": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI_CLONING",
			"path": "/http/SCP/C4C/Approval/PPR",
			"httpMethod": "POST",
			"xsrfPath": "",
			"requestVariable": "${context.StatusUpdate}",
			"responseVariable": "",
			"id": "servicetask5",
			"name": "status update"
		},
		"621c09d7-0f29-4ce7-83ed-99371d468005": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFComplaint/status.js",
			"id": "scripttask4",
			"name": "status determination"
		},
		"cfd4f805-c619-4d7a-8db9-d12fbb0a0a77": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI_CLONING",
			"path": "/http/SCP/C4C/Approval/PPR",
			"httpMethod": "POST",
			"requestVariable": "${context.StatusUpdate}",
			"id": "servicetask7",
			"name": "status update 1"
		},
		"6cb64768-f288-4537-a38b-176e043b6ad7": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway8",
			"name": "app/rej/arb",
			"default": "b7f8e5b6-c58c-4419-9985-9263484b21fd"
		},
		"b82000f2-e43b-407f-82ed-f364926167b0": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFComplaint/final.js",
			"id": "scripttask8",
			"name": "final status"
		},
		"6c6e1fd8-3ce7-437e-ac67-2181987232d6": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI_CLONING",
			"path": "/http/SCP/C4C/Approval/PPR",
			"httpMethod": "POST",
			"requestVariable": "${context.StatusUpdate}",
			"id": "servicetask12",
			"name": "status update"
		},
		"22238418-1be5-4676-945c-47b71576c4ba": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway9",
			"name": "ExclusiveGateway9",
			"default": "27664fd4-6b03-4dba-b649-1792ddab3c74"
		},
		"5aecaef2-4b2b-4f17-833b-09e778064f4d": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFComplaint/initial_status.js",
			"id": "scripttask9",
			"name": "initial status"
		},
		"5f6b9e8f-ac55-413d-ab3b-9a9ac59d4c2d": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BPMRule_CF",
			"path": "/rules-service/rest/v2/workingset-rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.ApproverIdIf}",
			"responseVariable": "${context.ApproverIdRes}",
			"id": "servicetask13",
			"name": "approval determination1",
			"apiReference": "fcd384f5-954c-4ddc-871f-b125cb739d8f"
		},
		"2d868259-92f6-4735-b459-c323440d906f": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI_CLONING",
			"path": "/http/Email/Notification/CPI",
			"httpMethod": "POST",
			"requestVariable": "${context.Mail1}",
			"id": "servicetask14",
			"name": "Esclation Mail"
		},
		"54e83ab6-aa06-486b-b3c2-6f6a57294dd1": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI_CLONING",
			"path": "/http/Email/Notification/CPI",
			"httpMethod": "POST",
			"requestVariable": "${context.Mail}",
			"id": "servicetask15",
			"name": "Daily Mail Reminder"
		},
		"4ebda8ab-ac27-4a89-80b5-a549e738f810": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway13",
			"name": "status",
			"default": "19800944-ded9-4333-af4f-c4b7eccdf0d3"
		},
		"378adc1c-7c39-4fd3-aa18-542ec8eea999": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFComplaint/ApproverEmail.js",
			"id": "scripttask11",
			"name": "Determine mail"
		},
		"f769f3ac-da7d-4c76-a158-485153296ddd": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFComplaint/EsclationMail.js",
			"id": "scripttask12",
			"name": "EsclationMail"
		},
		"8558f919-23c7-493e-9289-8d42a88e08c0": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFComplaint/Approval_email1.js",
			"id": "scripttask13",
			"name": "Approval Email"
		},
		"a0422c39-8ed0-4e44-b4a7-4644622c9ab7": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFComplaint/Initial counter.js",
			"id": "scripttask15",
			"name": "Increase counter"
		},
		"7c16fa23-c33e-4692-a7d0-d2dae09c0c92": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFComplaint/approverlist.js",
			"id": "scripttask16",
			"name": "Approverlist update"
		},
		"23cf46f7-99d1-445a-af1e-613725218497": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFComplaint/determinemail.js",
			"id": "scripttask17",
			"name": "Determine mail"
		},
		"1ceb73f4-3708-422b-bd2c-c4f41af2217e": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI_CLONING",
			"path": "/http/SCP/IAS/UserDetails",
			"httpMethod": "POST",
			"requestVariable": "${context.UserEmailIdIf1}",
			"responseVariable": "${context.UserEmailId1}",
			"id": "servicetask17",
			"name": "manager details"
		},
		"13055a62-1bad-41e4-b7de-aea0e0d6ea63": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI_CLONING",
			"path": "/http/SCP/IAS/UserDetails",
			"httpMethod": "POST",
			"requestVariable": "${context.UserEmailIdIf}",
			"responseVariable": "${context.UserEmailId}",
			"id": "servicetask18",
			"name": "Approver Name"
		},
		"1d7efdd9-c627-48d8-9ae8-32e1eee2745c": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFComplaint/Approver_result_name.js",
			"id": "scripttask18",
			"name": "Approver result"
		},
		"658abed9-08ad-4d7c-8750-d30411159431": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFComplaint/nameupdate.js",
			"id": "scripttask19",
			"name": "Name Update"
		},
		"820702de-0c9b-4c3a-8c52-7c5721fce956": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI_CLONING",
			"path": "/http/SCP/IAS/UserDetails",
			"httpMethod": "POST",
			"requestVariable": "${context.UserEmailIdIf2}",
			"responseVariable": "${context.UserEmailId2}",
			"id": "servicetask20",
			"name": "Processor Name"
		},
		"3f9ffe38-49b3-47cb-80a4-a118a097145e": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFComplaint/update_processor.js",
			"id": "scripttask20",
			"name": "update processor"
		},
		"81eff7e9-156a-4e48-ac57-c41b0a85b34e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "a048f43e-2701-4c64-a605-0698ccd58d1f",
			"targetRef": "65b45ec1-071e-427b-9ac4-000e2166fa28"
		},
		"4af0e3ec-fb17-4e5c-9234-f4265ad5598c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow23",
			"name": "SequenceFlow23",
			"sourceRef": "dc60d930-1617-4516-897d-bd30dfd9cdf0",
			"targetRef": "5aecaef2-4b2b-4f17-833b-09e778064f4d"
		},
		"ff8d8b9a-2f72-4adb-ad14-76598ae96398": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow59",
			"name": "SequenceFlow59",
			"sourceRef": "61e31de4-8b6a-4490-8993-24d9b5867fd9",
			"targetRef": "a0422c39-8ed0-4e44-b4a7-4644622c9ab7"
		},
		"21acd884-d215-4c3e-81d3-2c2a702e1425": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow69",
			"name": "SequenceFlow69",
			"sourceRef": "cfd4f805-c619-4d7a-8db9-d12fbb0a0a77",
			"targetRef": "6cb64768-f288-4537-a38b-176e043b6ad7"
		},
		"ae5b0e7f-b220-497d-b04c-46f31e7901c5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow73",
			"name": "SequenceFlow73",
			"sourceRef": "c353af51-80ea-4e99-9eef-3b0cbe199500",
			"targetRef": "7c16fa23-c33e-4692-a7d0-d2dae09c0c92"
		},
		"b7f8e5b6-c58c-4419-9985-9263484b21fd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow84",
			"name": "Default",
			"sourceRef": "6cb64768-f288-4537-a38b-176e043b6ad7",
			"targetRef": "b82000f2-e43b-407f-82ed-f364926167b0"
		},
		"47ae268c-50ee-448e-9f37-d1410d89840b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow87",
			"name": "SequenceFlow87",
			"sourceRef": "65b45ec1-071e-427b-9ac4-000e2166fa28",
			"targetRef": "62f07f74-8d90-4fcb-a0f4-7f04538b01cd"
		},
		"43d12add-db47-4ff7-8ea0-5b66fbb05a87": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow88",
			"name": "SequenceFlow88",
			"sourceRef": "62f07f74-8d90-4fcb-a0f4-7f04538b01cd",
			"targetRef": "dc60d930-1617-4516-897d-bd30dfd9cdf0"
		},
		"29dc940e-a816-465f-b41f-4a4e614a69eb": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.ApprovalLevel <= context.ApprovalStepsReq}",
			"id": "sequenceflow89",
			"name": "Approval level Req check",
			"sourceRef": "6cb64768-f288-4537-a38b-176e043b6ad7",
			"targetRef": "22238418-1be5-4676-945c-47b71576c4ba"
		},
		"29a930ce-7824-4b28-94e6-4349237e9c98": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.Arbitrated=='Rejected'}",
			"id": "sequenceflow95",
			"name": "Reject",
			"sourceRef": "22238418-1be5-4676-945c-47b71576c4ba",
			"targetRef": "b82000f2-e43b-407f-82ed-f364926167b0"
		},
		"53cab001-ea8b-4ad9-a2f6-329c38b53969": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow96",
			"name": "SequenceFlow96",
			"sourceRef": "b82000f2-e43b-407f-82ed-f364926167b0",
			"targetRef": "6c6e1fd8-3ce7-437e-ac67-2181987232d6"
		},
		"05fa6f94-385e-426f-b204-270c39109b96": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow97",
			"name": "SequenceFlow97",
			"sourceRef": "6c6e1fd8-3ce7-437e-ac67-2181987232d6",
			"targetRef": "dfea7543-f13c-48ff-b635-388953911302"
		},
		"27664fd4-6b03-4dba-b649-1792ddab3c74": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow98",
			"name": "SequenceFlow98",
			"sourceRef": "22238418-1be5-4676-945c-47b71576c4ba",
			"targetRef": "a0422c39-8ed0-4e44-b4a7-4644622c9ab7"
		},
		"f93654b1-708d-498b-ad42-717b196d4936": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow105",
			"name": "SequenceFlow105",
			"sourceRef": "5aecaef2-4b2b-4f17-833b-09e778064f4d",
			"targetRef": "5f6b9e8f-ac55-413d-ab3b-9a9ac59d4c2d"
		},
		"ec935fdd-524c-4d9d-9b04-82d3fcd897fc": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow115",
			"name": "SequenceFlow115",
			"sourceRef": "621c09d7-0f29-4ce7-83ed-99371d468005",
			"targetRef": "61e31de4-8b6a-4490-8993-24d9b5867fd9"
		},
		"a75f53e4-b49b-44e9-a01b-1834d1b5bdbc": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow116",
			"name": "SequenceFlow116",
			"sourceRef": "909b24a6-6241-4624-ace4-b8d868f42afb",
			"targetRef": "23cf46f7-99d1-445a-af1e-613725218497"
		},
		"d56b4ad7-7f6c-4396-b8e6-7eda6d80b158": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow117",
			"name": "SequenceFlow117",
			"sourceRef": "2d868259-92f6-4735-b459-c323440d906f",
			"targetRef": "35302442-9de9-4305-bbbb-02251c8f3c95"
		},
		"89f2da64-4057-4d1b-9c02-3ff6f067f29c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow119",
			"name": "SequenceFlow119",
			"sourceRef": "a44c7fe7-6576-48fa-b33b-e9126086547f",
			"targetRef": "378adc1c-7c39-4fd3-aa18-542ec8eea999"
		},
		"0f3ad763-086e-433b-9b0d-320473dca5c9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.StatusUpdate.SettlementTrackingUpdate.ApprovalList.CurrentStatus=='Complete'}",
			"id": "sequenceflow123",
			"name": "complete",
			"sourceRef": "4ebda8ab-ac27-4a89-80b5-a549e738f810",
			"targetRef": "35302442-9de9-4305-bbbb-02251c8f3c95"
		},
		"69192eba-964a-4fa6-ba75-caf55064eefd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow124",
			"name": "SequenceFlow124",
			"sourceRef": "54e83ab6-aa06-486b-b3c2-6f6a57294dd1",
			"targetRef": "3b1b957a-e76c-4b45-b76c-bd19199fa7b5"
		},
		"19800944-ded9-4333-af4f-c4b7eccdf0d3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow127",
			"name": "SequenceFlow127",
			"sourceRef": "4ebda8ab-ac27-4a89-80b5-a549e738f810",
			"targetRef": "54e83ab6-aa06-486b-b3c2-6f6a57294dd1"
		},
		"e9880043-079a-4824-b0bc-c565cc62ebe8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow129",
			"name": "SequenceFlow129",
			"sourceRef": "3b1b957a-e76c-4b45-b76c-bd19199fa7b5",
			"targetRef": "4ebda8ab-ac27-4a89-80b5-a549e738f810"
		},
		"573dc87a-df91-4c39-96c6-cf1ec7bf1748": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow130",
			"name": "SequenceFlow130",
			"sourceRef": "378adc1c-7c39-4fd3-aa18-542ec8eea999",
			"targetRef": "8558f919-23c7-493e-9289-8d42a88e08c0"
		},
		"a693f6ae-5839-4820-9d3d-4aca74c3d54b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow131",
			"name": "SequenceFlow131",
			"sourceRef": "f769f3ac-da7d-4c76-a158-485153296ddd",
			"targetRef": "2d868259-92f6-4735-b459-c323440d906f"
		},
		"02a9db51-8db6-4a35-b2ba-070e5906ba01": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow133",
			"name": "SequenceFlow133",
			"sourceRef": "8558f919-23c7-493e-9289-8d42a88e08c0",
			"targetRef": "54e83ab6-aa06-486b-b3c2-6f6a57294dd1"
		},
		"bb988295-9700-4370-8293-b37242801e53": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow135",
			"name": "SequenceFlow135",
			"sourceRef": "5f6b9e8f-ac55-413d-ab3b-9a9ac59d4c2d",
			"targetRef": "1d7efdd9-c627-48d8-9ae8-32e1eee2745c"
		},
		"fb95e4fe-4a1f-4d4e-bc92-06660022028a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow137",
			"name": "SequenceFlow137",
			"sourceRef": "a0422c39-8ed0-4e44-b4a7-4644622c9ab7",
			"targetRef": "c353af51-80ea-4e99-9eef-3b0cbe199500"
		},
		"083f95d2-523e-4b7f-8018-221c047dc88e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow138",
			"name": "SequenceFlow138",
			"sourceRef": "7c16fa23-c33e-4692-a7d0-d2dae09c0c92",
			"targetRef": "820702de-0c9b-4c3a-8c52-7c5721fce956"
		},
		"1ff4c7dc-3ed4-47c1-95a7-768502c61bad": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow139",
			"name": "SequenceFlow139",
			"sourceRef": "23cf46f7-99d1-445a-af1e-613725218497",
			"targetRef": "1ceb73f4-3708-422b-bd2c-c4f41af2217e"
		},
		"e05e3f6b-9108-437a-a437-02b1880db8d4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow140",
			"name": "SequenceFlow140",
			"sourceRef": "1ceb73f4-3708-422b-bd2c-c4f41af2217e",
			"targetRef": "f769f3ac-da7d-4c76-a158-485153296ddd"
		},
		"358c1072-25f7-414b-ae4e-2b59ae6b8f7d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow144",
			"name": "SequenceFlow144",
			"sourceRef": "1d7efdd9-c627-48d8-9ae8-32e1eee2745c",
			"targetRef": "13055a62-1bad-41e4-b7de-aea0e0d6ea63"
		},
		"c5342d5b-d0f1-4879-9427-ee6df649aa3c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow149",
			"name": "SequenceFlow149",
			"sourceRef": "820702de-0c9b-4c3a-8c52-7c5721fce956",
			"targetRef": "3f9ffe38-49b3-47cb-80a4-a118a097145e"
		},
		"6d948edb-2f32-41dd-9b39-04412a3d4622": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow150",
			"name": "SequenceFlow150",
			"sourceRef": "3f9ffe38-49b3-47cb-80a4-a118a097145e",
			"targetRef": "cfd4f805-c619-4d7a-8db9-d12fbb0a0a77"
		},
		"a24e4227-b2d9-4242-819e-0fba0e4f494e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow155",
			"name": "SequenceFlow155",
			"sourceRef": "13055a62-1bad-41e4-b7de-aea0e0d6ea63",
			"targetRef": "658abed9-08ad-4d7c-8750-d30411159431"
		},
		"eb5e55cf-4e2f-46e9-a8e1-f6170bc06a7e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow156",
			"name": "SequenceFlow156",
			"sourceRef": "658abed9-08ad-4d7c-8750-d30411159431",
			"targetRef": "621c09d7-0f29-4ce7-83ed-99371d468005"
		},
		"83b35ba5-cfe5-43bb-8dbf-e2ef79d3f30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"2eb9f558-05dd-498e-a60e-2a5a01b22f5d": {},
				"a6033764-f8ef-45ce-8a40-c8a2620e7e85": {},
				"328c61d4-c35b-44a1-b16f-daf10026f76f": {},
				"b70a0ec1-f3f5-49e6-804c-2d1f2b4199ac": {},
				"b51b80d9-e825-4547-a5f9-411144999961": {},
				"fc17f7b1-a9ab-4b51-8088-dbd3e311c051": {},
				"febfbbe7-8914-474d-90a1-6716eb393bc4": {},
				"3a81bf26-2775-4413-a5c5-b0a1a83a52d4": {},
				"b76d79e0-60f9-4dff-a058-4f8297c44561": {},
				"4872b741-3da7-4926-afa7-45846e02f99f": {},
				"3a061b6d-6b0c-40f5-ba04-775a95d690a3": {},
				"27389a20-3aa8-4bfd-b0bd-38f884b32c87": {},
				"3030b34f-dab2-4183-acc2-cd69e29b3e4b": {},
				"bd759583-e6b0-438f-b08a-3ed22dbdb672": {},
				"62129f4c-ba5c-4c35-a0a4-342bbc271e82": {},
				"8c969697-9be9-4b7a-bb47-7f02a04c87d8": {},
				"e37ddd95-9f24-4b59-b852-bb5d3f8046e5": {},
				"fff96356-a1cd-4c18-bea9-780837318fb1": {},
				"a42ec019-9f7f-46ee-a249-ca2de0267bae": {},
				"69b72b17-8d03-4cdb-ac60-e50fe807b7a8": {},
				"bbdce832-b58f-4d24-8a15-baed27b20415": {},
				"a741fa62-56fc-47e0-b5f5-481f947cc85a": {},
				"07eb3755-f538-42d0-aba3-98751d889088": {},
				"ea70d7ce-2a35-43e3-9d24-d6aee0f5fcc6": {},
				"4a317d88-84fd-42ae-86dc-cb62d69a6cab": {},
				"014f0912-6894-400e-98c7-3d5b6e550716": {},
				"7d5f3a0a-4dc0-4dc3-a9c4-7bfa1e0c727a": {},
				"0b4d6512-18f2-41e5-a925-e0c12a07baea": {},
				"e8bfe1ba-bc00-4b7e-b903-6332e9d25da4": {},
				"f911f7c3-6be7-437a-bba0-af50e9388c69": {},
				"50e4346b-a3e1-4a3c-a4ab-27f14767bb1b": {},
				"4c8b37da-a94c-42d6-87e1-e52690144ee8": {},
				"25d5950e-1977-420d-a2b8-0b4ec576400d": {},
				"1d96c5f1-5d32-49c3-9feb-7e68ac1c0bd7": {},
				"340cd367-1269-4d51-b244-3d771bc147b4": {},
				"3d796852-f720-4a7b-b7db-a5ce76cf15ec": {},
				"f9191cd0-6889-4080-a3fc-d6e6924ffb9a": {},
				"5186563f-d010-4c6d-9bff-01cca92feaa2": {},
				"c56f5111-b00e-4cf2-90f6-5d70257366ca": {},
				"fbdde236-4d9b-486a-993f-90c77af4ed5d": {},
				"06368c43-284e-4edd-ba48-0704afd010ea": {},
				"446ff5c6-0681-47d9-9ebe-8772e8745282": {},
				"2ff8f7a6-d342-4c80-956c-d13fa19c1b1a": {},
				"5e6e39ef-32bf-4bb3-9d7f-8713e3918e78": {},
				"0b0fca47-d0d6-4d73-ad5e-5c37e110a821": {},
				"81fbde3a-f1da-4682-816d-4c6512207f94": {},
				"8d2633e0-dec8-49a9-b77d-779bf499905e": {},
				"8517d93d-771e-494a-a5f5-09b4f00221b7": {},
				"253d1d3d-bbd3-4cae-b73e-fc4930809431": {},
				"a1ea40fd-dcb0-4aa3-92e3-f4f0f753f615": {},
				"a1367d2d-8679-4764-806a-f096148529b6": {},
				"e2268928-1a18-476b-aacb-df16e4da1886": {},
				"86c56b32-f915-44bc-be7b-a6f3baf905f7": {},
				"d46586dc-3d31-4d7a-838d-c69cb93f6777": {},
				"2c09c0e2-97e5-443c-a4dc-e5d7c35835ad": {},
				"57a10d32-179e-456a-a975-9e7ff4b69e77": {},
				"ac3f688c-d15c-4d05-a27e-2e7fe4beab61": {},
				"79787b40-3b5a-4283-af32-356ae3951a98": {},
				"b18ca5e8-d9f0-44ee-a810-1ae0fc23201c": {},
				"81c9607e-2b79-41bf-b4f2-652d9e967d5b": {},
				"b4a466a0-26b6-4aca-8a9b-dddf4a4f27aa": {},
				"2e002ef3-f075-442c-ba53-9af100075b9d": {},
				"61def9c5-a201-4365-96c3-bc9d899f2dee": {},
				"b1e0b706-5ce9-4b3c-be11-d4de1beb81f8": {},
				"d546440b-7928-4c40-9eb5-1258b716fdb0": {},
				"d925033c-d1fc-4bf7-a827-ffb8c0a382f4": {},
				"ba95d462-baae-49fd-916d-267acff45d8b": {}
			}
		},
		"e5aaaeef-fca5-42b1-95b9-f0a888de074a": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/WFComplaint/CPIJSON.json",
			"id": "default-start-context"
		},
		"37226669-d699-42c1-8f1a-0ca07b2a2064": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "P7D",
			"id": "timereventdefinition6"
		},
		"3648bd2e-e653-4a58-8fe1-80a9d99ce6a0": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "PT0M",
			"id": "timereventdefinition7"
		},
		"944c1e80-661d-4d66-aeef-3190ebb82de3": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "P1D",
			"id": "timereventdefinition8"
		},
		"2eb9f558-05dd-498e-a60e-2a5a01b22f5d": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 476.9999985098839,
			"y": 12,
			"width": 32,
			"height": 32,
			"object": "a048f43e-2701-4c64-a605-0698ccd58d1f"
		},
		"a6033764-f8ef-45ce-8a40-c8a2620e7e85": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 475.4999985098839,
			"y": 1473.9999916553497,
			"width": 35,
			"height": 35,
			"object": "dfea7543-f13c-48ff-b635-388953911302"
		},
		"328c61d4-c35b-44a1-b16f-daf10026f76f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 464.9999985098839,
			"y": 91,
			"width": 100,
			"height": 60,
			"object": "65b45ec1-071e-427b-9ac4-000e2166fa28"
		},
		"b70a0ec1-f3f5-49e6-804c-2d1f2b4199ac": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 420.4999988079071,
			"y": 223.9999988079071,
			"width": 100,
			"height": 60,
			"object": "c353af51-80ea-4e99-9eef-3b0cbe199500",
			"symbols": {
				"a3603084-5516-4f00-8389-0a7865c8cc6d": {},
				"c9050752-7232-4638-b3b6-b192dd8fd56a": {}
			}
		},
		"b51b80d9-e825-4547-a5f9-411144999961": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "492.9999985098839,44 493,67.75 515,67.75 514.9999985098839,91",
			"sourceSymbol": "2eb9f558-05dd-498e-a60e-2a5a01b22f5d",
			"targetSymbol": "328c61d4-c35b-44a1-b16f-daf10026f76f",
			"object": "81eff7e9-156a-4e48-ac57-c41b0a85b34e"
		},
		"fc17f7b1-a9ab-4b51-8088-dbd3e311c051": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1310.9999982118607,
			"y": 325.9999976158142,
			"width": 100,
			"height": 60,
			"object": "dc60d930-1617-4516-897d-bd30dfd9cdf0"
		},
		"febfbbe7-8914-474d-90a1-6716eb393bc4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1360.9999982118607,385.9999976158142 1361,425.75 1411,425.75 1410.9999982118607,464.9999964237213",
			"sourceSymbol": "fc17f7b1-a9ab-4b51-8088-dbd3e311c051",
			"targetSymbol": "7d5f3a0a-4dc0-4dc3-a9c4-7bfa1e0c727a",
			"object": "4af0e3ec-fb17-4e5c-9234-f4265ad5598c"
		},
		"3a81bf26-2775-4413-a5c5-b0a1a83a52d4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1173.4999976158142,
			"y": 90.9999988079071,
			"width": 100,
			"height": 60,
			"object": "62f07f74-8d90-4fcb-a0f4-7f04538b01cd"
		},
		"b76d79e0-60f9-4dff-a058-4f8297c44561": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 679.9999982118607,
			"y": 1013.9999940395355,
			"width": 100,
			"height": 60,
			"object": "61e31de4-8b6a-4490-8993-24d9b5867fd9"
		},
		"4872b741-3da7-4926-afa7-45846e02f99f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 990.9999982118607,
			"y": 978.9999952316284,
			"width": 100,
			"height": 60,
			"object": "621c09d7-0f29-4ce7-83ed-99371d468005"
		},
		"3a061b6d-6b0c-40f5-ba04-775a95d690a3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "729.9999982118607,1073.9999940395355 729.9999982118607,1153.999993443489 433.8333318432172,1153.999993443489 433.8333318432172,1233.9999928474426",
			"sourceSymbol": "b76d79e0-60f9-4dff-a058-4f8297c44561",
			"targetSymbol": "a1ea40fd-dcb0-4aa3-92e3-f4f0f753f615",
			"object": "ff8d8b9a-2f72-4adb-ad14-76598ae96398"
		},
		"27389a20-3aa8-4bfd-b0bd-38f884b32c87": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 148.99999821186066,
			"y": 573.9999964237213,
			"width": 100,
			"height": 60,
			"object": "cfd4f805-c619-4d7a-8db9-d12fbb0a0a77"
		},
		"3030b34f-dab2-4183-acc2-cd69e29b3e4b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "198.99999821186066,633.9999964237213 198.99999821186066,713.9999958276749 68.99999940395355,713.9999958276749 68.99999940395355,892.9999952316284",
			"sourceSymbol": "27389a20-3aa8-4bfd-b0bd-38f884b32c87",
			"targetSymbol": "62129f4c-ba5c-4c35-a0a4-342bbc271e82",
			"object": "21acd884-d215-4c3e-81d3-2c2a702e1425"
		},
		"bd759583-e6b0-438f-b08a-3ed22dbdb672": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "470.4999988079071,253.9999988079071 470.4999995203579,381 258.0000007124508,381.0000011920929 258,264 45.99999821186066,263.9999976158142",
			"sourceSymbol": "b70a0ec1-f3f5-49e6-804c-2d1f2b4199ac",
			"targetSymbol": "e2268928-1a18-476b-aacb-df16e4da1886",
			"object": "ae5b0e7f-b220-497d-b04c-46f31e7901c5"
		},
		"62129f4c-ba5c-4c35-a0a4-342bbc271e82": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 47.99999940395355,
			"y": 892.9999952316284,
			"object": "6cb64768-f288-4537-a38b-176e043b6ad7"
		},
		"8c969697-9be9-4b7a-bb47-7f02a04c87d8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "68.99999940395355,934.9999952316284 69,1119.5 195.5,1119.5 195.49999850988388,1303.9999928474426",
			"sourceSymbol": "62129f4c-ba5c-4c35-a0a4-342bbc271e82",
			"targetSymbol": "bbdce832-b58f-4d24-8a15-baed27b20415",
			"object": "b7f8e5b6-c58c-4419-9985-9263484b21fd"
		},
		"e37ddd95-9f24-4b59-b852-bb5d3f8046e5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "514.9999985098839,151 515,201.5 869.25,201.5 869.25,40.5 1223.5,40.5 1223.4999976158142,90.9999988079071",
			"sourceSymbol": "328c61d4-c35b-44a1-b16f-daf10026f76f",
			"targetSymbol": "3a81bf26-2775-4413-a5c5-b0a1a83a52d4",
			"object": "47ae268c-50ee-448e-9f37-d1410d89840b"
		},
		"fff96356-a1cd-4c18-bea9-780837318fb1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1223.4999976158142,150.9999988079071 1223.5,238.75 1361,238.75 1360.9999982118607,325.9999976158142",
			"sourceSymbol": "3a81bf26-2775-4413-a5c5-b0a1a83a52d4",
			"targetSymbol": "fc17f7b1-a9ab-4b51-8088-dbd3e311c051",
			"object": "43d12add-db47-4ff7-8ea0-5b66fbb05a87"
		},
		"a42ec019-9f7f-46ee-a249-ca2de0267bae": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "68.99999940395355,934.9999952316284 68.99999940395355,727 137.99999940395355,727 137.99999940395355,1022.9999940395355",
			"sourceSymbol": "62129f4c-ba5c-4c35-a0a4-342bbc271e82",
			"targetSymbol": "4a317d88-84fd-42ae-86dc-cb62d69a6cab",
			"object": "29dc940e-a816-465f-b41f-4a4e614a69eb"
		},
		"69b72b17-8d03-4cdb-ac60-e50fe807b7a8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "138,1037 195.5,1037 195.49999850988388,1303.9999928474426",
			"sourceSymbol": "4a317d88-84fd-42ae-86dc-cb62d69a6cab",
			"targetSymbol": "bbdce832-b58f-4d24-8a15-baed27b20415",
			"object": "29a930ce-7824-4b28-94e6-4349237e9c98"
		},
		"bbdce832-b58f-4d24-8a15-baed27b20415": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 145.49999850988388,
			"y": 1303.9999928474426,
			"width": 100,
			"height": 60,
			"object": "b82000f2-e43b-407f-82ed-f364926167b0"
		},
		"a741fa62-56fc-47e0-b5f5-481f947cc85a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "195.49999850988388,1363.9999928474426 195.5,1414.5 344.25,1414.5 344.25,1313.5 493,1313.5 492.9999985098839,1363.9999916553497",
			"sourceSymbol": "bbdce832-b58f-4d24-8a15-baed27b20415",
			"targetSymbol": "07eb3755-f538-42d0-aba3-98751d889088",
			"object": "53cab001-ea8b-4ad9-a2f6-329c38b53969"
		},
		"07eb3755-f538-42d0-aba3-98751d889088": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 442.9999985098839,
			"y": 1363.9999916553497,
			"width": 100,
			"height": 60,
			"object": "6c6e1fd8-3ce7-437e-ac67-2181987232d6"
		},
		"ea70d7ce-2a35-43e3-9d24-d6aee0f5fcc6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "492.9999985098839,1423.9999916553497 492.9999985098839,1473.9999916553497",
			"sourceSymbol": "07eb3755-f538-42d0-aba3-98751d889088",
			"targetSymbol": "a6033764-f8ef-45ce-8a40-c8a2620e7e85",
			"object": "05fa6f94-385e-426f-b204-270c39109b96"
		},
		"4a317d88-84fd-42ae-86dc-cb62d69a6cab": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 116.99999940395355,
			"y": 1022.9999940395355,
			"object": "22238418-1be5-4676-945c-47b71576c4ba"
		},
		"014f0912-6894-400e-98c7-3d5b6e550716": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137.99999940395355,1064.9999940395355 137.99999940395355,1153.999993443489 433.8333318432172,1153.999993443489 433.8333318432172,1233.9999928474426",
			"sourceSymbol": "4a317d88-84fd-42ae-86dc-cb62d69a6cab",
			"targetSymbol": "a1ea40fd-dcb0-4aa3-92e3-f4f0f753f615",
			"object": "27664fd4-6b03-4dba-b649-1792ddab3c74"
		},
		"7d5f3a0a-4dc0-4dc3-a9c4-7bfa1e0c727a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1360.9999982118607,
			"y": 464.9999964237213,
			"width": 100,
			"height": 60,
			"object": "5aecaef2-4b2b-4f17-833b-09e778064f4d"
		},
		"0b4d6512-18f2-41e5-a925-e0c12a07baea": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1445.9999970197678,
			"y": 587.9999952316284,
			"width": 100,
			"height": 60,
			"object": "5f6b9e8f-ac55-413d-ab3b-9a9ac59d4c2d"
		},
		"e8bfe1ba-bc00-4b7e-b903-6332e9d25da4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1410.9999982118607,524.9999964237213 1411,556.75 1496,556.75 1495.9999970197678,587.9999952316284",
			"sourceSymbol": "7d5f3a0a-4dc0-4dc3-a9c4-7bfa1e0c727a",
			"targetSymbol": "0b4d6512-18f2-41e5-a925-e0c12a07baea",
			"object": "f93654b1-708d-498b-ad42-717b196d4936"
		},
		"f911f7c3-6be7-437a-bba0-af50e9388c69": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1041,1006 887,1006 887,963.5 730,963.5 729.9999982118607,1013.9999940395355",
			"sourceSymbol": "4872b741-3da7-4926-afa7-45846e02f99f",
			"targetSymbol": "b76d79e0-60f9-4dff-a058-4f8297c44561",
			"object": "ec935fdd-524c-4d9d-9b04-82d3fcd897fc"
		},
		"50e4346b-a3e1-4a3c-a4ab-27f14767bb1b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 208.99999940395355,
			"y": 1013.9999940395355,
			"width": 100,
			"height": 60,
			"object": "2d868259-92f6-4735-b459-c323440d906f"
		},
		"4c8b37da-a94c-42d6-87e1-e52690144ee8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "404.4999988079071,256.9999988079071 369.49999940395355,256.9999988079071 369.49999940395355,318.99999821186066 435.99999821186066,318.99999821186066 435.99999821186066,398.9999976158142",
			"sourceSymbol": "a3603084-5516-4f00-8389-0a7865c8cc6d",
			"targetSymbol": "d46586dc-3d31-4d7a-838d-c69cb93f6777",
			"object": "a75f53e4-b49b-44e9-a01b-1834d1b5bdbc"
		},
		"25d5950e-1977-420d-a2b8-0b4ec576400d": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 550.4999985098839,
			"y": 1233.9999928474426,
			"width": 35,
			"height": 35,
			"object": "35302442-9de9-4305-bbbb-02251c8f3c95"
		},
		"1d96c5f1-5d32-49c3-9feb-7e68ac1c0bd7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "258.99999940395355,1073.9999940395355 258.99999940395355,1108.999993443489 567.9999985098839,1108.999993443489 567.9999985098839,1233.9999928474426",
			"sourceSymbol": "50e4346b-a3e1-4a3c-a4ab-27f14767bb1b",
			"targetSymbol": "25d5950e-1977-420d-a2b8-0b4ec576400d",
			"object": "d56b4ad7-7f6c-4396-b8e6-7eda6d80b158"
		},
		"340cd367-1269-4d51-b244-3d771bc147b4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 379.99999821186066,
			"y": 1013.9999940395355,
			"width": 100,
			"height": 60,
			"object": "54e83ab6-aa06-486b-b3c2-6f6a57294dd1"
		},
		"3d796852-f720-4a7b-b7db-a5ce76cf15ec": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "536.4999988079071,256.9999988079071 571.4999982118607,256.9999988079071 571.4999982118607,318.99999821186066 585.9999982118607,318.99999821186066 585.9999982118607,398.9999976158142",
			"sourceSymbol": "c9050752-7232-4638-b3b6-b192dd8fd56a",
			"targetSymbol": "2ff8f7a6-d342-4c80-956c-d13fa19c1b1a",
			"object": "89f2da64-4057-4d1b-9c02-3ff6f067f29c"
		},
		"f9191cd0-6889-4080-a3fc-d6e6924ffb9a": {
			"classDefinition": "com.sap.bpm.wfs.ui.IntermediateCatchEventSymbol",
			"x": 448.99999821186066,
			"y": 601.9999964237213,
			"width": 32,
			"height": 32,
			"object": "3b1b957a-e76c-4b45-b76c-bd19199fa7b5"
		},
		"5186563f-d010-4c6d-9bff-01cca92feaa2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 289.99999940395355,
			"y": 892.9999952316284,
			"object": "4ebda8ab-ac27-4a89-80b5-a549e738f810"
		},
		"c56f5111-b00e-4cf2-90f6-5d70257366ca": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "310.99999940395355,934.9999952316284 310.99999940395355,978.999994635582 343.9999988079071,978.999994635582 343.9999988079071,1108.999993443489 567.9999985098839,1108.999993443489 567.9999985098839,1233.9999928474426",
			"sourceSymbol": "5186563f-d010-4c6d-9bff-01cca92feaa2",
			"targetSymbol": "25d5950e-1977-420d-a2b8-0b4ec576400d",
			"object": "0f3ad763-086e-433b-9b0d-320473dca5c9"
		},
		"fbdde236-4d9b-486a-993f-90c77af4ed5d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "413.33333154519397,1013.9999940395355 413.33333154519397,978.999994635582 366.9999988079071,978.999994635582 366.9999988079071,803.9999958276749 464.99999821186066,803.9999958276749 464.99999821186066,633.9999964237213",
			"sourceSymbol": "340cd367-1269-4d51-b244-3d771bc147b4",
			"targetSymbol": "f9191cd0-6889-4080-a3fc-d6e6924ffb9a",
			"object": "69192eba-964a-4fa6-ba75-caf55064eefd"
		},
		"06368c43-284e-4edd-ba48-0704afd010ea": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "310.99999940395355,934.9999952316284 310.99999940395355,978.999994635582 413.33333154519397,978.999994635582 413.33333154519397,1013.9999940395355",
			"sourceSymbol": "5186563f-d010-4c6d-9bff-01cca92feaa2",
			"targetSymbol": "340cd367-1269-4d51-b244-3d771bc147b4",
			"object": "19800944-ded9-4333-af4f-c4b7eccdf0d3"
		},
		"446ff5c6-0681-47d9-9ebe-8772e8745282": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "464.99999821186066,633.9999964237213 464.99999821186066,803.9999958276749 310.99999940395355,803.9999958276749 310.99999940395355,892.9999952316284",
			"sourceSymbol": "f9191cd0-6889-4080-a3fc-d6e6924ffb9a",
			"targetSymbol": "5186563f-d010-4c6d-9bff-01cca92feaa2",
			"object": "e9880043-079a-4824-b0bc-c565cc62ebe8"
		},
		"2ff8f7a6-d342-4c80-956c-d13fa19c1b1a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 535.9999982118607,
			"y": 398.9999976158142,
			"width": 100,
			"height": 60,
			"object": "378adc1c-7c39-4fd3-aa18-542ec8eea999"
		},
		"5e6e39ef-32bf-4bb3-9d7f-8713e3918e78": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "585.9999982118607,428.9999976158142 586,638.25 655,638.25 654.9999982118607,846.9999952316284",
			"sourceSymbol": "2ff8f7a6-d342-4c80-956c-d13fa19c1b1a",
			"targetSymbol": "8d2633e0-dec8-49a9-b77d-779bf499905e",
			"object": "573dc87a-df91-4c39-96c6-cf1ec7bf1748"
		},
		"0b0fca47-d0d6-4d73-ad5e-5c37e110a821": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 139.99999940395355,
			"y": 883.9999952316284,
			"width": 100,
			"height": 60,
			"object": "f769f3ac-da7d-4c76-a158-485153296ddd"
		},
		"81fbde3a-f1da-4682-816d-4c6512207f94": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "189.99999940395355,943.9999952316284 189.99999940395355,978.999994635582 258.99999940395355,978.999994635582 258.99999940395355,1013.9999940395355",
			"sourceSymbol": "0b0fca47-d0d6-4d73-ad5e-5c37e110a821",
			"targetSymbol": "50e4346b-a3e1-4a3c-a4ab-27f14767bb1b",
			"object": "a693f6ae-5839-4820-9d3d-4aca74c3d54b"
		},
		"8d2633e0-dec8-49a9-b77d-779bf499905e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 604.9999982118607,
			"y": 816.9999952316284,
			"width": 100,
			"height": 60,
			"object": "8558f919-23c7-493e-9289-8d42a88e08c0"
		},
		"8517d93d-771e-494a-a5f5-09b4f00221b7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "654.9999982118607,876.9999952316284 655,945.75 413.3333435058594,945.75 413.33333154519397,1013.9999940395355",
			"sourceSymbol": "8d2633e0-dec8-49a9-b77d-779bf499905e",
			"targetSymbol": "340cd367-1269-4d51-b244-3d771bc147b4",
			"object": "02a9db51-8db6-4a35-b2ba-070e5906ba01"
		},
		"253d1d3d-bbd3-4cae-b73e-fc4930809431": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1495.9999970197678,647.9999952316284 1496,684.75 1584,684.75 1583.9999970197678,720.9999940395355",
			"sourceSymbol": "0b4d6512-18f2-41e5-a925-e0c12a07baea",
			"targetSymbol": "b18ca5e8-d9f0-44ee-a810-1ae0fc23201c",
			"object": "bb988295-9700-4370-8293-b37242801e53"
		},
		"a1ea40fd-dcb0-4aa3-92e3-f4f0f753f615": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 400.4999985098839,
			"y": 1233.9999928474426,
			"width": 100,
			"height": 60,
			"object": "a0422c39-8ed0-4e44-b4a7-4644622c9ab7"
		},
		"a1367d2d-8679-4764-806a-f096148529b6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "433.8333318432172,1233.9999928474426 433.8333318432172,1081 -144,1081 -144,978.999994635582 -156,978.999994635582 -156,668.9999958276749 -164,668.9999958276749 -164,493.99999701976776 -122,493.99999701976776 -122,146 279.49999940395355,146 279.49999940395355,223.9999988079071 420.4999988079071,223.9999988079071",
			"sourceSymbol": "a1ea40fd-dcb0-4aa3-92e3-f4f0f753f615",
			"targetSymbol": "b70a0ec1-f3f5-49e6-804c-2d1f2b4199ac",
			"object": "fb95e4fe-4a1f-4d4e-bc92-06660022028a"
		},
		"e2268928-1a18-476b-aacb-df16e4da1886": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -4.000001788139343,
			"y": 233.9999976158142,
			"width": 100,
			"height": 60,
			"object": "7c16fa23-c33e-4692-a7d0-d2dae09c0c92"
		},
		"86c56b32-f915-44bc-be7b-a6f3baf905f7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "45.99999821186066,263.9999976158142 46,324.25 30,324.25 30,384",
			"sourceSymbol": "e2268928-1a18-476b-aacb-df16e4da1886",
			"targetSymbol": "2e002ef3-f075-442c-ba53-9af100075b9d",
			"object": "083f95d2-523e-4b7f-8018-221c047dc88e"
		},
		"d46586dc-3d31-4d7a-838d-c69cb93f6777": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 385.99999821186066,
			"y": 398.9999976158142,
			"width": 100,
			"height": 60,
			"object": "23cf46f7-99d1-445a-af1e-613725218497"
		},
		"2c09c0e2-97e5-443c-a4dc-e5d7c35835ad": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "435.99999821186066,458.9999976158142 435.99999821186066,493.99999701976776 348.99999821186066,493.99999701976776 348.99999821186066,573.9999964237213",
			"sourceSymbol": "d46586dc-3d31-4d7a-838d-c69cb93f6777",
			"targetSymbol": "57a10d32-179e-456a-a975-9e7ff4b69e77",
			"object": "1ff4c7dc-3ed4-47c1-95a7-768502c61bad"
		},
		"57a10d32-179e-456a-a975-9e7ff4b69e77": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 298.99999821186066,
			"y": 573.9999964237213,
			"width": 100,
			"height": 60,
			"object": "1ceb73f4-3708-422b-bd2c-c4f41af2217e"
		},
		"ac3f688c-d15c-4d05-a27e-2e7fe4beab61": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "348.99999821186066,633.9999964237213 348.99999821186066,758.9999958276749 189.99999940395355,758.9999958276749 189.99999940395355,883.9999952316284",
			"sourceSymbol": "57a10d32-179e-456a-a975-9e7ff4b69e77",
			"targetSymbol": "0b0fca47-d0d6-4d73-ad5e-5c37e110a821",
			"object": "e05e3f6b-9108-437a-a437-02b1880db8d4"
		},
		"79787b40-3b5a-4283-af32-356ae3951a98": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1370.9999982118607,
			"y": 820.9999952316284,
			"width": 125,
			"height": 60,
			"object": "13055a62-1bad-41e4-b7de-aea0e0d6ea63"
		},
		"b18ca5e8-d9f0-44ee-a810-1ae0fc23201c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1533.9999970197678,
			"y": 720.9999940395355,
			"width": 100,
			"height": 60,
			"object": "1d7efdd9-c627-48d8-9ae8-32e1eee2745c"
		},
		"81c9607e-2b79-41bf-b4f2-652d9e967d5b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1583.9999970197678,750.9999940395355 1514.75,751 1514.75,851 1433.4999982118607,850.9999952316284",
			"sourceSymbol": "b18ca5e8-d9f0-44ee-a810-1ae0fc23201c",
			"targetSymbol": "79787b40-3b5a-4283-af32-356ae3951a98",
			"object": "358c1072-25f7-414b-ae4e-2b59ae6b8f7d"
		},
		"b4a466a0-26b6-4aca-8a9b-dddf4a4f27aa": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1166.9999982118607,
			"y": 1022.9999940395355,
			"width": 100,
			"height": 60,
			"object": "658abed9-08ad-4d7c-8750-d30411159431"
		},
		"2e002ef3-f075-442c-ba53-9af100075b9d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -20,
			"y": 354,
			"width": 100,
			"height": 60,
			"object": "820702de-0c9b-4c3a-8c52-7c5721fce956"
		},
		"61def9c5-a201-4365-96c3-bc9d899f2dee": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "30,384 30,440.25 48,440.25 48,496",
			"sourceSymbol": "2e002ef3-f075-442c-ba53-9af100075b9d",
			"targetSymbol": "b1e0b706-5ce9-4b3c-be11-d4de1beb81f8",
			"object": "c5342d5b-d0f1-4879-9427-ee6df649aa3c"
		},
		"b1e0b706-5ce9-4b3c-be11-d4de1beb81f8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -2,
			"y": 466,
			"width": 100,
			"height": 60,
			"object": "3f9ffe38-49b3-47cb-80a4-a118a097145e"
		},
		"d546440b-7928-4c40-9eb5-1258b716fdb0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "48,496 123.75,496 123.75,604 198.99999821186066,603.9999964237213",
			"sourceSymbol": "b1e0b706-5ce9-4b3c-be11-d4de1beb81f8",
			"targetSymbol": "27389a20-3aa8-4bfd-b0bd-38f884b32c87",
			"object": "6d948edb-2f32-41dd-9b39-04412a3d4622"
		},
		"d925033c-d1fc-4bf7-a827-ffb8c0a382f4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1433.4999982118607,850.9999952316284 1433.5,952.25 1241,952.25 1241,1052",
			"sourceSymbol": "79787b40-3b5a-4283-af32-356ae3951a98",
			"targetSymbol": "b4a466a0-26b6-4aca-8a9b-dddf4a4f27aa",
			"object": "a24e4227-b2d9-4242-819e-0fba0e4f494e"
		},
		"ba95d462-baae-49fd-916d-267acff45d8b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1216.9999982118607,1052.9999940395355 1128.75,1053 1128.75,1001 1047,1001",
			"sourceSymbol": "b4a466a0-26b6-4aca-8a9b-dddf4a4f27aa",
			"targetSymbol": "4872b741-3da7-4926-afa7-45846e02f99f",
			"object": "eb5e55cf-4e2f-46e9-a8e1-f6170bc06a7e"
		},
		"a3603084-5516-4f00-8389-0a7865c8cc6d": {
			"classDefinition": "com.sap.bpm.wfs.ui.BoundaryEventSymbol",
			"x": 404.4999988079071,
			"y": 240.9999988079071,
			"object": "909b24a6-6241-4624-ace4-b8d868f42afb"
		},
		"c9050752-7232-4638-b3b6-b192dd8fd56a": {
			"classDefinition": "com.sap.bpm.wfs.ui.BoundaryEventSymbol",
			"x": 504.4999988079071,
			"y": 240.9999988079071,
			"object": "a44c7fe7-6576-48fa-b33b-e9126086547f"
		},
		"e427f93f-19ec-48b6-b848-c19b18243101": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 8,
			"maildefinition": 3,
			"hubapireference": 9,
			"sequenceflow": 156,
			"startevent": 1,
			"intermediatetimerevent": 4,
			"boundarytimerevent": 2,
			"endevent": 2,
			"usertask": 5,
			"servicetask": 20,
			"scripttask": 20,
			"mailtask": 4,
			"exclusivegateway": 14,
			"parallelgateway": 3
		},
		"d119e441-24a0-4d98-8be1-91fc6578ccd5": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "P7D",
			"id": "timereventdefinition1"
		},
		"b1341450-b04e-44c3-b480-5a24af112f3d": {
			"classDefinition": "com.sap.bpm.wfs.HubAPIReference",
			"apiPackage": "undefined",
			"api": "SAP_CF_BusinessRules_Runtime_V2",
			"apiName": "Rule Execution API for Cloud Foundry",
			"id": "hubapireference2"
		},
		"8737d96d-2c01-4a0c-8b56-8f114974f54c": {
			"classDefinition": "com.sap.bpm.wfs.HubAPIReference",
			"apiPackage": "undefined",
			"api": "SAP_CF_BusinessRules_Runtime_V2",
			"apiName": "Rule Execution API for Cloud Foundry",
			"id": "hubapireference5"
		},
		"fcd384f5-954c-4ddc-871f-b125cb739d8f": {
			"classDefinition": "com.sap.bpm.wfs.HubAPIReference",
			"apiPackage": "undefined",
			"api": "SAP_CF_BusinessRules_Runtime_V2",
			"apiName": "Rule Execution API for Cloud Foundry",
			"id": "hubapireference9"
		}
	}
}