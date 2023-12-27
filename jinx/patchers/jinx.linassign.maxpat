{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 7,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 380.0, 165.0, 447.0, 199.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-6",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 70.333333333333343, 165.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 70.333333333333343, 127.0, 110.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80300
					}
,
					"text" : "bach.portal @out p"
				}

			}
, 			{
				"box" : 				{
					"code" : "linassign($x1) ",
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.333333333333343, 90.0, 137.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"versionnumber" : 80300
					}
,
					"text" : "bach.eval linassign($x1)"
				}

			}
, 			{
				"box" : 				{
					"code" : "SIMPLE = 0;\nSTARRED = 1;\nPRIMED = 2;\n\n\ncoverzeroes = (\n    $matrix, $maskmatrix, $rowcover, $colcover -> (\n        #(\n            --------------------------------------------\n            \"Repeat steps 4 and 6 until we are ready to break out to step 5.\"\n            --------------------------------------------\n        )#\n        $stop = 0;\n        $result = null;\n        \n        while !$stop do (\n            $zero = 1;\n            #(\n                --------------------------------------------\n                \"Step 4:\n                Find a noncovered zero and prime it.  If there is no\n                starred zero in the row containing this primed zero,\n                go to Step 5. Otherwise, cover this row and uncover\n                the column containing the starred zero. Continue in\n                this manner until there are no uncovered zeros left.\n                Save the smallest uncovered value and go to Step 6.\"\n                --------------------------------------------\n            )#\n\n            while $result == null && !!$zero do (\n                $zero = findnoncoveredzero($matrix, $rowcover, $colcover);\n                if !!$zero then (\n                    $row = flat($maskmatrix:($zero:1));\n                    $row:($zero:2) = PRIMED;    \n                    $index = null;\n                    for $x $i in $row do (\n                        if !$index && $x == STARRED then (\n                            $index = $i\n                        )\n                    );\n                    if !$index then (\n                        $stop = 1;\n                        $result = $zero\n                    ) else (\n                        $rowcover:($zero:1) = 1;\n                        $colcover:($index) = 0\n                    )\n                )\n            );\n            #(\n                --------------------------------------------\n                \"Step 6\n                Add the value found in Step 4 to every element of\n                each covered row, and subtract it from every element\n                of each uncovered column.  Return to Step 4 without\n                altering any stars, primes, or covered lines.\"\n                --------------------------------------------\n            )#\n\n            if $stop == 0 then (\n                $m = minimum(uncoveredvalues($matrix, $rowcover, $colcover));\n                for $row $r in $matrix do (\n                    for $c in 1...length(flat($row)) do (\n                        if $rowcover:$r == 1 then (\n                            $matrix:($r $c) += $m\n                        );\n                        if $colcover:$c == 0 then (\n                            $matrix:($r $c) -= $m\n                        )\n                    )\n                )\n            )\n        );\n        $result\n    )\n);\n\nfindnoncoveredzero = (\n    $matrix, $rowcover, $colcover -> (\n        $result = null;\n        for $row $r in $matrix do (\n            if !$result then (\n                for $value $c in flat($row) do (\n                    if !$result && $value == 0 && $rowcover:$r == 0 && $colcover:$c == 0 then (\n                        $result = ($r $c)\n                    )\n                )\n            )\n        );\n        $result\n    )\n);\n\nuncoveredvalues = (\n    $matrix, $rowcover, $colcover -> (\n        for $row $r in $matrix collect (\n            for $value $c in flat($row) collect (\n                if $rowcover:$r == 0 && $colcover:$c == 0 then (\n                    $value\n                )\n            )\n        )\n    )\n);\n\nfindstarincol = (\n    $maskmatrix, $c -> (\n        $result = null;\n        for $row $r in $maskmatrix do (\n            if $result == null && flat($row):$c == STARRED then (\n                $result = ($r $c)\n            )\n        );\n        $result\n    )\n);\n\nfindprimeinrow = (\n    $maskmatrix, $r -> (\n        $result = null;\n        for $value $c in flat($maskmatrix:$r) do (\n            if $result == null && $value == PRIMED then (\n                $result = ($r $c)\n            )\n        );\n        $result\n    )\n);\n\nlinassign = (\n    $matrix -> (\n        $n = length($matrix);\n\n        #(\n            --------------------------------------------\n            \"Step 1:\n            For each row of the matrix, find the smallest element and\n            subtract it from every element in its row. Go to Step 2.\"\n            --------------------------------------------\n        )#\n\n        for $row $i in $matrix do (\n            $matrix:$i -= minimum(flat($row))\n        );\n        $maskmatrix =  (for $x in 1...$n collect [ SIMPLE :* $n ]);\n        $rowcover = 0 :* $n;\n        $colcover = 0 :* $n;\n\n        #(\n            --------------------------------------------\n            \"Step 2:\n            Find a zero (Z) in the resulting matrix.  If there is\n            no starred zero in its row or column, star Z. Repeat for\n            each element in the matrix. Go to Step 3.\"\n            --------------------------------------------\n        )#\n\n        for $row $r in $matrix do (\n            for $value $c in flat($row) do (\n                if $value == 0 && $rowcover:$r == 0 && $colcover:$c == 0 then (\n                    $maskmatrix:($r $c) = STARRED;\n                    $rowcover:$r = 1;\n                    $colcover:$c = 1\n                )\n            )\n        );\n        $rowcover = 0 :* $n;\n        $colcover = 0 :* $n;\n        #(\n            --------------------------------------------\n            \"Step 3:\n            Cover each column containing a starred zero.  If K columns\n            are covered, the starred zeros describe a complete set of\n            unique assignments. In this case, go to DONE, otherwise,\n            go to Step 4.\"\n            --------------------------------------------\n        )#\n\n        $matchfound = 0;\n\n        while $matchfound == 0 do (\n            for $i in 1...$n do (\n                $colcover:$i = (reduce(for $mrow in $maskmatrix collect ($mrow:(1 $i)) == STARRED, #+) > 0)\n            );\n            if reduce($colcover, #*) > 0 then (\n                $matchfound = 1\n            ) else (\n                $zero = coverzeroes($matrix, $maskmatrix, $rowcover, $colcover);\n                #(\n                    --------------------------------------------\n                    \"Step 5\n                    Construct a series of alternating primed and starred zeros as\n                    follows.  Let Z0 represent the uncovered primed zero found in\n                    Step 4.  Let Z1 denote the starred zero in the column of Z0\n                    (if any). Let Z2 denote the primed zero in the row of Z1\n                    (there will always be one).  Continue until the series terminates\n                    at a primed zero that has no starred zero in its column. Unstar\n                    each starred zero of the series, star each primed zero of the\n                    series, erase all primes and uncover every line in the matrix.\n                    Return to Step 3.\"\n                    --------------------------------------------\n                )#\n\n                $primes = [$zero];\n                $stars = ();\n                while !!$zero do (\n                    $zero = findstarincol($maskmatrix, $zero:2);\n                    if $zero then (\n                        $stars _= [$zero];\n                        $zero = findprimeinrow($maskmatrix, $zero:1);\n                        $stars _= [$zero]\n                    )\n                );\n\n                for $star in $stars do (\n                    $pos = flat($star);\n                    if $pos then (\n                        $maskmatrix:($pos:1 $pos:2) = SIMPLE\n                    )\n                );\n                \n                for $prime in $primes do (\n                    $pos = flat($prime);\n                    $maskmatrix:($pos:1 $pos:2) = STARRED\n                );\n\n                for $row $r in $maskmatrix do (\n                    for $value $c in flat($row) do (\n                        if $value == PRIMED then (\n                            $maskmatrix:($r $c) = SIMPLE\n                        )\n                    )\n                );\n                $rowcover = 0 :* $n;\n                $colcover = 0 :* $n\n            )\n        );\n        for $row $r in $maskmatrix collect (\n            for $value $c in flat($row) collect (\n                if $value == STARRED then [$r $c]\n            )\n        )\n    )\n);\n#(\n\t$matrix = (\n\t\t[ 25 40 35 ]\n\t\t[ 40 60 35 ]\n\t\t[ 20 40 25 ]\n\t);\n\t$matrix = (\n\t\t[7  53 183 439 863] \n\t\t[497 383 563  79 973] \n\t\t[287  63 343 169 583] \n\t\t[627 343 773 959 943] \n\t\t[767 473 103 699 303]\n\t);\n\n\t$matrix = (\n\t\t[7      53  183 439 863 497 383 563  79 973 287  63 343 169 583]\n\t\t[627    343 773 959 943 767 473 103 699 303 957 703 583 639 913]\n\t\t[447    283 463  29  23 487 463 993 119 883 327 493 423 159 743]\n\t\t[217    623   3 399 853 407 103 983 89  463 290 516 212 462 350]\n\t\t[960    376 682 962 300 780 486 502 912 800 250 346 172 812 350]\n\t\t[870    456 192 162 593 473 915  45 989 873 823 965 425 329 803]\n\t\t[973    965 905 919 133 673 665 235 509 613 673 815 165 992 326]\n\t\t[322    148 972 962 286 255 941 541 265 323 925 281 601  95 973]\n\t\t[445    721  11 525 473  65 511 164 138 672  18 428 154 448 848]\n\t\t[414    456 310 312 798 104 566 520 302 248 694 976 430 392 198]\n\t\t[184    829 373 181 631 101 969 613 840 740 778 458 284 760 390]\n\t\t[821    461 843 513  17 901 711 993 293 157 274  94 192 156 574]\n\t\t[34     124   4 878 450 476 712 914 838 669 875 299 823 329 699]\n\t\t[815    559 813 459 522 788 168 586 966 232 308 833 251 631 107]\n\t\t[813    883 451 509 615  77 281 613 459 205 380 274 302  35 805] \n\t);\n\t$ans = minimize($matrix);\n\tprint(\"ANSWER\" for $x in trans($ans - 1) collect [sort(flat($x))]);\n\t$matrix = (\n\t\t[ 1 0 3 ]\n\t\t[ 1 0 3 ]\n\t\t[ 1 0 3 ]\n\t);\n\tprint(\"DONE\")\n)#\n1 ",
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 222.0, 54.0, 212.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"versionnumber" : 80300
					}
,
					"text" : "bach.eval @file linassign.bell @auto 1"
				}

			}
, 			{
				"box" : 				{
					"comment" : "llll: cost matrix",
					"id" : "obj-2",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 10.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "", "", "" ],
					"patching_rect" : [ 10.0, 54.0, 200.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80300
					}
,
					"text" : "bach.args @ins 1"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "bach.args.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.eval.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.portal.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
