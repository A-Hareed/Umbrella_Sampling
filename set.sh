

gmx pdb2gmx -f 2BEG_model1_capped.pdb -ignh -ter -o complex.gro

gmx solvate -cp newbox.gro -cs spc216.gro -o solv.gro -p topol.top

gmx grompp -f ions.mdp -c solv.gro -p topol.top -o ions.tpr

gmx genion -s ions.tpr -o solv_ions.gro -p topol.top -pname NA -nname CL -neutral -conc 0.1
