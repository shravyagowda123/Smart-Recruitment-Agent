@echo off
setlocal
if exist "%~dp0.venv310\Scripts\activate.bat" (
    call "%~dp0.venv310\Scripts\activate.bat"
) else (
    echo ERROR: virtual environment not found at "%~dp0.venv310"
    exit /b 1
)
cd /d "%~dp0"
python -m streamlit run app.py
endlocal
