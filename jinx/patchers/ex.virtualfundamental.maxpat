{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 6,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 295.0, 137.0, 954.0, 872.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light",
					"fontsize" : 14.0,
					"id" : "obj-29",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 12.5, 50.0, 500.0, 40.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 12.5, 50.0, 500.0, 40.0 ],
					"text" : "this example illustrates the perceptual ambiguity of fundamental frequencies in inharmonic spectra",
					"textcolor" : [ 0.275, 0.275, 0.275, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Bold",
					"fontsize" : 24.0,
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 12.5, 12.5, 308.0, 35.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.5, 12.5, 308.0, 35.0 ],
					"text" : "virtual fundamental"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 663.0, 948.0, 170.0, 22.0 ],
					"text" : "jinx.synth~ 32 @numpartials 1"
				}

			}
, 			{
				"box" : 				{
					"code" : "$x1 + $i2 ",
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 651.5, 364.0, 178.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"versionnumber" : 80300
					}
,
					"text" : "bach.eval $x1 + $i2 @triggers 0"
				}

			}
, 			{
				"box" : 				{
					"code" : "[ 1 $x2 ] $x1 ",
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 14.0, 654.0, 129.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"versionnumber" : 80300
					}
,
					"text" : "bach.eval [ 1 $x2 ] $x1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1352.0, 481.0, 87.0, 22.0 ],
					"text" : "loadmess 750."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1404.0, 515.0, 79.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 809.0, 225.5, 79.0, 20.0 ],
					"text" : "note duration"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-2",
					"maxclass" : "flonum",
					"maximum" : 1000.0,
					"minimum" : 250.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1352.0, 514.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 667.0, 225.5, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1945.0, 479.0, 70.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2004.0, 516.0, 41.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 809.0, 200.5, 41.0, 20.0 ],
					"text" : "f0 mix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1014.333311557769775, 251.0, 48.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 809.0, 250.5, 48.0, 20.0 ],
					"text" : "presets"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1747.0, 324.0, 95.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 809.0, 173.5, 95.0, 20.0 ],
					"text" : "number of steps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 6,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 195.5, 144.0, 29.5, 22.0 ],
									"text" : "0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 146.75, 144.0, 29.5, 22.0 ],
									"text" : "1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-77",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 98.5, 144.0, 29.5, 22.0 ],
									"text" : "1 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-75",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 144.0, 29.5, 22.0 ],
									"text" : "0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 5,
									"outlettype" : [ "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 50.0, 100.0, 213.0, 22.0 ],
									"text" : "sel 0 1 2 3"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-107",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.000040666666791, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-108",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 116.687540666666791, 226.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"source" : [ "obj-73", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-73", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"source" : [ "obj-73", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-108", 0 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-108", 0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-108", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-108", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 855.333333333333258, 287.0, 85.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p map-presets"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 14.0, 498.0, 170.0, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1695.0, 287.0, 77.0, 22.0 ],
					"text" : "loadmess 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "number",
					"maximum" : 15,
					"minimum" : 5,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1695.0, 324.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 667.0, 173.5, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"cols" : 8,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hscroll" : 0,
					"id" : "obj-102",
					"maxclass" : "jit.cellblock",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "list", "", "", "" ],
					"patching_rect" : [ 14.0, 1006.0, 465.333332896232605, 292.666666269302368 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.5, 419.0, 531.333332896232605, 313.833333333333371 ],
					"rows" : 17,
					"vscroll" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 14.0, 710.0, 109.0, 22.0 ],
					"text" : "bach.m2jitcellblock"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 380.0, 162.0, 84.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 809.0, 121.5, 84.0, 20.0 ],
					"text" : "starting partial"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "number",
					"maximum" : 5,
					"minimum" : 2,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 325.0, 162.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 667.0, 121.5, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 841.0, 163.5, 105.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 809.0, 147.0, 105.0, 20.0 ],
					"text" : "number of partials"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 66.5, 206.5, 131.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 809.0, 95.0, 131.0, 20.0 ],
					"text" : "fundamental frequency"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 789.0, 127.5, 70.0, 22.0 ],
					"text" : "loadmess 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "number",
					"maximum" : 7,
					"minimum" : 2,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 789.0, 162.5, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 667.0, 147.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "clear" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 6,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 84.0, 131.0, 451.0, 247.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 14.0, 10.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "clear" ],
									"patching_rect" : [ 14.0, 87.0, 142.0, 22.0 ],
									"text" : "t l clear"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 14.0, 158.0, 96.0, 22.0 ],
									"text" : "prepend append"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 14.0, 125.0, 47.0, 22.0 ],
									"text" : "zl iter 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 14.0, 49.0, 414.0, 22.0 ],
									"text" : "\"ascending normal\" \"descending normal\" \"ascending rare\" \"descending rare\""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-85",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 14.0, 207.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"midpoints" : [ 23.5, 33.0, 23.5, 33.0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"midpoints" : [ 23.5, 72.0, 23.5, 72.0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"midpoints" : [ 23.5, 150.0, 23.5, 150.0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"midpoints" : [ 23.5, 183.0, 23.5, 183.0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"midpoints" : [ 23.5, 111.0, 23.5, 111.0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"midpoints" : [ 146.5, 187.0, 23.5, 187.0 ],
									"source" : [ "obj-70", 1 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 855.333333666666476, 217.0, 101.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p populate_menu"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 855.333333333333258, 324.0, 438.416666666666742, 22.0 ],
					"text" : "unpack i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"items" : [ "ascending normal", ",", "descending normal", ",", "ascending rare", ",", "descending rare" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 855.333333666666476, 251.0, 153.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 667.0, 250.5, 128.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 662.999999999999886, 982.999998688697815, 123.0, 162.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.5, 95.0, 50.0, 267.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 662.999999999999886, 1159.0, 45.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.5, 365.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-39",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1945.0, 515.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 667.0, 199.5, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 325.0, 252.0, 345.5, 22.0 ],
					"text" : "t l l l l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 415.5, 654.0, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 165.0, 606.0, 269.5, 22.0 ],
					"text" : "t l b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 165.0, 654.0, 198.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80300
					}
