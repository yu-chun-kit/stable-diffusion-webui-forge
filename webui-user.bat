@echo off

@REM set PYTHON=
@REM set GIT=
@REM set VENV_DIR=
@REM set COMMANDLINE_ARGS=

@REM Uncomment following code to reference an existing A1111 checkout.
set A1111_HOME=C:/novelAI/novelai-webui-10-9update

set PYTHON=%A1111_HOME%/venv/Scripts/python.exe
set "GIT=C:/Program Files/Git/cmd/git.exe"
set VENV_DIR=%A1111_HOME%/venv
set COMMANDLINE_ARGS=%COMMANDLINE_ARGS% ^
 --ckpt-dir %A1111_HOME%/models/Stable-diffusion ^
 --hypernetwork-dir %A1111_HOME%/models/hypernetworks ^
 --embeddings-dir %A1111_HOME%/embeddings ^
 --lora-dir %A1111_HOME%/models/Lora ^
 --vae-path %A1111_HOME%/models/VAE ^
 --text-encoder-dir %A1111_HOME%/models/text_encoder

call webui.bat
