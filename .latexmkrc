#!/usr/bin/env perl

$latex          = 'uplatex -synctex=1 -halt-on-error';
$latex_silent   = 'uplatex -synctex=1 -halt-on-error -interaction=batchmode';
$bibtex         = 'upbibtex';
$biber          = 'biber --bblencoding=utf8 -u -U --output-safechars';
$mendex         = 'mendex';

$dvipdf         = 'dvipdfmx -f ckx.map %O %S';
$xelatex        = 'xelatex -synctex=1';
$pdf_mode       = 3;  # use dvipdf
#$pdf_previewer  = "qpdfview";
#$pdf_update_method = 0;

$pvc_view_file_via_temporary = 0;