,
					"text" : "bach.iter @maxdepth 1 @unwrap 1"
				}

			}
, 			{
				"box" : 				{
					"code" : "$notedur = $f3 ||| 500.; $mix = $f4 ||| 0; for $chord $idx in f2mc($x1) collect [ 'addchord' [ ($idx-1)*$notedur (for $mc $mcidx in flat($chord) collect ($amp = 1/(1.25**(if $mcidx == 1 then 1 else $x2:($mcidx - 1))); $vel = sqrt((if $mcidx == 1 then $mix else (1-$mix))*$amp)*127; if $vel > 0 then [ $mc $notedur $vel ] ) ) ] ] ",
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 165.0, 553.0, 1798.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"versionnumber" : 80300
					}
,
					"text" : "bach.eval $notedur = $f3 ||| 500.\\; $mix = $f4 ||| 0\\; for $chord $idx in f2mc($x1) collect [ 'addchord' [ ($idx-1)*$notedur (for $mc $mcidx in flat($chord) collect ($amp = 1/(1.25**(if $mcidx == 1 then 1 else $x2:($mcidx - 1)))\\; $vel = sqrt((if $mcidx == 1 then $mix else (1-$mix))*$amp)*127\\; if $vel > 0 then [ $mc $notedur $vel ] ) ) ] ] @triggers 0"
				}

			}
, 			{
				"box" : 				{
					"code" : "$numnotes = $i5 ||| 10; $desc = $i3 ||| 0; $invert = $i4 ||| 0; $indices = $x2 + $desc; $incr = ($x1:2 - $x1:1) / $numnotes; $spectra = for $n in 0...$numnotes collect [ ($partials = $x1 + ($incr * $n); reduce($partials / $indices, #+) / length($indices) $partials) ]; if $invert then rev($spectra) else $spectra ",
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 14.0, 413.0, 1700.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"versionnumber" : 80300
					}
,
					"text" : "bach.eval $numnotes = $i5 ||| 10\\; $desc = $i3 ||| 0\\; $invert = $i4 ||| 0\\; $indices = $x2 + $desc\\; $incr = ($x1:2 - $x1:1) / $numnotes\\; $spectra = for $n in 0...$numnotes collect [ ($partials = $x1 + ($incr * $n)\\; reduce($partials / $indices\\, #+) / length($indices) $partials) ]\\; if $invert then rev($spectra) else $spectra @triggers 0"
				}

			}
