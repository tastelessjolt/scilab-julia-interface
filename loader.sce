// This file is released under the 3-clause BSD license. See COPYING-BSD.
// Generated by builder.sce : Please, do not edit this file
// ----------------------------------------------------------------------------
//
libbuild_lib_path = get_absolute_file_path('loader.sce');
//
// ulink previous function with same name
[bOK, ilib] = c_link('libbuild_lib');
if bOK then
  ulink(ilib);
end
//
link('/Users/harshithgoka/Documents/GitHub/scilab-julia-interface/thirdparty/Darwin/julia/lib/libjulia' + getdynlibext());
list_functions = [ 'callJulia';
                   'initJulia';
                   'evalJulia';
                   'exitJulia';
                   'importJuliaPackage';
];
addinter(libbuild_lib_path + filesep() + 'libbuild_lib' + getdynlibext(), 'libbuild_lib', list_functions);
// remove temp. variables on stack
clear libbuild_lib_path;
clear bOK;
clear ilib;
clear list_functions;
// ----------------------------------------------------------------------------
