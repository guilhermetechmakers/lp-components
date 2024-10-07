@echo off
echo Removing node_modules directory...
if exist "node_modules" (
    rd /s /q "node_modules"
    echo node_modules removed successfully.
) else (
    echo node_modules directory not found.
)

echo Clearing npm cache...
call npm cache clean --force

echo Reinstalling dependencies...
call npm install

echo Process completed.
pause