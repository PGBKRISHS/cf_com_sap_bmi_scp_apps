{
	"contents": {
		"4e4d0202-b7f1-4428-b4e5-dbac152fec25": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "WFComplaint",
			"subject": "WFComplaint",
			"name": "WFComplaint",
			"documentation": "Complaints workflow",
			"lastIds": "e427f93f-19ec-48b6-b848-c19b18243101",
			"events": {
				"a048f43e-2701-4c64-a605-0698ccd58d1f": {
					"name": "StartEvent1"
				},
				"dfea7543-f13c-48ff-b635-388953911302": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"65b45ec1-071e-427b-9ac4-000e2166fa28": {
					"name": "Context building"
				},
				"c353af51-80ea-4e99-9eef-3b0cbe199500": {
					"name": "Approver"
				},
				"dc60d930-1617-4516-897d-bd30dfd9cdf0": {
					"name": "ApprovalStepDetermination"
				},
				"3a966093-3260-4e62-a84f-39e77002d71b": {
					"name": "ApprovalDetermination"
				},
				"62f07f74-8d90-4fcb-a0f4-7f04538b01cd": {
					"name": "ButtonDetermination"
				},
				"61e31de4-8b6a-4490-8993-24d9b5867fd9": {
					"name": "status update"
				},
				"b399b2c6-727d-46ce-ab2a-6988e677f28b": {
					"name": "DelegateIf"
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
				"2ad6d634-db3b-40e1-ad58-56003a715e3b": {
					"name": "Deligatecontext"
				},
				"8b6f008a-4f77-43b4-9f2f-7527fcf4db95": {
					"name": "Approvalcontext"
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
				"791c0cc9-59e1-4c0b-abcd-8097bee6108f": {
					"name": "approver update"
				},
				"996dee52-b2b5-45d0-9b1b-13dda3a878f3": {
					"name": "ExclusiveGateway10"
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
				"09aa0813-459d-4ebd-a0a1-b6f81639d80c": {
					"name": "SequenceFlow86"
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
				"e9ab2201-3779-48dc-810b-ee93eba94ea7": {
					"name": "SequenceFlow90"
				},
				"aed3cfe2-7ebb-405d-9d46-9258c55b2c72": {
					"name": "SequenceFlow91"
				},
				"cbacfa4b-6acb-4467-b508-1637d71c8d20": {
					"name": "SequenceFlow94"
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
				"3f131f96-3ebd-4247-88fd-1247eb3f4375": {
					"name": "SequenceFlow107"
				},
				"dd07ed40-9c60-4d38-a525-f37ba495da9d": {
					"name": "SequenceFlow108"
				},
				"dd45ec35-24d9-4b1e-b2bd-37b9344ee4e4": {
					"name": "approver update"
				},
				"9438ef84-6c8a-4c74-8fae-bb3b62536590": {
					"name": "default"
				},
				"ec935fdd-524c-4d9d-9b04-82d3fcd897fc": {
					"name": "SequenceFlow115"
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
		"65b45ec1-071e-427b-9ac4-000e2166fa28": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFComplaint/ComplaintDetail.js",
			"id": "scripttask1",
			"name": "Context building",
			"documentation": "Context building"
		},
		"c353af51-80ea-4e99-9eef-3b0cbe199500": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Complaint Approval",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbmiscpappscomplaintforms/com.sap.bmi.scp.apps.complaintforms",
			"recipientUsers": "${context.CurrentUser}",
			"recipientGroups": "",
			"userInterfaceParams": [],
			"id": "usertask1",
			"name": "Approver",
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
		"3a966093-3260-4e62-a84f-39e77002d71b": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BPMRule_CF",
			"path": "/rules-service/rest/v2/workingset-rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.ApproverIdIf}",
			"responseVariable": "${context.ApproverId}",
			"id": "servicetask2",
			"name": "ApprovalDetermination",
			"apiReference": "a631e005-1a4e-42cc-b8de-ba9a054770f2"
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
			"path": "/http/SCP/C4C/Approval",
			"httpMethod": "POST",
			"xsrfPath": "",
			"requestVariable": "${context.StatusUpdate}",
			"responseVariable": "",
			"id": "servicetask5",
			"name": "status update"
		},
		"b399b2c6-727d-46ce-ab2a-6988e677f28b": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BPMRule_CF",
			"path": "/rules-service/rest/v2/workingset-rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.DelegateIf}",
			"responseVariable": "${context.DelegateId}",
			"id": "servicetask6",
			"name": "DelegateIf",
			"apiReference": "192793f7-ade2-4213-8a30-4afd068498fe"
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
			"path": "/http/SCP/C4C/Approval",
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
		"2ad6d634-db3b-40e1-ad58-56003a715e3b": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFComplaint/App_check.js",
			"id": "scripttask6",
			"name": "Deligatecontext"
		},
		"8b6f008a-4f77-43b4-9f2f-7527fcf4db95": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFComplaint/approval.js",
			"id": "scripttask7",
			"name": "Approvalcontext"
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
			"path": "/http/SCP/C4C/Approval",
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
			"responseVariable": "${context.ApproverId}",
			"id": "servicetask13",
			"name": "approval determination1",
			"apiReference": "fcd384f5-954c-4ddc-871f-b125cb739d8f"
		},
		"791c0cc9-59e1-4c0b-abcd-8097bee6108f": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFComplaint/approver_update.js",
			"id": "scripttask10",
			"name": "approver update"
		},
		"996dee52-b2b5-45d0-9b1b-13dda3a878f3": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway10",
			"name": "ExclusiveGateway10",
			"default": "9438ef84-6c8a-4c74-8fae-bb3b62536590"
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
			"targetRef": "c353af51-80ea-4e99-9eef-3b0cbe199500"
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
			"targetRef": "cfd4f805-c619-4d7a-8db9-d12fbb0a0a77"
		},
		"b7f8e5b6-c58c-4419-9985-9263484b21fd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow84",
			"name": "Default",
			"sourceRef": "6cb64768-f288-4537-a38b-176e043b6ad7",
			"targetRef": "b82000f2-e43b-407f-82ed-f364926167b0"
		},
		"09aa0813-459d-4ebd-a0a1-b6f81639d80c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow86",
			"name": "SequenceFlow86",
			"sourceRef": "b399b2c6-727d-46ce-ab2a-6988e677f28b",
			"targetRef": "621c09d7-0f29-4ce7-83ed-99371d468005"
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
		"e9ab2201-3779-48dc-810b-ee93eba94ea7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow90",
			"name": "SequenceFlow90",
			"sourceRef": "3a966093-3260-4e62-a84f-39e77002d71b",
			"targetRef": "2ad6d634-db3b-40e1-ad58-56003a715e3b"
		},
		"aed3cfe2-7ebb-405d-9d46-9258c55b2c72": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow91",
			"name": "SequenceFlow91",
			"sourceRef": "2ad6d634-db3b-40e1-ad58-56003a715e3b",
			"targetRef": "b399b2c6-727d-46ce-ab2a-6988e677f28b"
		},
		"cbacfa4b-6acb-4467-b508-1637d71c8d20": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow94",
			"name": "SequenceFlow94",
			"sourceRef": "8b6f008a-4f77-43b4-9f2f-7527fcf4db95",
			"targetRef": "3a966093-3260-4e62-a84f-39e77002d71b"
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
			"targetRef": "8b6f008a-4f77-43b4-9f2f-7527fcf4db95"
		},
		"f93654b1-708d-498b-ad42-717b196d4936": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow105",
			"name": "SequenceFlow105",
			"sourceRef": "5aecaef2-4b2b-4f17-833b-09e778064f4d",
			"targetRef": "791c0cc9-59e1-4c0b-abcd-8097bee6108f"
		},
		"3f131f96-3ebd-4247-88fd-1247eb3f4375": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow107",
			"name": "SequenceFlow107",
			"sourceRef": "791c0cc9-59e1-4c0b-abcd-8097bee6108f",
			"targetRef": "996dee52-b2b5-45d0-9b1b-13dda3a878f3"
		},
		"dd07ed40-9c60-4d38-a525-f37ba495da9d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow108",
			"name": "SequenceFlow108",
			"sourceRef": "5f6b9e8f-ac55-413d-ab3b-9a9ac59d4c2d",
			"targetRef": "791c0cc9-59e1-4c0b-abcd-8097bee6108f"
		},
		"dd45ec35-24d9-4b1e-b2bd-37b9344ee4e4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.ApprovalLevel1 <= context.ApprovalStepsReq}",
			"id": "sequenceflow109",
			"name": "approver update",
			"sourceRef": "996dee52-b2b5-45d0-9b1b-13dda3a878f3",
			"targetRef": "5f6b9e8f-ac55-413d-ab3b-9a9ac59d4c2d"
		},
		"9438ef84-6c8a-4c74-8fae-bb3b62536590": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow110",
			"name": "default",
			"sourceRef": "996dee52-b2b5-45d0-9b1b-13dda3a878f3",
			"targetRef": "8b6f008a-4f77-43b4-9f2f-7527fcf4db95"
		},
		"ec935fdd-524c-4d9d-9b04-82d3fcd897fc": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow115",
			"name": "SequenceFlow115",
			"sourceRef": "621c09d7-0f29-4ce7-83ed-99371d468005",
			"targetRef": "61e31de4-8b6a-4490-8993-24d9b5867fd9"
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
				"0048d823-fb3e-4577-b2ef-8ccdff9a16a0": {},
				"febfbbe7-8914-474d-90a1-6716eb393bc4": {},
				"3a81bf26-2775-4413-a5c5-b0a1a83a52d4": {},
				"b76d79e0-60f9-4dff-a058-4f8297c44561": {},
				"998cbf12-6e20-47ef-949f-da1610ba308b": {},
				"4872b741-3da7-4926-afa7-45846e02f99f": {},
				"3a061b6d-6b0c-40f5-ba04-775a95d690a3": {},
				"27389a20-3aa8-4bfd-b0bd-38f884b32c87": {},
				"3030b34f-dab2-4183-acc2-cd69e29b3e4b": {},
				"bd759583-e6b0-438f-b08a-3ed22dbdb672": {},
				"62129f4c-ba5c-4c35-a0a4-342bbc271e82": {},
				"8c969697-9be9-4b7a-bb47-7f02a04c87d8": {},
				"6bc8a930-7dbd-4483-bced-b1afee712d94": {},
				"e37ddd95-9f24-4b59-b852-bb5d3f8046e5": {},
				"fff96356-a1cd-4c18-bea9-780837318fb1": {},
				"a42ec019-9f7f-46ee-a249-ca2de0267bae": {},
				"df0ab940-c088-4e5c-b42c-bb3fa2712a69": {},
				"ba75ad47-afef-4b68-b7cb-478c1132bf4a": {},
				"ccccf723-0b2d-4347-8918-266fd67ddfed": {},
				"51b9ce6f-659c-4c19-8daa-383f3380261a": {},
				"c094c62b-a739-4903-94e2-4b0ee8bf901f": {},
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
				"8c455098-4969-47d6-bb9f-f87bb591ce72": {},
				"3d59efd7-47cf-4de1-8573-a21b2dc0c281": {},
				"f160416a-8dd2-4807-98cc-1ebb52a7cee2": {},
				"df53e623-1322-4a22-92ef-116db89cae97": {},
				"4d2e2435-585f-4d0f-8501-a729c46a51bd": {},
				"249b8bcc-5afd-4848-9440-b205d5eb62c9": {},
				"f911f7c3-6be7-437a-bba0-af50e9388c69": {}
			}
		},
		"e5aaaeef-fca5-42b1-95b9-f0a888de074a": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/WFComplaint/CPIJSON.json",
			"id": "default-start-context"
		},
		"2eb9f558-05dd-498e-a60e-2a5a01b22f5d": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -43,
			"y": -369,
			"width": 32,
			"height": 32,
			"object": "a048f43e-2701-4c64-a605-0698ccd58d1f"
		},
		"a6033764-f8ef-45ce-8a40-c8a2620e7e85": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": -312.5,
			"y": 862,
			"width": 35,
			"height": 35,
			"object": "dfea7543-f13c-48ff-b635-388953911302"
		},
		"328c61d4-c35b-44a1-b16f-daf10026f76f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -67,
			"y": -310,
			"width": 100,
			"height": 60,
			"object": "65b45ec1-071e-427b-9ac4-000e2166fa28"
		},
		"b70a0ec1-f3f5-49e6-804c-2d1f2b4199ac": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 7,
			"y": 961,
			"width": 100,
			"height": 60,
			"object": "c353af51-80ea-4e99-9eef-3b0cbe199500"
		},
		"b51b80d9-e825-4547-a5f9-411144999961": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-27,-337 -27,-323.25 -17,-323.25 -17,-310",
			"sourceSymbol": "2eb9f558-05dd-498e-a60e-2a5a01b22f5d",
			"targetSymbol": "328c61d4-c35b-44a1-b16f-daf10026f76f",
			"object": "81eff7e9-156a-4e48-ac57-c41b0a85b34e"
		},
		"fc17f7b1-a9ab-4b51-8088-dbd3e311c051": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -61,
			"y": -120,
			"width": 100,
			"height": 60,
			"object": "dc60d930-1617-4516-897d-bd30dfd9cdf0"
		},
		"0048d823-fb3e-4577-b2ef-8ccdff9a16a0": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 17,
			"y": 429,
			"width": 100,
			"height": 60,
			"object": "3a966093-3260-4e62-a84f-39e77002d71b"
		},
		"febfbbe7-8914-474d-90a1-6716eb393bc4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-13.5,-90 -13.5,8",
			"sourceSymbol": "fc17f7b1-a9ab-4b51-8088-dbd3e311c051",
			"targetSymbol": "7d5f3a0a-4dc0-4dc3-a9c4-7bfa1e0c727a",
			"object": "4af0e3ec-fb17-4e5c-9234-f4265ad5598c"
		},
		"3a81bf26-2775-4413-a5c5-b0a1a83a52d4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -61,
			"y": -215,
			"width": 100,
			"height": 60,
			"object": "62f07f74-8d90-4fcb-a0f4-7f04538b01cd"
		},
		"b76d79e0-60f9-4dff-a058-4f8297c44561": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 7,
			"y": 871,
			"width": 100,
			"height": 60,
			"object": "61e31de4-8b6a-4490-8993-24d9b5867fd9"
		},
		"998cbf12-6e20-47ef-949f-da1610ba308b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 7,
			"y": 604,
			"width": 100,
			"height": 60,
			"object": "b399b2c6-727d-46ce-ab2a-6988e677f28b"
		},
		"4872b741-3da7-4926-afa7-45846e02f99f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 7,
			"y": 715,
			"width": 100,
			"height": 60,
			"object": "621c09d7-0f29-4ce7-83ed-99371d468005"
		},
		"3a061b6d-6b0c-40f5-ba04-775a95d690a3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "57,931 57,961",
			"sourceSymbol": "b76d79e0-60f9-4dff-a058-4f8297c44561",
			"targetSymbol": "b70a0ec1-f3f5-49e6-804c-2d1f2b4199ac",
			"object": "ff8d8b9a-2f72-4adb-ad14-76598ae96398"
		},
		"27389a20-3aa8-4bfd-b0bd-38f884b32c87": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 17,
			"y": 1106,
			"width": 100,
			"height": 60,
			"object": "cfd4f805-c619-4d7a-8db9-d12fbb0a0a77"
		},
		"3030b34f-dab2-4183-acc2-cd69e29b3e4b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "72,1166 72,1175.25 62,1175.25 62,1184",
			"sourceSymbol": "27389a20-3aa8-4bfd-b0bd-38f884b32c87",
			"targetSymbol": "62129f4c-ba5c-4c35-a0a4-342bbc271e82",
			"object": "21acd884-d215-4c3e-81d3-2c2a702e1425"
		},
		"bd759583-e6b0-438f-b08a-3ed22dbdb672": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "59,991 59,1136",
			"sourceSymbol": "b70a0ec1-f3f5-49e6-804c-2d1f2b4199ac",
			"targetSymbol": "27389a20-3aa8-4bfd-b0bd-38f884b32c87",
			"object": "ae5b0e7f-b220-497d-b04c-46f31e7901c5"
		},
		"62129f4c-ba5c-4c35-a0a4-342bbc271e82": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 46,
			"y": 1184,
			"object": "6cb64768-f288-4537-a38b-176e043b6ad7"
		},
		"8c969697-9be9-4b7a-bb47-7f02a04c87d8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "73,1226 73,1276 -101.75,1276 -101.75,1083.5 -288,1083.5",
			"sourceSymbol": "62129f4c-ba5c-4c35-a0a4-342bbc271e82",
			"targetSymbol": "bbdce832-b58f-4d24-8a15-baed27b20415",
			"object": "b7f8e5b6-c58c-4419-9985-9263484b21fd"
		},
		"6bc8a930-7dbd-4483-bced-b1afee712d94": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "59.5,634 59.5,725",
			"sourceSymbol": "998cbf12-6e20-47ef-949f-da1610ba308b",
			"targetSymbol": "4872b741-3da7-4926-afa7-45846e02f99f",
			"object": "09aa0813-459d-4ebd-a0a1-b6f81639d80c"
		},
		"e37ddd95-9f24-4b59-b852-bb5d3f8046e5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-14,-280 -14,-177",
			"sourceSymbol": "328c61d4-c35b-44a1-b16f-daf10026f76f",
			"targetSymbol": "3a81bf26-2775-4413-a5c5-b0a1a83a52d4",
			"object": "47ae268c-50ee-448e-9f37-d1410d89840b"
		},
		"fff96356-a1cd-4c18-bea9-780837318fb1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-11,-185 -11,-90",
			"sourceSymbol": "3a81bf26-2775-4413-a5c5-b0a1a83a52d4",
			"targetSymbol": "fc17f7b1-a9ab-4b51-8088-dbd3e311c051",
			"object": "43d12add-db47-4ff7-8ea0-5b66fbb05a87"
		},
		"a42ec019-9f7f-46ee-a249-ca2de0267bae": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "67,1210 -85,1210 -85,856",
			"sourceSymbol": "62129f4c-ba5c-4c35-a0a4-342bbc271e82",
			"targetSymbol": "4a317d88-84fd-42ae-86dc-cb62d69a6cab",
			"object": "29dc940e-a816-465f-b41f-4a4e614a69eb"
		},
		"df0ab940-c088-4e5c-b42c-bb3fa2712a69": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 12,
			"y": 511,
			"width": 100,
			"height": 60,
			"object": "2ad6d634-db3b-40e1-ad58-56003a715e3b"
		},
		"ba75ad47-afef-4b68-b7cb-478c1132bf4a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "64.5,459 64.5,541",
			"sourceSymbol": "0048d823-fb3e-4577-b2ef-8ccdff9a16a0",
			"targetSymbol": "df0ab940-c088-4e5c-b42c-bb3fa2712a69",
			"object": "e9ab2201-3779-48dc-810b-ee93eba94ea7"
		},
		"ccccf723-0b2d-4347-8918-266fd67ddfed": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "59.5,541 59.5,634",
			"sourceSymbol": "df0ab940-c088-4e5c-b42c-bb3fa2712a69",
			"targetSymbol": "998cbf12-6e20-47ef-949f-da1610ba308b",
			"object": "aed3cfe2-7ebb-405d-9d46-9258c55b2c72"
		},
		"51b9ce6f-659c-4c19-8daa-383f3380261a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 12,
			"y": 343,
			"width": 100,
			"height": 60,
			"object": "8b6f008a-4f77-43b4-9f2f-7527fcf4db95"
		},
		"c094c62b-a739-4903-94e2-4b0ee8bf901f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "64.5,373 64.5,459",
			"sourceSymbol": "51b9ce6f-659c-4c19-8daa-383f3380261a",
			"targetSymbol": "0048d823-fb3e-4577-b2ef-8ccdff9a16a0",
			"object": "cbacfa4b-6acb-4467-b508-1637d71c8d20"
		},
		"69b72b17-8d03-4cdb-ac60-e50fe807b7a8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-105.5,856 -105.5,1061 -300,1061",
			"sourceSymbol": "4a317d88-84fd-42ae-86dc-cb62d69a6cab",
			"targetSymbol": "bbdce832-b58f-4d24-8a15-baed27b20415",
			"object": "29a930ce-7824-4b28-94e6-4349237e9c98"
		},
		"bbdce832-b58f-4d24-8a15-baed27b20415": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -350,
			"y": 1039,
			"width": 100,
			"height": 60,
			"object": "b82000f2-e43b-407f-82ed-f364926167b0"
		},
		"a741fa62-56fc-47e0-b5f5-481f947cc85a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-300,1069 -300,971",
			"sourceSymbol": "bbdce832-b58f-4d24-8a15-baed27b20415",
			"targetSymbol": "07eb3755-f538-42d0-aba3-98751d889088",
			"object": "53cab001-ea8b-4ad9-a2f6-329c38b53969"
		},
		"07eb3755-f538-42d0-aba3-98751d889088": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -350,
			"y": 941,
			"width": 100,
			"height": 60,
			"object": "6c6e1fd8-3ce7-437e-ac67-2181987232d6"
		},
		"ea70d7ce-2a35-43e3-9d24-d6aee0f5fcc6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-297.5,971 -297.5,879.5",
			"sourceSymbol": "07eb3755-f538-42d0-aba3-98751d889088",
			"targetSymbol": "a6033764-f8ef-45ce-8a40-c8a2620e7e85",
			"object": "05fa6f94-385e-426f-b204-270c39109b96"
		},
		"4a317d88-84fd-42ae-86dc-cb62d69a6cab": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": -106,
			"y": 835,
			"object": "22238418-1be5-4676-945c-47b71576c4ba"
		},
		"014f0912-6894-400e-98c7-3d5b6e550716": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-85,856 -85,361 62,361",
			"sourceSymbol": "4a317d88-84fd-42ae-86dc-cb62d69a6cab",
			"targetSymbol": "51b9ce6f-659c-4c19-8daa-383f3380261a",
			"object": "27664fd4-6b03-4dba-b649-1792ddab3c74"
		},
		"7d5f3a0a-4dc0-4dc3-a9c4-7bfa1e0c727a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -66,
			"y": -22,
			"width": 100,
			"height": 60,
			"object": "5aecaef2-4b2b-4f17-833b-09e778064f4d"
		},
		"0b4d6512-18f2-41e5-a925-e0c12a07baea": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -189,
			"y": 100,
			"width": 100,
			"height": 60,
			"object": "5f6b9e8f-ac55-413d-ab3b-9a9ac59d4c2d"
		},
		"e8bfe1ba-bc00-4b7e-b903-6332e9d25da4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-16,8 132,8 132,155",
			"sourceSymbol": "7d5f3a0a-4dc0-4dc3-a9c4-7bfa1e0c727a",
			"targetSymbol": "8c455098-4969-47d6-bb9f-f87bb591ce72",
			"object": "f93654b1-708d-498b-ad42-717b196d4936"
		},
		"8c455098-4969-47d6-bb9f-f87bb591ce72": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 84,
			"y": 125,
			"width": 100,
			"height": 60,
			"object": "791c0cc9-59e1-4c0b-abcd-8097bee6108f"
		},
		"3d59efd7-47cf-4de1-8573-a21b2dc0c281": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "134,155 82.25,155 82.25,222 60,222",
			"sourceSymbol": "8c455098-4969-47d6-bb9f-f87bb591ce72",
			"targetSymbol": "df53e623-1322-4a22-92ef-116db89cae97",
			"object": "3f131f96-3ebd-4247-88fd-1247eb3f4375"
		},
		"f160416a-8dd2-4807-98cc-1ebb52a7cee2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-135,130 -2.25,130 -2.25,74.5 134,74.5 134,125.5",
			"sourceSymbol": "0b4d6512-18f2-41e5-a925-e0c12a07baea",
			"targetSymbol": "8c455098-4969-47d6-bb9f-f87bb591ce72",
			"object": "dd07ed40-9c60-4d38-a525-f37ba495da9d"
		},
		"df53e623-1322-4a22-92ef-116db89cae97": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 39,
			"y": 201,
			"object": "996dee52-b2b5-45d0-9b1b-13dda3a878f3"
		},
		"4d2e2435-585f-4d0f-8501-a729c46a51bd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "60,222 -25,222 -25,130 -139,130",
			"sourceSymbol": "df53e623-1322-4a22-92ef-116db89cae97",
			"targetSymbol": "0b4d6512-18f2-41e5-a925-e0c12a07baea",
			"object": "dd45ec35-24d9-4b1e-b2bd-37b9344ee4e4"
		},
		"249b8bcc-5afd-4848-9440-b205d5eb62c9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "60.5,222 60.5,373",
			"sourceSymbol": "df53e623-1322-4a22-92ef-116db89cae97",
			"targetSymbol": "51b9ce6f-659c-4c19-8daa-383f3380261a",
			"object": "9438ef84-6c8a-4c74-8fae-bb3b62536590"
		},
		"f911f7c3-6be7-437a-bba0-af50e9388c69": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "57,745 57,894",
			"sourceSymbol": "4872b741-3da7-4926-afa7-45846e02f99f",
			"targetSymbol": "b76d79e0-60f9-4dff-a058-4f8297c44561",
			"object": "ec935fdd-524c-4d9d-9b04-82d3fcd897fc"
		},
		"e427f93f-19ec-48b6-b848-c19b18243101": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 5,
			"maildefinition": 2,
			"hubapireference": 9,
			"sequenceflow": 115,
			"startevent": 1,
			"intermediatetimerevent": 3,
			"endevent": 1,
			"usertask": 5,
			"servicetask": 13,
			"scripttask": 10,
			"mailtask": 3,
			"exclusivegateway": 12,
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
		"a631e005-1a4e-42cc-b8de-ba9a054770f2": {
			"classDefinition": "com.sap.bpm.wfs.HubAPIReference",
			"apiPackage": "undefined",
			"api": "SAP_CF_BusinessRules_Runtime_V2",
			"apiName": "Rule Execution API for Cloud Foundry",
			"id": "hubapireference3"
		},
		"8737d96d-2c01-4a0c-8b56-8f114974f54c": {
			"classDefinition": "com.sap.bpm.wfs.HubAPIReference",
			"apiPackage": "undefined",
			"api": "SAP_CF_BusinessRules_Runtime_V2",
			"apiName": "Rule Execution API for Cloud Foundry",
			"id": "hubapireference5"
		},
		"192793f7-ade2-4213-8a30-4afd068498fe": {
			"classDefinition": "com.sap.bpm.wfs.HubAPIReference",
			"apiPackage": "undefined",
			"api": "SAP_CF_BusinessRules_Runtime_V2",
			"apiName": "Rule Execution API for Cloud Foundry",
			"id": "hubapireference8"
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