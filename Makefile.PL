use inc::Module::Install;

RTx     'RT-Extension-Selectize';
license 'gpl_2';
repository 'https://github.com/bestpractical/rt-extension-selectize';

requires_rt '4.4.3';
rt_too_new '4.6.0';

sign;
WriteAll;
