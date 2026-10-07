#!/bin/bash
# Reassemble the already prepared workbook using the user's original source.
# File packaging only: no Python, statistics, sampling or macro execution.
set -euo pipefail
assembly_bundle=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
if [ "$#" -ge 1 ]; then
  assembly_source=$1
else
  assembly_source=$(osascript -e 'POSIX path of (choose file with prompt "请选择从 OneDrive 下载的原始随机化 COMM5000 XLSM 文件")')
fi
[ -f "$assembly_source" ] || { printf '%s\n' '找不到原始 XLSM。' >&2; exit 1; }
[ -f "$assembly_bundle/Analysis_Additions.zip" ] || { printf '%s\n' '请先解压整个下载包，保留脚本和 Analysis_Additions.zip 在同一文件夹。' >&2; exit 1; }
assembly_workspace=$(mktemp -d "${TMPDIR:-/tmp}/COMM5000_M1.XXXXXX")
trap 'rm -rf "$assembly_workspace"' EXIT HUP INT TERM
mkdir -p "$assembly_workspace/package"
printf '%s\n' '正在核验原始数据、Dataset、共享字符串和 VBA……'
unzip -q "$assembly_source" -d "$assembly_workspace/package"
chmod -R u+rwX "$assembly_workspace/package"
(cd "$assembly_workspace/package" && shasum -a 256 -c "$assembly_bundle/BASE_PARTS.sha256") || {
  printf '%s\n' '所选文件与本次分析的原始文件不一致。请选择从同一 OneDrive 链接下载的 XLSM。' >&2
  exit 1
}
unzip -qo "$assembly_bundle/Analysis_Additions.zip" -d "$assembly_workspace/package"
chmod -R u+rwX "$assembly_workspace/package"
assembly_output=${M1_OUTPUT_FILE:-"$HOME/Downloads/COMM5000_M1_Complete_Analysis_$(date +%Y%m%d_%H%M%S).xlsm"}
[ ! -e "$assembly_output" ] || { printf '%s\n' '输出文件已存在；请使用新的文件名。' >&2; exit 1; }
mkdir -p "$(dirname "$assembly_output")"
(cd "$assembly_workspace/package" && zip -q -r "$assembly_output" .)
unzip -tq "$assembly_output"
printf '已生成完整 Excel 工作簿：\n%s\n' "$assembly_output"
printf '%s\n' '请用 Microsoft Excel 打开。图表数据链接将自动更新；统计、抽样和图表已在云端通过 OfficeCLI 完成。'
