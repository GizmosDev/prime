#!/bin/zsh
##
## Build Helper Script
## Version: 1.1.0
##

# Defaults
PACKAGE_NAME=prime
DEBUG=NO
VERBOSE=YES
CMD=
SUBCMD=

# Path's to local binaries
BASENAME=/usr/bin/basename
DIRNAME=/usr/bin/dirname
READLINK=/usr/bin/readlink
CAT=/bin/cat
CP=/bin/cp
SED=/usr/bin/sed
WC=/usr/bin/wc
XARGS=/usr/bin/xargs
CUT=/usr/bin/cut
HEAD=/usr/bin/head
TAIL=/usr/bin/tail
FIND=/usr/bin/find
AWK=/usr/bin/awk
SORT=/usr/bin/sort

SCRIPT=`${BASENAME} ${0}`

SAVEDPWD=`pwd`

function usage {
	echo "Usage: ${SCRIPT} command [-h] [-v] [-d]"
	echo ""
	echo "  Commands:"
	echo ""
	echo "    update_imports"
	echo "		 > Generate the main import file (that exports all other source files)"
	echo ""
	echo "  Options:"
	echo ""
	echo "    -h | --help"
	echo "		 > Print this help and exit"
	echo ""
	echo "    -v | --verbose"
	echo "		 > Toggle verbose mode"
	echo ""
	echo "    -d | --debug"
	echo "		 > Toggle debug mode [default: Off]"
	echo ""
}

function verbose {
	if [ $# -lt 1 ] || [ "${VERBOSE}" != "YES" ] ; then
		return
	fi
	"${CAT}" <<< "ℹ️  $@"
}

function verboseCat {
	if [ $# -lt 1 ] || [ "${VERBOSE}" != "YES" ] ; then
		return
	fi
	verbose "File: $@"
	verbose "------------------------------------------------------------"
	"${CAT}" "${@}"
	verbose "------------------------------------------------------------"
}

function debug {
	if [ $# -lt 1 ] || [ "${DEBUG}" != "YES" ] ; then
		return
	fi
	"${CAT}" <<< "🪲  $@"
}

function debugCat {
	if [ $# -lt 1 ] || [ "${DEBUG}" != "YES" ] ; then
		return
	fi
	debug "File: $@"
	debug "------------------------------------------------------------"
	"${CAT}" "${@}"
	debug "------------------------------------------------------------"
}

function warning {
	if [ $# -lt 1 ] ; then
		return
	fi
	"${CAT}" <<< "⚠️  $@"
}


function error {
	if [ $# -lt 1 ] ; then
		return
	fi
	"${CAT}" <<< "❌ $@" 1>&2;
}

function fatal {
	if [ $# -gt 0 ] ; then
		"${CAT}" <<< "💀 $@" 1>&2;
	fi
	exit
}

function makeImports {
    _SAVEDPWD=`pwd`

    IMPORT_FILE="${PROJECT_DIR}/lib/${PACKAGE_NAME}.dart"
	LIB_DIR="${PROJECT_DIR}/lib/"
	SRC="src"

	verbose "Making imports file: ${IMPORT_FILE}"

	if [ ! -d "${LIB_DIR}/${SRC}" ]; then
		fatal "Library Source folder: '${LIB_DIR}/${SRC}' not found, exiting"
	fi

	TEMPFILE=$(mktemp /tmp/${PACKAGE_NAME}_makeImports.XXXXXX)

	echo "// GENERATED CODE - DO NOT MODIFY BY HAND" >> "${TEMPFILE}"
	echo "library;" >> "${TEMPFILE}"
	echo "" >> "${TEMPFILE}"

	cd "${LIB_DIR}"
	for DART_FILE in `"${FIND}" "${SRC}" -name "*.dart" | "${SORT}"` ; do
		echo "export '${DART_FILE}';" >> "${TEMPFILE}"
	done;

	debugCat "${TEMPFILE}"
	"${CAT}" "${TEMPFILE}" > "${IMPORT_FILE}"

	rm "${TEMPFILE}"
    cd "${_SAVEDPWD}"
}

if [[ $# -gt 0 ]] ; then
	CMD="${1}"
	shift
fi;

# Options
while [[ $# -gt 0 ]]; do
	opt="${1}"

	case ${opt} in
		-v|--verbose)
			if [ "${VERBOSE}" = "YES" ]; then
				VERBOSE=NO
			else
				VERBOSE=YES
			fi
			;;

		-d|--debug)
			if [ "${DEBUG}" = "YES" ]; then
				DEBUG=NO
			else
				DEBUG=YES
			fi
			;;

		-h|--help)
			SUBCMD=help
			;;

		*)
			# unknown option
			;;

	esac
	shift
done

FULL_SCRIPT=`${READLINK} -f "${(%):-%x}"`
PROJECT_DIR=`${DIRNAME} "${FULL_SCRIPT}"`

if [ "${CMD}" = "" ] || [ "${CMD}" = "help" ] || [ "${SUBCMD}" = "help" ]; then
	usage
	exit

elif [ "${CMD}" = "update_imports" ]; then
	makeImports

else
    error "Unknown command"
	usage
	exit

fi

cd "${SAVEDPWD}"
