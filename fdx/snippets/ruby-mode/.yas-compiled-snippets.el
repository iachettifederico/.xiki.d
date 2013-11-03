;;; Compiled snippets and support files for `ruby-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
		     '(("do" "do${1:$(if (> (length text) 0) \" |\" \"\")}${1:variable}${1:$(if (> (length text) 0) \"|\" \"\")}\n  $0\nend" "do" nil
			("blocks")
			nil nil nil nil)
		       ("lam" "lambda {${1:$(if (> (length text) 0) \" |\" \"\")}${1:variable}${1:$(if (> (length text) 0) \"|\" \"\")} $0 }" "lambda" nil
			("blocks")
			nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
		     '(("Fiber" "${1:fiber}${1:$(if (> (length text) 0) \" = \" \"\")}Fiber.new do\n  $0\nend" "Fiber.new" nil
			("concurrency")
			nil nil nil nil)
		       ("Thread" "${1:thread}${1:$(if (> (length text) 0) \" = \" \"\")}Thread.new${2:$(if (> (length text) 0) \"(\" \"\")}${2:args}${2:$(if (> (length text) 0) \")\" \"\")} {${3:$(if (> (length text) 0) \" |\" \"\")}${3:args}${3:$(if (> (length text) 0) \"|\" \"\")} $0 }" "Thread.new" nil
			("concurrency")
			nil nil nil nil)
		       ("ate" "at_exit do\n  $0\nend" "at_exit" nil
			("concurrency")
			nil nil nil nil)
		       ("for" "${1:pid}${1:$(if (> (length text) 0) \" = \" \"\")}fork do\n  $0\nend" "fork" nil
			("concurrency")
			nil nil nil nil)
		       ("tra" "${1:old_handler}${1:$(if (> (length text) 0) \" = \" \"\")}trap(${2::${3:INT}}) do\n  $0\nend" "trap" nil
			("concurrency")
			nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
		     '(("#" "# => " "Result Marker" nil
			("declarations")
			nil nil nil nil)
		       ("a" "SASASASAS" "para jugar" nil
			("declarations")
			nil nil nil nil)
		       ("am" "alias_method :${1:new_name}, :${2:old_name}" "alias_method" nil
			("declarations")
			nil nil nil nil)
		       ("wr" "attr_accessor :${1:attr_names}" "attr_accessor" nil
			("declarations")
			nil nil nil nil)
		       ("r" "attr_reader :${1:attr_names}" "attr_reader" nil
			("declarations")
			nil nil nil nil)
		       ("w" "attr_writer :${1:attr_names}" "attr_writer" nil
			("declarations")
			nil nil nil nil)
		       ("begin" "begin\n  $0\nrescue ${1:Exception}${2:$(if (> (length text) 0) \" => \" \"\")}${2:error}\n  \nend" "begin" nil
			("declarations")
			((yas/indent-line 'fixed))
			nil nil nil)
		       ("case" "case ${1:object}\nwhen ${2:matcher}\n  $0\nend" "case" nil
			("declarations")
			nil nil nil nil)
		       ("cla" "class ${1:`(jeg2/camelize (file-name-nondirectory (file-name-sans-extension (buffer-file-name))))`}${2:$(if (> (length text) 0) \" < \" \"\")}${2:ParentClass}\n  $0\nend" "class" nil
			("declarations")
			nil nil nil nil)
		       ("ctor" "def initialize(${1:args})\n  ${1:$\n(mapconcat\n '(lambda (x) (concat \"@\" x \" = \" x))\n (split-string text \", \")\n (concat \"\\n\" (make-string (current-column) 32)))\n}$0\nend\n" "def initialize(...)" nil
			("declarations")
			nil nil nil nil)
		       ("defi" "def initialize${1:$(if (> (length text) 0) \"(\" \"\")}${1:args}${1:$(if (> (length text) 0) \")\" \"\")}\n  $0\nend" "def initialize" nil
			("declarations")
			nil nil nil nil)
		       ("defmm" "def method_missing(method, *args, &block)\n  $0\nend" "def method_missing" nil
			("declarations")
			nil nil nil nil)
		       ("defs" "def self.${1:class_method_name}\n  $0\nend" "def self" nil
			("declarations")
			nil nil nil nil)
		       ("d" "def ${1:method_name}\n  $0\nend" "def" nil
			("declarations")
			nil nil nil nil)
		       ("defm" "define_method(${1::${2:method_name}}) {${3:$(if (> (length text) 0) \" |\" \"\")}${3:variable}${3:$(if (> (length text) 0) \"|\" \"\")} $0 }" "define_method" nil
			("declarations")
			nil nil nil nil)
		       ("elsif" "elsif ${1:condition}\n  $0" "elsif" nil
			("declarations")
			nil nil nil nil)
		       ("enc" "# encoding: ${1:UTF-8}\n$0" "Encoding" nil
			("declarations")
			nil nil nil nil)
		       ("ife" "if ${1:condition}\n  $0\nelse\n\nend" "if... else" nil
			("declarations")
			nil nil nil nil)
		       ("if" "if ${1:condition}\n  $0\nend" "if" nil
			("declarations")
			nil nil nil nil)
		       ("mod" "module ${1:`(let ((dir (file-name-nondirectory (directory-file-name (file-name-directory (file-name-sans-extension (buffer-file-name))))))) (if (string= dir \"lib\") (jeg2/camelize (file-name-nondirectory (file-name-sans-extension (buffer-file-name)))) (jeg2/camelize dir)))`}\n  $0\nend" "module" nil
			("declarations")
			nil nil nil nil)
		       ("req" "require \"$0\"" "require" nil
			("declarations")
			nil nil nil nil)
		       ("reqr" "require_relative \"$0\"" "require_relative" nil
			("declarations")
			nil nil nil nil)
		       ("unless" "unless ${1:condition}\n  $0\nend" "unless" nil
			("declarations")
			nil nil nil nil)
		       ("until" "until ${1:condition}\n  $0\nend" "until" nil
			("declarations")
			nil nil nil nil)
		       ("when" "when ${1:matcher}\n  $0" "when" nil
			("declarations")
			nil nil nil nil)
		       ("while" "while ${1:condition}\n  $0\nend" "while" nil
			("declarations")
			nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
		     '(("Hash" "Hash.new { |${1:hash}, ${2:key}| $1[$2] = $0 }" "Hash.new" nil
			("hashes")
			nil nil nil nil)
		       ("del" "delete(${1:object}) {${2:$(if (> (length text) 0) \" |\" \"\")}${2:key}${2:$(if (> (length text) 0) \"|\" \"\")} $0 }" "delete" nil
			("hashes")
			nil nil nil nil)
		       ("fet" "fetch(${1:key}) {${2:$(if (> (length text) 0) \" |\" \"\")}${2:key}${2:$(if (> (length text) 0) \"|\" \"\")} $0 }" "fetch" nil
			("hashes")
			nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
		     '(("dir" "File.dirname(__FILE__)" "directory" nil
			("io")
			nil nil nil nil)
		       ("for" "foreach(${1:\"${2:path}\"}${3:$(if (> (length text) 0) \", encoding: \\\\\\\"\" \"\")}${3:UTF-8}${3:$(if (> (length text) 0) \"\\\\\\\"\" \"\")}) do |${4:line}|\n  $0\nend" "foreach" nil
			("io")
			nil nil nil nil)
		       ("glo" "glob(${1:\"${2:path}\"}) do |${3:path}|\n  $0\nend" "glob" nil
			("io")
			nil nil nil nil)
		       ("ope" "open(${1:\"${2:path}\"}${3:$(if (> (length text) 0) \", \\\\\\\"\" \"\")}${3:w}${3:$(if (> (length text) 0) \"\\\\\\\"\" \"\")}) { |${4:io}| $0 }" "open" nil
			("io")
			nil nil nil nil)
		       ("opt" "parser.on( \"-${1:o}\", \"--${2:long-option-name ARG}\"${3:$(if (> (length text) 0) \", \" \"\")}${3:String},\n           \"${4:Option description.}\" ) do${5:$(if (> (length text) 0) \" |\" \"\")}${5:arg}${5:$(if (> (length text) 0) \"|\" \"\")}\n  options[:${6:option}] = $5$0\nend" "option" nil
			("io")
			nil nil nil nil)
		       ("paro" "require \"optparse\"\n\noptions = {${1:default: \"args\"}}\n\nARGV.options do |parser|\n  parser.banner = \"Usage:  #{File.basename($PROGRAM_NAME)} [OPTIONS]${2:$(if (> (length text) 0) \" \" \"\")}${2:OTHER_ARGS}\"\n\n  parser.separator \"\"\n  parser.separator \"Specific Options:\"\n\n  $0\n\n  parser.separator \"Common Options:\"\n\n  parser.on( \"-h\", \"--help\",\n             \"Show this message.\" ) do\n    puts parser\n    exit\n  end\n\n  begin\n    parser.parse!\n  rescue OptionParser::ParseError\n    puts parser\n    exit\n  end\nend" "parse_options" nil
			("io")
			nil nil nil nil)
		       ("relp" "File.join(File.dirname(__FILE__), ${1:*%w[${2:rel path here}]})" "relative_path" nil
			("io")
			nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
		     '(("Array" "Array.new(${1:10}) {${2:$(if (> (length text) 0) \" |\" \"\")}${2:i}${2:$(if (> (length text) 0) \"|\" \"\")} $0 }" "Array.new" nil
			("iterators")
			nil nil nil nil)
		       ("all" "all? { |${1:e}| $0 }" "all?" nil
			("iterators")
			nil nil nil nil)
		       ("any" "any? { |${1:e}| $0 }" "any?" nil
			("iterators")
			nil nil nil nil)
		       ("bse" "bsearch { |${1:e}| $0 }" "bsearch" nil
			("iterators")
			nil nil nil nil)
		       ("byt" "bytes do |${1:byte}|\n  $0\nend" "bytes" nil
			("iterators")
			nil nil nil nil)
		       ("cha" "chars do |${1:char}|\n  $0\nend" "chars" nil
			("iterators")
			nil nil nil nil)
		       ("chu" "chunk${1:$(if (> (length text) 0) \"(\" \"\")}${1:initial}${1:$(if (> (length text) 0) \")\" \"\")} { |${2:e}${3:$(if (> (length text) 0) \", \" \"\")}${3:state}| $0 }" "chunk" nil
			("iterators")
			nil nil nil nil)
		       ("cod" "codepoints do |${1:codepoint}|\n  $0\nend" "codepoints" nil
			("iterators")
			nil nil nil nil)
		       ("col" "collect { |${1:e}| $0 }" "collect" nil
			("iterators")
			nil nil nil nil)
		       ("colc" "collect_concat { |${1:e}| $0 }" "collect_concat" nil
			("iterators")
			nil nil nil nil)
		       ("cou" "count { |${1:e}| $0 }" "count" nil
			("iterators")
			nil nil nil nil)
		       ("cyc" "cycle${1:$(if (> (length text) 0) \"(\" \"\")}${1:10}${1:$(if (> (length text) 0) \")\" \"\")} do |${2:e}|\n  $0\nend" "cycle" nil
			("iterators")
			nil nil nil nil)
		       ("deli" "delete_if { |${1:e}| $0 }" "delete_if" nil
			("iterators")
			nil nil nil nil)
		       ("det" "detect${1:$(if (> (length text) 0) \"(lambda { \" \"\")}${1:default}${1:$(if (> (length text) 0) \" })\" \"\")} { |${2:e}| $0 }" "detect" nil
			("iterators")
			nil nil nil nil)
		       ("dow" "downto(${1:0}) do${2:$(if (> (length text) 0) \" |\" \"\")}${2:n}${2:$(if (> (length text) 0) \"|\" \"\")}\n  $0\nend" "downto" nil
			("iterators")
			nil nil nil nil)
		       ("drow" "drop_while { |${1:e}| $0 }" "drop_while" nil
			("iterators")
			nil nil nil nil)
		       ("ea" "each do |${1:e}|\n  $0\nend" "each" nil
			("iterators")
			nil nil nil nil)
		       ("eab" "each_byte do |${1:byte}|\n  $0\nend" "each_byte" nil
			("iterators")
			nil nil nil nil)
		       ("eac" "each_char do |${1:char}|\n  $0\nend" "each_char" nil
			("iterators")
			nil nil nil nil)
		       ("eac" "each_codepoint do |${1:codepoint}|\n  $0\nend" "each_codepoint" nil
			("iterators")
			nil nil nil nil)
		       ("eac" "each_cons do |${1:group}|\n  $0\nend" "each_cons" nil
			("iterators")
			nil nil nil nil)
		       ("eae" "each_entry do |${1:e}|\n  $0\nend" "each_entry" nil
			("iterators")
			nil nil nil nil)
		       ("eai" "each_index do |${1:i}|\n  $0\nend" "each_index" nil
			("iterators")
			nil nil nil nil)
		       ("eak" "each_key do |${1:key}|\n  $0\nend" "each_key" nil
			("iterators")
			nil nil nil nil)
		       ("eal" "each_line${1:$(if (> (length text) 0) \"(\" \"\")}${1:\"${2:\\n}\"}${1:$(if (> (length text) 0) \")\" \"\")} do |${3:line}|\n  $0\nend" "each_line" nil
			("iterators")
			nil nil nil nil)
		       ("eap" "each_pair do |${1:key}, ${2:value}|\n  $0\nend" "each_pair" nil
			("iterators")
			nil nil nil nil)
		       ("eas" "each_slice do |${1:group}|\n  $0\nend" "each_slice" nil
			("iterators")
			nil nil nil nil)
		       ("eav" "each_value do |${1:value}|\n  $0\nend" "each_value" nil
			("iterators")
			nil nil nil nil)
		       ("eawi" "each_with_index do |${1:e}, ${2:i}|\n  $0\nend" "each_with_index" nil
			("iterators")
			nil nil nil nil)
		       ("eawo" "each_with_object(${1:object}) do |${2:e}, ${3:o}|\n  $0\nend" "each_with_object" nil
			("iterators")
			nil nil nil nil)
		       ("fil" "fill(${1:range}) {${2:$(if (> (length text) 0) \" |\" \"\")}${2:i}${2:$(if (> (length text) 0) \"|\" \"\")} $0 }" "fill" nil
			("iterators")
			nil nil nil nil)
		       ("fin" "find${1:$(if (> (length text) 0) \"(lambda { \" \"\")}${1:default}${1:$(if (> (length text) 0) \" })\" \"\")} { |${2:e}| $0 }" "find" nil
			("iterators")
			nil nil nil nil)
		       ("fina" "find_all { |${1:e}| $0 }" "find_all" nil
			("iterators")
			nil nil nil nil)
		       ("fini" "find_index { |${1:e}| $0 }" "find_index" nil
			("iterators")
			nil nil nil nil)
		       ("flam" "flat_map { |${1:e}| $0 }" "flat_map" nil
			("iterators")
			nil nil nil nil)
		       ("gre" "grep(${1:/${2:pattern}/}) {${3:$(if (> (length text) 0) \" |\" \"\")}${3:match}${3:$(if (> (length text) 0) \"|\" \"\")} $0 }" "grep" nil
			("iterators")
			nil nil nil nil)
		       ("grob" "group_by { |${1:e}| $0 }" "group_by" nil
			("iterators")
			nil nil nil nil)
		       ("gsu" "gsub(${1:/${2:pattern}/}) {${3:$(if (> (length text) 0) \" |\" \"\")}${3:match}${3:$(if (> (length text) 0) \"|\" \"\")} $0 }" "gsub" nil
			("iterators")
			nil nil nil nil)
		       ("inj" "inject${1:$(if (> (length text) 0) \"(\" \"\")}${1:initial}${1:$(if (> (length text) 0) \")\" \"\")} { |${2:result}, ${3:e}| $0 }" "inject" nil
			("iterators")
			nil nil nil nil)
		       ("keei" "keep_if { |${1:e}| $0 }" "keep_if" nil
			("iterators")
			nil nil nil nil)
		       ("lin" "lines${1:$(if (> (length text) 0) \"(\" \"\")}${1:\"${2:\\n}\"}${1:$(if (> (length text) 0) \")\" \"\")} do |${3:line}|\n  $0\nend" "lines" nil
			("iterators")
			nil nil nil nil)
		       ("loo" "loop do\n  $0\nend" "loop" nil
			("iterators")
			nil nil nil nil)
		       ("map" "map { |${1:e}| $0 }" "map" nil
			("iterators")
			nil nil nil nil)
		       ("max" "max { |${1:a}, ${2:b}| $0 }" "max" nil
			("iterators")
			nil nil nil nil)
		       ("maxb" "max_by { |${1:e}| $0 }" "max_by" nil
			("iterators")
			nil nil nil nil)
		       ("min" "min { |${1:a}, ${2:b}| $0 }" "min" nil
			("iterators")
			nil nil nil nil)
		       ("minb" "min_by { |${1:e}| $0 }" "min_by" nil
			("iterators")
			nil nil nil nil)
		       ("min" "minmax { |${1:a}, ${2:b}| $0 }" "minmax" nil
			("iterators")
			nil nil nil nil)
		       ("minb" "minmax_by { |${1:e}| $0 }" "minmax_by" nil
			("iterators")
			nil nil nil nil)
		       ("non" "none? { |${1:e}| $0 }" "none?" nil
			("iterators")
			nil nil nil nil)
		       ("one" "one? { |${1:e}| $0 }" "one?" nil
			("iterators")
			nil nil nil nil)
		       ("par" "partition { |${1:e}| $0 }" "partition" nil
			("iterators")
			nil nil nil nil)
		       ("red" "reduce${1:$(if (> (length text) 0) \"(\" \"\")}${1:initial}${1:$(if (> (length text) 0) \")\" \"\")} { |${2:result}, ${3:e}| $0 }" "reduce" nil
			("iterators")
			nil nil nil nil)
		       ("rej" "reject { |${1:e}| $0 }" "reject" nil
			("iterators")
			nil nil nil nil)
		       ("reve" "reverse_each do |${1:e}|\n  $0\nend" "reverse_each" nil
			("iterators")
			nil nil nil nil)
		       ("sca" "scan(${1:/${2:pattern}/}) do${3:$(if (> (length text) 0) \" |\" \"\")}${3:match}${3:$(if (> (length text) 0) \"|\" \"\")}\n  $0\nend" "scan" nil
			("iterators")
			nil nil nil nil)
		       ("sel" "select { |${1:e}| $0 }" "select" nil
			("iterators")
			nil nil nil nil)
		       ("slib" "slice_before${1:$(if (> (length text) 0) \"(\" \"\")}${1:initial}${1:$(if (> (length text) 0) \")\" \"\")} { |${2:e}${3:$(if (> (length text) 0) \", \" \"\")}${3:state}| $0 }" "slice_before" nil
			("iterators")
			nil nil nil nil)
		       ("sor" "sort { |${1:a}, ${2:b}| $0 }" "sort" nil
			("iterators")
			nil nil nil nil)
		       ("sorb" "sort_by { |${1:e}| $0 }" "sort_by" nil
			("iterators")
			nil nil nil nil)
		       ("ste" "step(${1:2}) do${2:$(if (> (length text) 0) \" |\" \"\")}${2:n}${2:$(if (> (length text) 0) \"|\" \"\")}\n  $0\nend" "step" nil
			("iterators")
			nil nil nil nil)
		       ("sub" "sub(${1:/${2:pattern}/}) {${3:$(if (> (length text) 0) \" |\" \"\")}${3:match}${3:$(if (> (length text) 0) \"|\" \"\")} $0 }" "sub" nil
			("iterators")
			nil nil nil nil)
		       ("takw" "take_while { |${1:e}| $0 }" "take_while" nil
			("iterators")
			nil nil nil nil)
		       ("tap" "tap do${1:$(if (> (length text) 0) \" |\" \"\")}${1:object}${1:$(if (> (length text) 0) \"|\" \"\")}\n  $0\nend" "tap" nil
			("iterators")
			nil nil nil nil)
		       ("tim" "times do${1:$(if (> (length text) 0) \" |\" \"\")}${1:n}${1:$(if (> (length text) 0) \"|\" \"\")}\n  $0\nend" "times" nil
			("iterators")
			nil nil nil nil)
		       ("upt" "upto(${1:10}) do${2:$(if (> (length text) 0) \" |\" \"\")}${2:n}${2:$(if (> (length text) 0) \"|\" \"\")}\n  $0\nend" "upto" nil
			("iterators")
			nil nil nil nil)
		       ("wi" "with_index { |${1:e}, ${2:i}| $0 }" "with_index" nil
			("iterators")
			nil nil nil nil)
		       ("wo" "with_object { |${1:e}, ${2:o}| $0 }" "with_object" nil
			("iterators")
			nil nil nil nil)
		       ("zip" "zip(${1:enums}) do |${2:row}|\n  $0\nend" "zip" nil
			("iterators")
			nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
		     '(("fil" "file \"${1:.ext}\" => %w[${2:pre.o reqs.o}] do\n  $0\nend" "file" nil
			("rake")
			nil nil nil nil)
		       ("nam" "namespace :${1:`(downcase (file-name-nondirectory (file-name-sans-extension (buffer-file-name))))`} do\n  $0\nend" "namespace" nil
			("rake")
			nil nil nil nil)
		       ("rul" "rule(${1:\"${2:.ext}\"} => ${3:%w[${4:.c}]}) do\n  $0\nend" "rule" nil
			("rake")
			nil nil nil nil)
		       ("tas" "${1:$(if (> (length text) 0) \"desc \\\\\\\"\" \"\")}${1:Task description}${1:$(if (> (length text) 0) \"\\\\\\\"\\n\" \"\")}task :${2:${3:task_name} => ${4:%w[${5:dependent tasks}]}} do\n  $0\nend" "task" nil
			("rake")
			nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
		     '(("Benb" "REPETITIONS = ${1:10_000}\nBenchmark.bmbm do |timings|\n  $0\nend" "Benchmark bmbm" nil
			("tests")
			nil nil nil nil)
		       ("Benr" "${1:elapsed}${1:$(if (> (length text) 0) \" = \" \"\")}Benchmark.realtime do\n  $0\nend" "Benchmark realtime" nil
			("tests")
			nil nil nil nil)
		       ("aft" "after${1:$(if (> (length text) 0) \" :\" \"\")}${1:all} do\n  $0\nend" "after" nil
			("tests")
			nil nil nil nil)
		       ("ass" "assert(${1:test}, \"${2:Failure message}\")$0" "assert" nil
			("tests")
			nil nil nil nil)
		       ("assb" "assert_blank(${1:object})$0" "assert_blank" nil
			("tests")
			nil nil nil nil)
		       ("assb" "assert_block(\"${1:Failure message}\") do\n  $0\nend" "assert_block" nil
			("tests")
			nil nil nil nil)
		       ("assd" "assert_difference(-> { $1 }${2:$(if (> (length text) 0) \", \" \"\")}${2:-1}${3:$(if (> (length text) 0) \", \\\\\\\"\" \"\")}${3:Failure message}${3:$(if (> (length text) 0) \"\\\\\\\"\" \"\")}) do\n  $0\nend" "assert_difference" nil
			("tests")
			nil nil nil nil)
		       ("asse" "assert_empty(${1:object})$0" "assert_empty" nil
			("tests")
			nil nil nil nil)
		       ("asse" "assert_equal(${1:expected}, ${2:actual})$0" "assert_equal" nil
			("tests")
			nil nil nil nil)
		       ("assid" "assert_in_delta(${1:expected}, ${2:actual}${3:$(if (> (length text) 0) \", \" \"\")}${3:2 ** -20})$0" "assert_in_delta" nil
			("tests")
			nil nil nil nil)
		       ("assie" "assert_in_epsilon(${1:expected}, ${2:actual}${3:$(if (> (length text) 0) \", \" \"\")}${3:2 ** -20})$0" "assert_in_epsilon" nil
			("tests")
			nil nil nil nil)
		       ("assi" "assert_includes(${1:collection}, ${2:object})$0" "assert_includes" nil
			("tests")
			nil nil nil nil)
		       ("assio" "assert_instance_of(${1:Type}, ${2:instance})$0" "assert_instance_of" nil
			("tests")
			nil nil nil nil)
		       ("assko" "assert_kind_of(${1:Kind}, ${2:instance})$0" "assert_kind_of" nil
			("tests")
			nil nil nil nil)
		       ("assm" "assert_match(${1:/${2:pattern}/}, ${3:string})$0" "assert_match" nil
			("tests")
			nil nil nil nil)
		       ("assn" "assert_nil(${1:object})$0" "assert_nil" nil
			("tests")
			nil nil nil nil)
		       ("assnd" "assert_no_difference(-> { $1 }${2:$(if (> (length text) 0) \", \\\\\\\"\" \"\")}${2:Failure message}${2:$(if (> (length text) 0) \"\\\\\\\"\" \"\")}) do\n  $0\nend" "assert_no_difference" nil
			("tests")
			nil nil nil nil)
		       ("asso" "assert_operator(${1:left}, :${2:<=}, ${3:right})$0" "assert_operator" nil
			("tests")
			nil nil nil nil)
		       ("asso" "assert_output(${1:stdout}${2:$(if (> (length text) 0) \", \" \"\")}${2:stderr}) do\n  $0\nend" "assert_output" nil
			("tests")
			nil nil nil nil)
		       ("assp" "assert_performance(->(${1:x}, ${2:y}) { $3 }) do |${4:n}|\n  $0\nend" "assert_performance" nil
			("tests")
			nil nil nil nil)
		       ("asspc" "assert_performance_constant(${1:0.9999}) do |${2:n}|\n  $0\nend" "assert_performance_constant" nil
			("tests")
			nil nil nil nil)
		       ("asspe" "assert_performance_exponential(${1:0.9999}) do |${2:n}|\n  $0\nend" "assert_performance_exponential" nil
			("tests")
			nil nil nil nil)
		       ("asspl" "assert_performance_linear(${1:0.9999}) do |${2:n}|\n  $0\nend" "assert_performance_linear" nil
			("tests")
			nil nil nil nil)
		       ("asspp" "assert_performance_power(${1:0.9999}) do |${2:n}|\n  $0\nend" "assert_performance_power" nil
			("tests")
			nil nil nil nil)
		       ("assp" "assert_predicate(${1:object}, :${2:query}?)$0" "assert_predicate" nil
			("tests")
			nil nil nil nil)
		       ("assp" "assert_present(${1:object})$0" "assert_present" nil
			("tests")
			nil nil nil nil)
		       ("assr" "${1:error}${1:$(if (> (length text) 0) \" = \" \"\")}assert_raises(${2:Exception}) do\n  $0\nend" "assert_raises" nil
			("tests")
			nil nil nil nil)
		       ("assrt" "assert_redirected_to(${1:location})$0" "assert_redirected_to" nil
			("tests")
			nil nil nil nil)
		       ("assrt" "assert_respond_to(${1:object}, ${2::${3:message}})$0" "assert_respond_to" nil
			("tests")
			nil nil nil nil)
		       ("assr" "assert_response(${1::success})$0" "assert_response" nil
			("tests")
			nil nil nil nil)
		       ("asss" "assert_same(${1:expected}, ${2:actual})$0" "assert_same" nil
			("tests")
			nil nil nil nil)
		       ("asss" "assert_select(${1:\"${2:selector}\"}${3:$(if (> (length text) 0) \", \" \"\")}${3:tests})${4: do |${5:elements}|\n  $0\nend}" "assert_select" nil
			("tests")
			nil nil nil nil)
		       ("asss" "assert_send([${1:object}, ${2::${3:method}}${4:$(if (> (length text) 0) \", \" \"\")}${4:args}])$0" "assert_send" nil
			("tests")
			nil nil nil nil)
		       ("asss" "assert_silent do\n  $0\nend" "assert_silent" nil
			("tests")
			nil nil nil nil)
		       ("asst" "assert_template(${1:template})$0" "assert_template" nil
			("tests")
			nil nil nil nil)
		       ("asst" "assert_throws(${1::${2:symbol}}) do\n  $0\nend" "assert_throws" nil
			("tests")
			nil nil nil nil)
		       ("bef" "before${1:$(if (> (length text) 0) \" :\" \"\")}${1:all} do\n  $0\nend" "before" nil
			("tests")
			nil nil nil nil)
		       ("benpc" "bench_performance_constant \"${1:algorithm name}\"${2:$(if (> (length text) 0) \", \" \"\")}${2:0.9999} do |${3:n}|\n  $0\nend" "bench_performance_constant" nil
			("tests")
			nil nil nil nil)
		       ("benpe" "bench_performance_exponential \"${1:algorithm name}\"${2:$(if (> (length text) 0) \", \" \"\")}${2:0.9999} do |${3:n}|\n  $0\nend" "bench_performance_exponential" nil
			("tests")
			nil nil nil nil)
		       ("benpl" "bench_performance_linear \"${1:algorithm name}\"${2:$(if (> (length text) 0) \", \" \"\")}${2:0.9999} do |${3:n}|\n  $0\nend" "bench_performance_linear" nil
			("tests")
			nil nil nil nil)
		       ("capi" "${1:stdout}, ${2:stderr} = capture_io do\n  $0\nend" "capture_io" nil
			("tests")
			nil nil nil nil)
		       ("clat" "class ${1:`(jeg2/camelize (file-name-nondirectory (file-name-sans-extension (buffer-file-name))))`} < MiniTest::Unit::TestCase\n  $0\nend" "class test" nil
			("tests")
			((yas/indent-line 'fixed)
			 (yas/wrap-around-region 'nil))
			nil nil nil)
		       ("con" "context \"${1:in this context}\" do\n  $0\nend" "context" nil
			("tests")
			nil nil nil nil)
		       ("defb" "def bench_${1:algorithm}\n  $0\nend" "def bench_" nil
			("tests")
			nil nil nil nil)
		       ("deft" "def test_${1:this_thing}\n  $0\nend" "def test_" nil
			("tests")
			nil nil nil nil)
		       ("des" "describe ${1:\"${2:something under test}\"} do\n  $0\nend" "describe" nil
			("tests")
			nil nil nil nil)
		       ("expntb<" "expect(${1:actual}).not_to be < ${2:expected}" "expect not_to be < " nil
			("tests")
			nil nil nil nil)
		       ("expntb<=" "expect(${1:actual}).not_to be <= ${2:expected}" "expect not_to be <= " nil
			("tests")
			nil nil nil nil)
		       ("expntb>" "expect(${1:actual}).not_to be > ${2:expected}" "expect not_to be > " nil
			("tests")
			nil nil nil nil)
		       ("expntb>=" "expect(${1:actual}).not_to be >= ${2:expected}" "expect not_to be >= " nil
			("tests")
			nil nil nil nil)
		       ("expntb" "expect(${1:actual}).not_to be_${2:query}" "expect not_to be_" nil
			("tests")
			nil nil nil nil)
		       ("expntbako" "expect(${1:actual}).not_to be_a_kind_of(${2:Kind})" "expect not_to be_a_kind_of" nil
			("tests")
			nil nil nil nil)
		       ("expntbaio" "expect(${1:actual}).not_to be_an_instance_of(${2:Type})" "expect not_to be_an_instance_of" nil
			("tests")
			nil nil nil nil)
		       ("expntbf" "expect(${1:actual}).not_to be_false" "expect not_to be_false" nil
			("tests")
			nil nil nil nil)
		       ("expntbn" "expect(${1:actual}).not_to be_nil" "expect not_to be_nil" nil
			("tests")
			nil nil nil nil)
		       ("expntbt" "expect(${1:actual}).not_to be_true" "expect not_to be_true" nil
			("tests")
			nil nil nil nil)
		       ("expntbwo" "expect(${1:actual}).not_to be_within(${2:2 ** -20}).of(${3:expected})" "expect not_to be_within of" nil
			("tests")
			nil nil nil nil)
		       ("expntc" "expect(${1:actual}).not_to cover(${2:value})" "expect not_to cover" nil
			("tests")
			nil nil nil nil)
		       ("expntew" "expect(${1:actual}).not_to end_with(${2:objects})" "expect not_to end_with" nil
			("tests")
			nil nil nil nil)
		       ("expnte" "expect(${1:actual}).not_to eq(${2:expected})" "expect not_to eq" nil
			("tests")
			nil nil nil nil)
		       ("expnteql" "expect(${1:actual}).not_to eql(${2:expected})" "expect not_to eql" nil
			("tests")
			nil nil nil nil)
		       ("expntequal" "expect(${1:actual}).not_to equal(${2:expected})" "expect not_to equal" nil
			("tests")
			nil nil nil nil)
		       ("expnth" "expect(${1:actual}).not_to have_${2:attribute}${3:$(if (> (length text) 0) \"(\" \"\")}${3:args}${3:$(if (> (length text) 0) \")\" \"\")}" "expect not_to have_" nil
			("tests")
			nil nil nil nil)
		       ("expnti" "expect(${1:actual}).not_to include(${2:object})" "expect not_to include" nil
			("tests")
			nil nil nil nil)
		       ("expntm" "expect(${1:actual}).not_to match(${2:/${3:pattern}/})" "expect not_to match" nil
			("tests")
			nil nil nil nil)
		       ("expntre" "expect do\n  $0\nend.not_to raise_error(${1:Exception}${2:$(if (> (length text) 0) \", \\\\\\\"\" \"\")}${2:Failure message}${2:$(if (> (length text) 0) \"\\\\\\\"\" \"\")})" "expect not_to raise_error" nil
			("tests")
			nil nil nil nil)
		       ("expntrt" "expect(${1:actual}).not_to redirect_to(${2:location})" "expect not_to redirect_to" nil
			("tests")
			nil nil nil nil)
		       ("expntrt" "expect(${1:actual}).not_to render_template(${2:template})" "expect not_to render_template" nil
			("tests")
			nil nil nil nil)
		       ("expntsw" "expect(${1:actual}).not_to start_with(${2:objects})" "expect not_to start_with" nil
			("tests")
			nil nil nil nil)
		       ("expntts" "expect do\n  $0\nend.not_to throw_symbol(:${1:symbol}${2:$(if (> (length text) 0) \", \" \"\")}${2:value})" "expect not_to throw_symbol" nil
			("tests")
			nil nil nil nil)
		       ("expntyc" "expect do |block|\n  $0\nend.not_to yield_control" "expect not_to yield_control" nil
			("tests")
			nil nil nil nil)
		       ("expntysa" "expect do |block|\n  $0\nend.not_to yield_successive_args(${1:args})" "expect not_to yield_successive_args" nil
			("tests")
			nil nil nil nil)
		       ("expntywa" "expect do |block|\n  $0\nend.not_to yield_with_args(${1:args})" "expect not_to yield_with_args" nil
			("tests")
			nil nil nil nil)
		       ("expntywna" "expect do |block|\n  $0\nend.not_to yield_with_no_args" "expect not_to yield_with_no_args" nil
			("tests")
			nil nil nil nil)
		       ("exptb<" "expect(${1:actual}).to be < ${2:expected}" "expect to be < " nil
			("tests")
			nil nil nil nil)
		       ("exptb<=" "expect(${1:actual}).to be <= ${2:expected}" "expect to be <= " nil
			("tests")
			nil nil nil nil)
		       ("exptb>" "expect(${1:actual}).to be > ${2:expected}" "expect to be > " nil
			("tests")
			nil nil nil nil)
		       ("exptb>=" "expect(${1:actual}).to be >= ${2:expected}" "expect to be >= " nil
			("tests")
			nil nil nil nil)
		       ("exptb" "expect(${1:actual}).to be_${2:query}" "expect to be_" nil
			("tests")
			nil nil nil nil)
		       ("exptbako" "expect(${1:actual}).to be_a_kind_of(${2:Kind})" "expect to be_a_kind_of" nil
			("tests")
			nil nil nil nil)
		       ("exptbaio" "expect(${1:actual}).to be_an_instance_of(${2:Type})" "expect to be_an_instance_of" nil
			("tests")
			nil nil nil nil)
		       ("exptbf" "expect(${1:actual}).to be_false" "expect to be_false" nil
			("tests")
			nil nil nil nil)
		       ("exptbn" "expect(${1:actual}).to be_nil" "expect to be_nil" nil
			("tests")
			nil nil nil nil)
		       ("exptbt" "expect(${1:actual}).to be_true" "expect to be_true" nil
			("tests")
			nil nil nil nil)
		       ("exptbwo" "expect(${1:actual}).to be_within(${2:2 ** -20}).of(${3:expected})" "expect to be_within of" nil
			("tests")
			nil nil nil nil)
		       ("exptc" "expect(${1:actual}).to cover(${2:value})" "expect to cover" nil
			("tests")
			nil nil nil nil)
		       ("exptew" "expect(${1:actual}).to end_with(${2:objects})" "expect to end_with" nil
			("tests")
			nil nil nil nil)
		       ("expte" "expect(${1:actual}).to eq(${2:expected})" "expect to eq" nil
			("tests")
			nil nil nil nil)
		       ("expteql" "expect(${1:actual}).to eql(${2:expected})" "expect to eql" nil
			("tests")
			nil nil nil nil)
		       ("exptequal" "expect(${1:actual}).to equal(${2:expected})" "expect to equal" nil
			("tests")
			nil nil nil nil)
		       ("expth" "expect(${1:actual}).to have_${2:attribute}${3:$(if (> (length text) 0) \"(\" \"\")}${3:args}${3:$(if (> (length text) 0) \")\" \"\")}" "expect to have_" nil
			("tests")
			nil nil nil nil)
		       ("expti" "expect(${1:actual}).to include(${2:object})" "expect to include" nil
			("tests")
			nil nil nil nil)
		       ("exptm" "expect(${1:actual}).to match(${2:/${3:pattern}/})" "expect to match" nil
			("tests")
			nil nil nil nil)
		       ("exptre" "expect do\n  $0\nend.to raise_error(${1:Exception}${2:$(if (> (length text) 0) \", \\\\\\\"\" \"\")}${2:Failure message}${2:$(if (> (length text) 0) \"\\\\\\\"\" \"\")})" "expect to raise_error" nil
			("tests")
			nil nil nil nil)
		       ("exptrt" "expect(${1:actual}).to redirect_to(${2:location})" "expect to redirect_to" nil
			("tests")
			nil nil nil nil)
		       ("exptrt" "expect(${1:actual}).to render_template(${2:template})" "expect to render_template" nil
			("tests")
			nil nil nil nil)
		       ("exptsw" "expect(${1:actual}).to start_with(${2:objects})" "expect to start_with" nil
			("tests")
			nil nil nil nil)
		       ("exptts" "expect do\n  $0\nend.to throw_symbol(:${1:symbol}${2:$(if (> (length text) 0) \", \" \"\")}${2:value})" "expect to throw_symbol" nil
			("tests")
			nil nil nil nil)
		       ("exptyc" "expect do |block|\n  $0\nend.to yield_control" "expect to yield_control" nil
			("tests")
			nil nil nil nil)
		       ("exptysa" "expect do |block|\n  $0\nend.to yield_successive_args(${1:args})" "expect to yield_successive_args" nil
			("tests")
			nil nil nil nil)
		       ("exptywa" "expect do |block|\n  $0\nend.to yield_with_args(${1:args})" "expect to yield_with_args" nil
			("tests")
			nil nil nil nil)
		       ("exptywna" "expect do |block|\n  $0\nend.to yield_with_no_args" "expect to yield_with_no_args" nil
			("tests")
			nil nil nil nil)
		       ("flu" "flunk${1:$(if (> (length text) 0) \" \\\\\\\"\" \"\")}${1:Failure message}${1:$(if (> (length text) 0) \"\\\\\\\"\" \"\")}$0" "flunk" nil
			("tests")
			nil nil nil nil)
		       ("it" "it \"${1:does this thing}\"${2: do\n  $0\nend}" "it" nil
			("tests")
			nil nil nil nil)
		       ("let" "let(:${1:name}) { $0 }" "let" nil
			("tests")
			nil nil nil nil)
		       ("musb" "must_be(:${1:${2:<=}, ${3:42}})$0" "must_be" nil
			("tests")
			nil nil nil nil)
		       ("musbct" "must_be_close_to(${1:expected}${2:$(if (> (length text) 0) \", \" \"\")}${2:2 ** -20})$0" "must_be_close_to" nil
			("tests")
			nil nil nil nil)
		       ("musbe" "must_be_empty$0" "must_be_empty" nil
			("tests")
			nil nil nil nil)
		       ("musbio" "must_be_instance_of(${1:Type})$0" "must_be_instance_of" nil
			("tests")
			nil nil nil nil)
		       ("musbko" "must_be_kind_of(${1:Kind})$0" "must_be_kind_of" nil
			("tests")
			nil nil nil nil)
		       ("musbn" "must_be_nil$0" "must_be_nil" nil
			("tests")
			nil nil nil nil)
		       ("musbsa" "must_be_same_as(${1:expected})$0" "must_be_same_as" nil
			("tests")
			nil nil nil nil)
		       ("musbs" "-> do\n  $0\nend.must_be_silent" "must_be_silent" nil
			("tests")
			nil nil nil nil)
		       ("musbwd" "must_be_within_delta(${1:expected}${2:$(if (> (length text) 0) \", \" \"\")}${2:2 ** -20})$0" "must_be_within_delta" nil
			("tests")
			nil nil nil nil)
		       ("musbwe" "must_be_within_epsilon(${1:expected}${2:$(if (> (length text) 0) \", \" \"\")}${2:2 ** -20})$0" "must_be_within_epsilon" nil
			("tests")
			nil nil nil nil)
		       ("muse" "must_equal(${1:expected})$0" "must_equal" nil
			("tests")
			nil nil nil nil)
		       ("musi" "must_include(${1:object})$0" "must_include" nil
			("tests")
			nil nil nil nil)
		       ("musm" "must_match(${1:/${2:pattern}/})$0" "must_match" nil
			("tests")
			nil nil nil nil)
		       ("muso" "-> do\n  $0\nend.must_output(${1:stdout}${2:$(if (> (length text) 0) \", \" \"\")}${2:stderr})" "must_output" nil
			("tests")
			nil nil nil nil)
		       ("musr" "-> do\n  $0\nend.must_raise(${1:Exception})" "must_raise" nil
			("tests")
			nil nil nil nil)
		       ("musrt" "must_respond_to(${2::${3:message}})$0" "must_respond_to" nil
			("tests")
			nil nil nil nil)
		       ("must" "-> do\n  $0\nend.must_throw(${1::${2:symbol}})" "must_throw" nil
			("tests")
			nil nil nil nil)
		       ("pen" "pending${1:$(if (> (length text) 0) \" \\\\\\\"\" \"\")}${1:reason this isn't active yet}${1:$(if (> (length text) 0) \"\\\\\\\"\" \"\")}${2: do\n  $0\nend}" "pending" nil
			("tests")
			nil nil nil nil)
		       ("ref" "refute(${1:test}, \"${2:Failure message}\")$0" "refute" nil
			("tests")
			nil nil nil nil)
		       ("refe" "refute_empty(${1:object})$0" "refute_empty" nil
			("tests")
			nil nil nil nil)
		       ("refe" "refute_equal(${1:expected}, ${2:actual})$0" "refute_equal" nil
			("tests")
			nil nil nil nil)
		       ("refid" "refute_in_delta(${1:expected}, ${2:actual}${3:$(if (> (length text) 0) \", \" \"\")}${3:2 ** -20})$0" "refute_in_delta" nil
			("tests")
			nil nil nil nil)
		       ("refie" "refute_in_epsilon(${1:expected}, ${2:actual}${3:$(if (> (length text) 0) \", \" \"\")}${3:2 ** -20})$0" "refute_in_epsilon" nil
			("tests")
			nil nil nil nil)
		       ("refi" "refute_includes(${1:collection}, ${2:object})$0" "refute_includes" nil
			("tests")
			nil nil nil nil)
		       ("refio" "refute_instance_of(${1:Type}, ${2:instance})$0" "refute_instance_of" nil
			("tests")
			nil nil nil nil)
		       ("refko" "refute_kind_of(${1:Kind}, ${2:instance})$0" "refute_kind_of" nil
			("tests")
			nil nil nil nil)
		       ("refm" "refute_match(${1:/${2:pattern}/}, ${3:string})$0" "refute_match" nil
			("tests")
			nil nil nil nil)
		       ("refn" "refute_nil(${1:object})$0" "refute_nil" nil
			("tests")
			nil nil nil nil)
		       ("refo" "refute_operator(${1:left}, :${2:<=}, ${3:right})$0" "refute_operator" nil
			("tests")
			nil nil nil nil)
		       ("refp" "refute_predicate(${1:object}, :${2:query}?)$0" "refute_predicate" nil
			("tests")
			nil nil nil nil)
		       ("refrt" "refute_respond_to(${1:object}, ${2::${3:method}})$0" "refute_respond_to" nil
			("tests")
			nil nil nil nil)
		       ("refs" "refute_same(${1:expected}, ${2:actual})$0" "refute_same" nil
			("tests")
			nil nil nil nil)
		       ("reqb" "require \"${1:$$(yas/choose-value '(\"benchmark\" \"minitest/benchmark\"))}\"$0" "require benchmark" nil
			("tests")
			nil nil nil nil)
		       ("reqs" "require${1:$(if (string= text \"spec_helper\") \"_relative\" \"\")} \"${1:$$(yas/choose-value '(\"spec_helper\" \"minitest/autorun\"))}\"$0" "require spec" nil
			("tests")
			nil nil nil nil)
		       ("reqt" "require${1:$(if (string= text \"test_helper\") \"_relative\" \"\")} \"${1:$$(yas/choose-value '(\"test_helper\" \"minitest/autorun\"))}\"$0" "require test" nil
			("tests")
			nil nil nil nil)
		       ("ski" "skip${1:$(if (> (length text) 0) \" \\\\\\\"\" \"\")}${1:reason this code is skipped}${1:$(if (> (length text) 0) \"\\\\\\\"\" \"\")}$0" "skip" nil
			("tests")
			nil nil nil nil)
		       ("sub" "subject${1:$(if (> (length text) 0) \"(:\" \"\")}${1:name}${1:$(if (> (length text) 0) \")\" \"\")} { $0 }" "subject" nil
			("tests")
			nil nil nil nil)
		       ("tes" "test \"${1:does this thing}\" do\n  $0\nend" "test" nil
			("tests")
			nil nil nil nil)
		       ("Bent" "timings.report(\"${1:name}:\") do\n  REPETITIONS.times do\n    $0\n  end\nend" "timings report" nil
			("tests")
			nil nil nil nil)
		       ("wonb" "wont_be(:${1:${2:<=}, ${3:42}})$0" "wont_be" nil
			("tests")
			nil nil nil nil)
		       ("wonbct" "wont_be_close_to(${1:expected}${2:$(if (> (length text) 0) \", \" \"\")}${2:2 ** -20})$0" "wont_be_close_to" nil
			("tests")
			nil nil nil nil)
		       ("wonbe" "wont_be_empty$0" "wont_be_empty" nil
			("tests")
			nil nil nil nil)
		       ("wonbio" "wont_be_instance_of(${1:Type})$0" "wont_be_instance_of" nil
			("tests")
			nil nil nil nil)
		       ("wonbko" "wont_be_kind_of(${1:Kind})$0" "wont_be_kind_of" nil
			("tests")
			nil nil nil nil)
		       ("wonbn" "wont_be_nil$0" "wont_be_nil" nil
			("tests")
			nil nil nil nil)
		       ("wonbsa" "wont_be_same_as(${1:expected})$0" "wont_be_same_as" nil
			("tests")
			nil nil nil nil)
		       ("wonbwd" "wont_be_within_delta(${1:expected}${2:$(if (> (length text) 0) \", \" \"\")}${2:2 ** -20})$0" "wont_be_within_delta" nil
			("tests")
			nil nil nil nil)
		       ("wonbwe" "wont_be_within_epsilon(${1:expected}${2:$(if (> (length text) 0) \", \" \"\")}${2:2 ** -20})$0" "wont_be_within_epsilon" nil
			("tests")
			nil nil nil nil)
		       ("wone" "wont_equal(${1:expected})$0" "wont_equal" nil
			("tests")
			nil nil nil nil)
		       ("woni" "wont_include(${1:object})$0" "wont_include" nil
			("tests")
			nil nil nil nil)
		       ("wonm" "wont_match(${1:/${2:pattern}/})$0" "wont_match" nil
			("tests")
			nil nil nil nil)
		       ("wonrt" "wont_respond_to(${2::${3:message}})$0" "wont_respond_to" nil
			("tests")
			nil nil nil nil)))


;;; Do not edit! File generated at Sun Nov  3 01:14:14 2013
