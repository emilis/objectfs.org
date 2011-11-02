##
# File lists:
#
LESS_FILES = files/less/site.less


# --- Rules: -----------------------------------------------------------------

##
# Default target:
#
default: make_dev


##
# Compile LESS files:
#
LESSC_CMD = nodejs /opt/lessc/bin/lessc
LESSC_OPT = --compress
LESSC_IN = files/less/site.less
LESSC_OUT = files/style.css

$(LESSC_OUT) : $(LESS_FILES)
	$(LESSC_CMD) $(LESSC_OPT) $(LESSC_IN) $(LESSC_OUT)


jekyll:
	jekyll

# --- Main rules: ------------------------------------------------------------

##
# The rule to make them all:
#
all : make_dev 


##
# Default rule to just update development versions
make_dev : $(LESSC_OUT) jekyll


