// This file is released under the 3-clause BSD license. See COPYING-BSD.
// Generated by builder.sce : Please, do not edit this file
// ----------------------------------------------------------------------------
//
libjuliainterface_path = get_absolute_file_path('loader.sce');
//
// ulink previous function with same name
[bOK, ilib] = c_link('libjuliainterface');
if bOK then
  ulink(ilib);
end
//
list_functions = [ 'callJulia';
                   'initJulia';
                   'exitJulia';
];
addinter(libjuliainterface_path + filesep() + 'libjuliainterface' + getdynlibext(), 'libjuliainterface', list_functions);
// remove temp. variables on stack
clear libjuliainterface_path;
clear bOK;
clear ilib;
clear list_functions;
// ----------------------------------------------------------------------------
