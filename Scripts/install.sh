#! /bin/bash

echo 'Downloading'
curl -o Unity.pkg https://netstorage.unity3d.com/unity/3071d1717b71/MacEditorInstaller/Unity-2018.2.5f1.pkg || exit 1

echo 'Installing Unity.pkg'
sudo installer -dumplog -package Unity.pkg -target / || exit 1

rm Unity.pkg
