$ESC = $([char]0x1b)

function Get-BranchString {
	$branchName = $(git branch --show-current 2>$null)
	if ($branchName.Length -gt 0) {
		return " $ESC[32m🌿$branchName$ESC[0m"
	} else {
		return ""
	}
}

function Prompt {
	"$ESC[33m[$ESC[36m$((Get-Item -Path ".").Name)$(Get-BranchString)$ESC[33m] $ $ESC[0m"
}
