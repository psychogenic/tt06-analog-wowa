set project tt_um_psychogenic_wowa
box 0 0 0 0
load $project.mag

# lef write ../lef/$project.lef -pinonly

gds write ../gds/$project.gds
