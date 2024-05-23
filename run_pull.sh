
gmx make_ndx -f npt.gro
...
 > r 1-27
 > name 19 Chain_A
 > r 28-54
 > name 20 Chain_B
 > q

gmx grompp -f md_pull.mdp -c npt.gro -p topol.top -r npt.gro -n index.ndx -t npt.cpt -o pull.tpr
gmx mdrun -deffnm pull -pf pullf.xvg -px pullx.xvg

gmx trjconv -s pull.tpr -f pull.xtc -o conf.gro -sep

gmx grompp -f npt_umbrella.mdp -c conf6.gro -p topol.top -r conf6.gro -n index.ndx -o npt0.tpr
...
gmx grompp -f npt_umbrella.mdp -c conf449.gro -p topol.top -r conf449.gro -n index.ndx -o npt22.tpr
