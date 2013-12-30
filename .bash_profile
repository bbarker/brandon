export FBAHOME=$HOME

export PATH=$PATH:$FBAHOME/FBA/local/bin
export GUROBI_HOME=$FBAHOME/FBA/local
export GRB_LICENSE_FILE=$FBAHOME/FBA/gurobi_lic/gurobi.lic

#export MOSEKPLATFORM=linux64x86
#export PATH=$PATH:$FBAHOME/FBA/mosek/6/tools/platform/$MOSEKPLATFORM/bin
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$FBAHOME/FBA/mosek/6/tools/platform/$MOSEKPLATFORM/bin
#export MOSEKLM_LICENSE_FILE=$FBAHOME/FBA/mosek/6/licenses

#export ILOG_LICENSE_FILE=$FBAHOME/FBA/cplex_lic/access.ilm

export LDFLAGS="-L$FBAHOME/FBA/local/lib"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$FBAHOME/FBA/local/lib
#export CFLAGS="-I$FBAHOME/FBA/local/include"
export CPPFLAGS="-I$FBAHOME/FBA/local/include"
export CXXFLAGS=$CFLAGS

export MATLABPATH+=:$FBAHOME/FBA/SBMLToolbox/toolbox:$FBAHOME/FBA/SBMLToolbox/toolbox/StoreModels:$FBAHOME/FBA/SBMLToolbox/toolbox/Validate_MATLAB_SBML_Structures:$FBAHOME/FBA/SBMLToolbox/toolbox/ViewModelComponents
export MATLABPATH+=:$FBAHOME/FBA/local/matlab_hooks
export MATLABPATH+=:$FBAHOME/FBA/local/matlab
export MATLABPATH+=:$FBAHOME/FBA/local/lib
export MATLABPATH+=:$FBAHOME/FBA/COBRA
export MATLABPATH+=:$FBAHOME/FBA/FALCON
#export MATLABPATH+=:$FBAHOME/FBA/local/tomlab
#export MATLABPATH+=:$FBAHOME/FBA/local/tomlab/cplex
#export MATLABPATH+=:$FBAHOME/FBA/local/ILOG/CPLEX_Studio_AcademicResearch122/cplex/matlab
#export MATLABPATH+=:$FBAHOME/FBA/mosek/6/toolbox/r2009b

export PYTHONPATH=$HOME/lib/python:$PYTHONPATH

export R_LIBS=/home/brandon/local/lib64
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$FBAHOME/FBA/local/tomlab/shared
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$FBAHOME/FBA/local/ILOG/CPLEX_Studio_AcademicResearch122/cplex/lib/x86-64_sles10_4.1/static_pic


HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


export OZHOME=/media/RAID5/oz
export PATH=$PATH:$OZHOME/bin

# Probably better to change this to a machine specific (hostname)
# check in the future.
if [ "$(uname)" == "Darwin" ]; then
    export ATSHOME=$HOME/ats-lang-anairiats-0.2.11
    export ATSHOMERELOC=ATS-0.2.11
    export PATH=$PATH:$ATSHOME/bin
    export PATSHOME=$HOME/ATS-Postiats
    export PATH=$PATH:$PATSHOME/bin
elif [ "$(expr substr $(uname -s) 1 5)" == "MINGW" ] ||  
     [ "$(expr substr $(uname -s) 1 6)" == "CYGWIN" ]; then
    export ATSHOME=$HOME/ats-lang-anairiats-0.2.11
    export ATSHOMERELOC=ATS-0.2.11
    export PATH=$PATH:$ATSHOME/bin
    export PATSHOME=$HOME/ATS-Postiats
    export PATH=$PATH:$PATSHOME/bin
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    export ATSHOME=/media/RAID5/share/ATS_learning/ats-lang-anairiats-0.2.10-unstable
    export ATSHOMERELOC=ATS-0.2.10    
    export PATH=$PATH:$ATSHOME/bin
    export PATSHOME=/media/RAID5/share/ATS_learning/ATS-Postiats
    export PATH=$PATH:$PATSHOME/bin
fi

### Stuff for DREAM8 WholeCell competition ###
export DREAM8HOME=$HOME/DREAM8
export PATH=$PATH:$DREAM8HOME/bitmill-bash:$DREAM8HOME/bitmill-bash/dream