, 			{
				"box" : 				{
					"bwcompatibility" : 80300,
					"clefs" : [ "FFGG" ],
					"defaultnoteslots" : [ "null" ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"loop" : [ 0.0, 1000.0 ],
					"maxclass" : "bach.roll",
					"numinlets" : 6,
					"numoutlets" : 8,
					"numvoices" : 1,
					"out" : "nnnnnnn",
					"outlettype" : [ "", "", "", "", "", "", "", "bang" ],
					"patching_rect" : [ 165.0, 717.0, 600.0, 220.0 ],
					"pitcheditrange" : [ "null" ],
					"presentation" : 1,
					"presentation_rect" : [ 64.5, 95.0, 598.0, 315.0 ],
					"showdurations" : 0,
					"showstems" : 0,
					"showvelocity" : 3,
					"showvscrollbar" : 0,
					"stafflines" : [ 5 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tonedivision" : 8,
					"versionnumber" : 80300,
					"voicenames" : [ "[", "]" ],
					"voicespacing" : [ 0.0, 17.0 ],
					"vzoom" : 100.0,
					"whole_roll_data_0000000000" : [ "roll", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 7, "[", "name", "slot text", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 8, "[", "name", "slot filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 9, "[", "name", "slot spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "]", "[", "commands", "[", 1, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 2, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 3, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 4, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 5, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "]", "[", "groups", "]", "[", "markers", "]", "[", "midichannels", 1, "]", "[", "articulationinfo", "]", "[", "noteheadinfo", "]", "[", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1785249017, 1085721583, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 46, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3940649760, 1086258942, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 82, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2637654130, 1086341287, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 74, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3001592783, 1086381689, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 66, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 750674633, 1086415849, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 59, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1970324880, 1086445439, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 52, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4032860686, 1086471539, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 47, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2637654130, 1086494887, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 42, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3204734317, 1085716843, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 46, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 306218458, 1086251494, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 82, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 430472324, 1086338313, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 74, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3084916010, 1086379213, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 66, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2594044340, 1086413728, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 59, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 307994861, 1086443585, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 52, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1558733205, 1086469892, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 47, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1494689548, 1086493405, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 42, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084178432, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3611180832, 1085712052, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 46, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3814945745, 1086243917, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 82, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 496113872, 1086335298, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 74, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3263699393, 1086376709, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 66, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2337501092, 1086411587, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 59, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 153109229, 1086441715, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 52, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1912804592, 1086468232, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 47, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 430472324, 1086491913, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 42, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084715008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2489893646, 1085707209, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 46, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4032478187, 1086236209, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 82, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2334263532, 1086332241, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 74, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 791257127, 1086374177, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 66, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2558913010, 1086409425, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 59, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 361612850, 1086439829, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 52, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086466560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 47, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3158662432, 1086490410, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 42, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085227008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3461717694, 1085702312, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 46, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2399122256, 1086228365, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 82, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 948425247, 1086329142, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 74, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1415573048, 1086371615, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 66, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1490427599, 1086407242, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 59, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4054956520, 1086437926, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 52, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3591892720, 1086464874, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 47, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 496113872, 1086488898, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 42, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085507584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1391010956, 1085697361, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 46, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3567089991, 1086220379, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 82, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4014374026, 1086325998, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 74, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2194974358, 1086369023, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 66, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1606386227, 1086405037, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 59, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1439207453, 1086436008, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 52, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3261373590, 1086463176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 47, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 427318475, 1086487375, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 42, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085763584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3852953480, 1085692353, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 46, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2436095575, 1086212247, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 82, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3606292211, 1086320884, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 74, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 83345383, 1086366401, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 66, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1031267903, 1086402810, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 59, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4163722742, 1086434072, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 52, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2446840950, 1086461465, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 47, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2334263532, 1086485841, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 42, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086019584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1060818753, 1085687289, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 46, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1246291696, 1086203963, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 82, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3055290215, 1086314414, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 74, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 515058616, 1086363747, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 66, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2127394529, 1086400560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 59, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2370364595, 1086432120, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 52, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 271727727, 1086459741, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 47, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1291048710, 1086484297, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 42, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086275584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 217294532, 1085682166, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 46, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 893121384, 1086195521, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 82, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3117466410, 1086307848, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 74, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 219798728, 1086361061, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 66, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2902652648, 1086398287, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 59, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3347044776, 1086430150, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 52, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 133808616, 1086458003, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 47, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 948425247, 1086482742, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 42, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086428160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4030736598, 1085676982, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 46, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 822858725, 1086186915, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 82, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086301184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 74, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 101832042, 1086358342, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 66, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1302995630, 1086395991, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 59, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1461740227, 1086428163, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 52, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1114613286, 1086456251, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 47, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 648518570, 1086481176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 42, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086556160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2115797220, 1085671738, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 46, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3212772455, 1086178138, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 82, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2227779884, 1086294417, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 74, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 939056977, 1086355589, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 66, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3799784089, 1086393670, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 59, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3931028644, 1086426157, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 52, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2273715478, 1086454485, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 47, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4014374026, 1086479598, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 42, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086684160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1048194196, 1085666431, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 46, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4254789058, 1086169184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 82, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 543455454, 1086287546, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 74, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3376645497, 1086352801, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 66, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3912217964, 1086391325, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 59, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 753991290, 1086424134, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 52, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2648027579, 1086452705, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 47, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1769684891, 1086478010, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 42, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086812160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2879266199, 1085661059, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 46, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2605991260, 1086160046, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 82, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2229226571, 1086280566, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 74, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3625312243, 1086349978, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 66, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3679295482, 1086388955, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 59, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3365531436, 1086422091, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 52, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1251066630, 1086450911, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 47, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1803146106, 1086476410, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 42, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086940160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 829746506, 1085655622, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 46, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3529468632, 1086150715, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 82, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1001087862, 1086273475, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 74, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2044049146, 1086347119, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 66, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 771878203, 1086386560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 59, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1685249637, 1086420030, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 52, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1367157672, 1086449102, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 47, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3398217975, 1086474798, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 42, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087068160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 752641222, 1085650117, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 46, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1543756405, 1086141184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 82, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2734315345, 1086266268, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 74, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3132454839, 1086344222, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 66, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1374394093, 1086384138, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 59, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2770629496, 1086417949, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 52, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1960703764, 1086447278, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 47, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1527645108, 1086473175, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 42, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087196160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3940649760, 1085644542, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 46, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1708218269, 1086131443, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 82, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3940649760, 1086258942, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 74, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2637654130, 1086341287, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 66, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3001592783, 1086381689, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 59, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 750674633, 1086415849, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 52, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1970324880, 1086445439, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 47, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4032860686, 1086471539, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, 42, 0, "]", 0, "]", 0, "]" ],
					"whole_roll_data_count" : [ 1 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 325.0, 118.5, 70.0, 22.0 ],
					"text" : "loadmess 3"
				}

			}
, 			{
				"box" : 				{
					"code" : "for $i in ($x2 ||| (3 4 5)) collect $x1:($i) ",
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 14.0, 311.0, 330.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"versionnumber" : 80300
					}
,
					"text" : "bach.eval for $i in ($x2 ||| (3 4 5)) collect $x1:($i) @triggers 0"
				}

			}
, 			{
				"box" : 				{
					"code" : "$st = $i1 ||| 3; $numpartials = $i2 ||| 3; $st...($st+($numpartials - 1)) ",
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 325.0, 205.5, 483.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"versionnumber" : 80300
					}
,
					"text" : "bach.eval $st = $i1 ||| 3\\; $numpartials = $i2 ||| 3\\; $st...($st+($numpartials - 1)) @triggers 0"
				}

			}
, 			{
				"box" : 				{
					"code" : "for $i in 1...10 collect $i*($f1 ||| 200.) ",
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 14.0, 252.0, 255.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"versionnumber" : 80300
					}
,
					"text" : "bach.eval for $i in 1...10 collect $i*($f1 ||| 200.)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 14.0, 161.0, 87.0, 22.0 ],
					"text" : "loadmess 200."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-10",
					"maxclass" : "flonum",
					"maximum" : 300.0,
					"minimum" : 80.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 14.0, 205.5, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 667.0, 95.0, 50.0, 22.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 1 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 23.5, 228.0, 23.5, 228.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"midpoints" : [ 23.5, 735.0, 23.5, 735.0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 4 ],
					"midpoints" : [ 1704.5, 348.0, 1704.5, 348.0 ],
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"midpoints" : [ 1704.5, 312.0, 1704.5, 312.0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"midpoints" : [ 174.5, 522.0, 174.5, 522.0 ],
					"source" : [ "obj-106", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"midpoints" : [ 23.5, 522.0, 23.5, 522.0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"midpoints" : [ 864.833333333333258, 312.0, 864.833333333333258, 312.0 ],
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 23.5, 186.0, 23.5, 186.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 1954.5, 502.0, 1954.5, 502.0 ],
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 23.5, 276.0, 23.5, 276.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"midpoints" : [ 661.0, 399.0, 0.0, 399.0, 0.0, 639.0, 133.5, 639.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"midpoints" : [ 334.5, 228.0, 334.5, 228.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 23.5, 336.0, 23.5, 336.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"midpoints" : [ 334.5, 141.0, 334.5, 141.0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-18", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"midpoints" : [ 23.5, 438.0, 23.5, 438.0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 2 ],
					"midpoints" : [ 1361.5, 537.0, 1360.5, 537.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"midpoints" : [ 174.5, 576.0, 174.5, 576.0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"midpoints" : [ 174.5, 678.0, 174.5, 678.0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"midpoints" : [ 174.5, 630.0, 174.5, 630.0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 425.0, 630.0, 425.0, 630.0 ],
					"source" : [ "obj-25", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"midpoints" : [ 425.0, 696.0, 174.5, 696.0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 661.0, 276.0, 661.0, 276.0 ],
					"source" : [ "obj-36", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"midpoints" : [ 334.5, 276.0, 334.5, 276.0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"midpoints" : [ 443.333333333333314, 276.0, 443.75, 276.0 ],
					"source" : [ "obj-36", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"midpoints" : [ 552.166666666666629, 399.0, 0.0, 399.0, 0.0, 540.0, 767.5, 540.0 ],
					"source" : [ "obj-36", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 3 ],
					"midpoints" : [ 1954.5, 537.0, 1953.5, 537.0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 1361.5, 504.0, 1361.5, 504.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 1 ],
					"source" : [ "obj-61", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"midpoints" : [ 864.833333666666476, 276.0, 864.833333333333258, 276.0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"midpoints" : [ 23.5, 678.0, 23.5, 678.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"midpoints" : [ 864.833333333333258, 350.0, 820.0, 350.0 ],
					"order" : 1,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 3 ],
					"midpoints" : [ 1284.25, 348.0, 1284.25, 348.0 ],
					"source" : [ "obj-76", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 2 ],
					"midpoints" : [ 864.833333333333258, 348.0, 864.0, 348.0 ],
					"order" : 0,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"midpoints" : [ 864.833333666666476, 240.0, 864.833333666666476, 240.0 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 1 ],
					"midpoints" : [ 798.5, 186.0, 798.5, 186.0 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"midpoints" : [ 798.5, 150.0, 798.5, 150.0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 334.5, 186.0, 334.5, 186.0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-61" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "bach.args.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.eval.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.expr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.iter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.keys.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.length.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.m2jitcellblock.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../Max 8/Packages/bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.pick.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.portal.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.roll.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jinx.synth.poly~.maxpat",
				"bootpath" : "~/Documents/jinx/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jinx.synth~.maxpat",
				"bootpath" : "~/Documents/jinx/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
