# COMM5000 M1：待 Excel 核验的修订文件

**当前不是可以直接提交的最终版。** 原始 XLSM 超过当前 32 MB 读取限制，引用的原始文件路径不在本工作区，当前 Linux 云环境没有 Microsoft Excel 或可控制的 Excel 浏览器会话。因此尚未完成原始精度的 Excel 统计、Excel RAND 抽样或 Excel 图表重建。

- [下载可编辑 Word 修订稿](COMM5000_M1_Revision_Draft.docx)
- [下载 PDF 修订稿](COMM5000_M1_Revision_Draft.pdf)
- [下载 Excel 核验模板（尚未执行）](COMM5000_M1_Excel_Verification_Template.xlsx)
- [阅读 Mac Excel 操作与核验清单](Excel_Verification_Guide.md)

Word 和 PDF 修订稿均为八页，正文 1,000 词；正文与 12 个表格可以直接编辑。标题、页脚采用普通课程报告格式，去掉教学用途字样。每页保留“待 Excel 核验”的草稿状态标识。

已修正价格和里程的众数解释：按用户对原始 XLSM 的核对，使用 **No mode — all values unique**，不再把并列众数数量当作众数值。原始 XLSM 的独立 Excel 核验仍未完成；年龄众数以及所有其他数值明确保持待核验状态。原 Python 图表已从修订稿撤下，不能通过删除 pandas 图注将其变为 Excel 图表。

后续计划写明豪华/非豪华均值差的双侧假设、INR 与百分比差异、置信区间和实际意义；进一步检查年龄、使用量的分组及非线性关系；最后比较总体与分品牌模型在相同留出集上的 MAE/RMSE。M1 没有提前执行假设检验或预测建模。均值/中位数、相关系数和 CLT 的合理解释予以保留。

Excel 模板包含 17 张工作表和 198 个未执行的原生 Excel 公式，提供源文件记录、清洗审计、标签规则、分组统计、成对相关系数、固定样本记录及图表来源记录。六个数据投影与抽样表为空，没有图表、RAND 抽样或计算结果缓存。模板本身不保存原始车辆数据或 Dataset!B6；须在原 XLSM 工作副本中实际保留这些材料并完成清单，不能把模板当作已完成的证据工作簿。

原始课程 PDF 和车辆数据未上传到仓库。旧文件位于 teaching_reference，仅保留为此前版本，属于 Python/CSV 分析，不能当作符合本轮 Excel 要求的提交版。
