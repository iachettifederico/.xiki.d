;;; Compiled snippets and support files for `js-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'js-mode
		     '(("l" "console.log($0);" "console.log" nil
			("dom")
			nil nil nil nil)
		       ("seti" "${1:$(if (> (length text) 0) \"var \" \"\")}${1:intervalId}${1:$(if (> (length text) 0) \" = \" \"\")}window.setInterval( function() {\n    $0\n}, ${2:milliseconds});" "window.setInterval" nil
			("dom")
			nil nil nil nil)
		       ("sett" "${1:$(if (> (length text) 0) \"var \" \"\")}${1:timeoutId}${1:$(if (> (length text) 0) \" = \" \"\")}window.setTimeout( function() {\n    $0\n}, ${2:milliseconds});" "window.setTimeout" nil
			("dom")
			nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'js-mode
		     '(("caser" "case ${1:match}:\n    return $0;" "case... return" nil
			("syntax")
			nil nil nil nil)
		       ("case" "case ${1:match}:\n    $0\n    break;" "case" nil
			("syntax")
			nil nil nil nil)
		       ("catch" "catch (${1:error}) {\n    $0\n}" "catch" nil
			("syntax")
			nil nil nil nil)
		       ("defaultr" "default:\n    return $0;" "default... return" nil
			("syntax")
			nil nil nil nil)
		       ("default" "default:\n    $0\n    break;" "default" nil
			("syntax")
			nil nil nil nil)
		       ("do" "do {\n    $0\n} while (${1:condition});" "do" nil
			("syntax")
			nil nil nil nil)
		       ("elsif" "else if (${1:condition}) {\n    $0\n}" "else... if" nil
			("syntax")
			nil nil nil nil)
		       ("else" "else {\n    $0\n}" "else" nil
			("syntax")
			nil nil nil nil)
		       ("exe" "var ${1:regexp} = /${2:pattern}/g$3;\nvar matched;\nwhile ((matched = $1.exec(${4:string})) != null) {\n    $0\n}" "exec" nil
			("syntax")
			nil nil nil nil)
		       ("finally" "finally {\n    $0\n}" "finally" nil
			("syntax")
			nil nil nil nil)
		       ("fori" "for (var ${1:item} in ${2:list}) {\n   $0\n}" "for... in" nil
			("syntax")
			nil nil nil nil)
		       ("for" "for (${1:var ${2:i} = ${3:0}};${4:$(if (> (length text) 0) \" \" \"\")}${4:$2 < ${5:${6:a}.length}};${7:$(if (> (length text) 0) \" \" \"\")}${7:$2++}) {\n   $0\n}" "for" nil
			("syntax")
			nil nil nil nil)
		       ("fun" "function${1:$(if (> (length text) 0) \" \" \"\")}${1:name}(${2:params}) {\n   $0\n}" "function" nil
			("syntax")
			nil nil nil nil)
		       ("ifb" "if (${1:condition}) break${2:$(if (> (length text) 0) \" \" \"\")}${2:label};$0" "if... break" nil
			("syntax")
			nil nil nil nil)
		       ("ifc" "if (${1:condition}) continue${2:$(if (> (length text) 0) \" \" \"\")}${2:label};$0" "if... continue" nil
			("syntax")
			nil nil nil nil)
		       ("ife" "if (${1:condition}) {\n    $0\n} else {\n    \n}" "if... else" nil
			("syntax")
			nil nil nil nil)
		       ("ifr" "if (${1:condition}) return${2:$(if (> (length text) 0) \" \" \"\")}${2:result};$0" "if... return" nil
			("syntax")
			nil nil nil nil)
		       ("if" "if (${1:condition}) {\n    $0\n}" "if" nil
			("syntax")
			nil nil nil nil)
		       ("inj" "var ${1:total} = ${2:0};\nfor (var i = 0; i < ${3:array}.length; i++) {\n   ${4:$1 += $0;}\n}" "inject" nil
			("syntax")
			nil nil nil nil)
		       ("/" "/* ${1:comment} */$0" "inline comment" nil
			("syntax")
			nil nil nil nil)
		       ("map" "var ${1:transformed} = [ ];\nfor (var i = 0; i < ${2:array}.length; i++) {\n   $1.push($0);\n}" "map" nil
			("syntax")
			nil nil nil nil)
		       ("mat" "var ${1:regexp}  = /${2:pattern}/$3;\nvar matched = ${4:string}.match($1);\nif (matched != null) {\n    $0\n}${5:$(if (> (length text) 0) \" else {\\n    \" \"\")}${5:throw \"No match.\";}${5:$(if (> (length text) 0) \"\\n}\" \"\")}" "match" nil
			("syntax")
			nil nil nil nil)
		       ("nfun" "( function(${2:params}) {\n   $0\n} )(${3:args});" "namespace function" nil
			("syntax")
			nil nil nil nil)
		       ("pfun" "prototype.${1:name} = function(${2:params}) {\n   $0\n}" "prototype... function" nil
			("syntax")
			nil nil nil nil)
		       ("repg" "replace( /${1:pattern}/g$2, function(matched${3:$(if (> (length text) 0) \", \" \"\")}${3:/* captures..., index, input */}) {\n    return $0;\n} )" "replace globally" nil
			("syntax")
			nil nil nil nil)
		       ("rep" "replace( /${1:pattern}/$2, function(matched${3:$(if (> (length text) 0) \", \" \"\")}${3:/* captures..., index, input */}) {\n    return $0;\n} )" "replace" nil
			("syntax")
			nil nil nil nil)
		       ("sel" "var ${1:filtered} = [ ];\nfor (var i = 0; i < ${2:array}.length; i++) {\n   if ($0)\n       $1.push($2[i]);\n}" "select" nil
			("syntax")
			nil nil nil nil)
		       ("sorc" "sort( function(a, b) {\n    if      (${1:a < b}) return -1;\n    else if (${2:a > b}) return 1;\n    else            return 0;\n} );" "sort complex" nil
			("syntax")
			nil nil nil nil)
		       ("sor" "sort( function(a, b) {\n    return ${1:a - b};\n} );" "sort" nil
			("syntax")
			nil nil nil nil)
		       ("sub" "${1:Subclass}.prototype = new ${2:ParentClass}();\n\nfor (var property in $1.prototype) {\n    if ($1.prototype.hasOwnProperty(property)) {\n        delete $1.prototype[property]\n    }\n}\n\n$1.prototype.constructor = $1;$0" "subclass" nil
			("syntax")
			nil nil nil nil)
		       ("switchdr" "switch (${1:variable}) {\ncase ${2:match}:\n    return ${3:value};\ndefault:\n    return $0;\n}" "switch... case... default... return" nil
			("syntax")
			nil nil nil nil)
		       ("switchd" "switch (${1:variable}) {\ncase ${2:match}:\n    $0\n    break;\ndefault:\n    \n    break;\n}" "switch... case... default" nil
			("syntax")
			nil nil nil nil)
		       ("switchr" "switch (${1:variable}) {\ncase ${2:match}:\n    return $0;\n}" "switch... case... return" nil
			("syntax")
			nil nil nil nil)
		       ("switch" "switch (${1:variable}) {\ncase ${2:match}:\n    $0\n    break;\n}" "switch... case" nil
			("syntax")
			nil nil nil nil)
		       (nil "this." "this" nil
			    ("syntax")
			    nil nil "C-c ." nil)
		       ("trycf" "try {\n    $0\n} catch (${1:error}) {\n    \n} finally {\n    \n}" "try... catch... finally" nil
			("syntax")
			nil nil nil nil)
		       ("tryc" "try {\n    $0\n} catch (${1:error}) {\n    \n}" "try... catch" nil
			("syntax")
			nil nil nil nil)
		       ("tryf" "try {\n    $0\n} finally {\n    \n}" "try... finally" nil
			("syntax")
			nil nil nil nil)
		       ("v" "var ${1:v} = $0;" "var" nil
			("syntax")
			nil nil nil nil)
		       ("while" "while (${1:condition}) {\n    $0\n}" "while" nil
			("syntax")
			nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'js-mode
		     '(("afte" "afterEach( function() {\n    $0\n} );" "afterEach" nil
			("tests")
			nil nil nil nil)
		       ("any" "jasmine.any(${1:Object})" "any" nil
			("tests")
			nil nil nil nil)
		       ("befe" "beforeEach( function() {\n    $0\n} );" "beforeEach" nil
			("tests")
			nil nil nil nil)
		       ("des" "describe( \"${1:something under test}\", function() {\n    $0\n} );" "describe" nil
			("tests")
			nil nil nil nil)
		       ("expntb" "expect(${1:actual}).not.toBe(${2:expected});" "expect... not... toBe" nil
			("tests")
			nil nil nil nil)
		       ("expntbct" "expect(${1:actual}).not.toBeCloseTo(${2:expected}, ${3:4});" "expect... not... toBeCloseTo" nil
			("tests")
			nil nil nil nil)
		       ("expntbd" "expect(${1:actual}).not.toBeDefined();" "expect... not... toBeDefined" nil
			("tests")
			nil nil nil nil)
		       ("expntbf" "expect(${1:actual}).not.toBeFalsy();" "expect... not... toBeFalsy" nil
			("tests")
			nil nil nil nil)
		       ("expntbgt" "expect(${1:actual}).not.toBeGreaterThan(${2:expected});" "expect... not... toBeGreaterThan" nil
			("tests")
			nil nil nil nil)
		       ("expntblt" "expect(${1:actual}).not.toBeLessThan(${2:expected});" "expect... not... toBeLessThan" nil
			("tests")
			nil nil nil nil)
		       ("expntbn" "expect(${1:actual}).not.toBeNull();" "expect... not... toBeNull" nil
			("tests")
			nil nil nil nil)
		       ("expntbt" "expect(${1:actual}).not.toBeTruthy();" "expect... not... toBeTruthy" nil
			("tests")
			nil nil nil nil)
		       ("expntbu" "expect(${1:actual}).not.toBeUndefined();" "expect... not... toBeUndefined" nil
			("tests")
			nil nil nil nil)
		       ("expntc" "expect(${1:actual}).not.toContain(${2:expected});" "expect... not... toContain" nil
			("tests")
			nil nil nil nil)
		       ("expnte" "expect(${1:actual}).not.toEqual(${2:expected});" "expect... not... toEqual" nil
			("tests")
			nil nil nil nil)
		       ("expnthbc" "expect(${1:actual}).not.toHaveBeenCalled();" "expect... not... toHaveBeenCalled" nil
			("tests")
			nil nil nil nil)
		       ("expnthbcw" "expect(${1:actual}).not.toHaveBeenCalledWith(${2:args});" "expect... not... toHaveBeenCalledWith" nil
			("tests")
			nil nil nil nil)
		       ("expntm" "expect(${1:actual}).not.toMatch(${2:/${3:pattern}/});" "expect... not... toMatch" nil
			("tests")
			nil nil nil nil)
		       ("expntt" "expect(${1:actual}).not.toThrow();" "expect... not... toThrow" nil
			("tests")
			nil nil nil nil)
		       ("exptb" "expect(${1:actual}).toBe(${2:expected});" "expect... toBe" nil
			("tests")
			nil nil nil nil)
		       ("exptbct" "expect(${1:actual}).toBeCloseTo(${2:expected}, ${3:4});" "expect... toBeCloseTo" nil
			("tests")
			nil nil nil nil)
		       ("exptbd" "expect(${1:actual}).toBeDefined();" "expect... toBeDefined" nil
			("tests")
			nil nil nil nil)
		       ("exptbf" "expect(${1:actual}).toBeFalsy();" "expect... toBeFalsy" nil
			("tests")
			nil nil nil nil)
		       ("exptbgt" "expect(${1:actual}).toBeGreaterThan(${2:expected});" "expect... toBeGreaterThan" nil
			("tests")
			nil nil nil nil)
		       ("exptblt" "expect(${1:actual}).toBeLessThan(${2:expected});" "expect... toBeLessThan" nil
			("tests")
			nil nil nil nil)
		       ("exptbn" "expect(${1:actual}).toBeNull();" "expect... toBeNull" nil
			("tests")
			nil nil nil nil)
		       ("exptbt" "expect(${1:actual}).toBeTruthy();" "expect... toBeTruthy" nil
			("tests")
			nil nil nil nil)
		       ("exptbu" "expect(${1:actual}).toBeUndefined();" "expect... toBeUndefined" nil
			("tests")
			nil nil nil nil)
		       ("exptc" "expect(${1:actual}).toContain(${2:expected});" "expect... toContain" nil
			("tests")
			nil nil nil nil)
		       ("expte" "expect(${1:actual}).toEqual(${2:expected});" "expect... toEqual" nil
			("tests")
			nil nil nil nil)
		       ("expthbc" "expect(${1:actual}).toHaveBeenCalled();" "expect... toHaveBeenCalled" nil
			("tests")
			nil nil nil nil)
		       ("expthbcw" "expect(${1:actual}).toHaveBeenCalledWith(${2:args});" "expect... toHaveBeenCalledWith" nil
			("tests")
			nil nil nil nil)
		       ("exptm" "expect(${1:actual}).toMatch(${2:/${3:pattern}/});" "expect... toMatch" nil
			("tests")
			nil nil nil nil)
		       ("exptt" "expect(${1:actual}).toThrow();" "expect... toThrow" nil
			("tests")
			nil nil nil nil)
		       ("it" "it( \"${1:does this thing}\", function() {\n    $0\n} );" "it" nil
			("tests")
			nil nil nil nil)
		       ("spy" "$1[\"$2\"] = function() { };\nspyOn(${1:spy}, \"${2:method}\").andReturn(${3:value});" "spy" nil
			("tests")
			nil nil nil nil)))


;;; Do not edit! File generated at Sun Nov  3 12:34:58 2013
