<#
.SYNOPSIS
    .github 5大通用动词脚本 (PowerShell)
#>
param (
    [Parameter(Position = 0)]
    [ValidateSet("setup", "run", "test", "health", "clean")]
    [string]$Verb = "health"
)

switch ($Verb) {
    "setup"  { Write-Host "⚙️ [Setup] OK" -ForegroundColor Green }
    "run"    { Write-Host "🚀 [.github] Central config active" -ForegroundColor Green }
    "test"   { Write-Host "🧪 [Test] 验证可复用工作流文件存在性..." -ForegroundColor Cyan
               if (Test-Path ".github/workflows/reusable-ci.yml") { Write-Host "✅ reusable-ci.yml OK" -ForegroundColor Green } else { exit 1 }
             }
    "health" { Write-Host "STATUS: OK" }
    "clean"  { Write-Host "🧹 [Clean] OK" }
}
