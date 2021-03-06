package: Python-modules-list
version: "1.0"
env:
  PIP_REQUIREMENTS: |
    setuptools==49.6.0
    requests==2.21.0
    ipykernel==5.1.0
    ipython==7.4.0
    ipywidgets==7.4.2
    metakernel==0.20.14
    mock==2.0.0
    notebook==5.7.8
    numpy==1.16.2
    PyYAML==5.1
    scikit-learn==0.20.3
    uproot==3.4.18
  PIP36_REQUIREMENTS: |
    scipy==1.2.1
    Cython==0.29.16
    seaborn==0.9.0
    sklearn-evaluation==0.4
    Keras==2.2.4
    tensorflow==1.13.1
    xgboost==0.82
    dryable==1.0.3
    responses==0.10.6
    pandas==0.24.2
  PIP38_REQUIREMENTS: |
    scipy==1.4.1
    Cython==0.29.21
    seaborn==0.9.0
    sklearn-evaluation==0.4
    Keras==2.2.4
    tensorflow==2.2.0
    xgboost==0.82
    dryable==1.0.3
    responses==0.10.6  
    pandas==1.0.5
---
# Modulefile
MODULEDIR="$INSTALLROOT/etc/modulefiles"
MODULEFILE="$MODULEDIR/$PKGNAME"
mkdir -p "$MODULEDIR"
cat > "$MODULEFILE" <<EoF
#%Module1.0
proc ModulesHelp { } {
  global version
  puts stderr "ALICE Modulefile for $PKGNAME $PKGVERSION-@@PKGREVISION@$PKGHASH@@"
}
set version $PKGVERSION-@@PKGREVISION@$PKGHASH@@
module-whatis "ALICE Modulefile for $PKGNAME $PKGVERSION-@@PKGREVISION@$PKGHASH@@"
# Dependencies
module load BASE/1.0
# Our environment
EoF
