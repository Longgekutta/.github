# 核心使命不变量 (CORE_INVARIANTS.md)

> **版本**：1.0.0-PROD  
> **生效范围**：`Longgekutta/.github` 仓库全域  
> **主权属性**：本文件为全域中央枢纽仓库根目录**刚性只读契约**。

---

## 🏛️ 不变量一：公开特权与零凭证泄露原则 (Public Showcase Invariant)
1. 本仓库为 GitHub 组织/用户级特权公开仓库（Public），严禁任何非脱敏信息、私有内网 IP 或内部凭证入库。

---

## ⚡ 不变量二：可复用工作流向后兼容原则 (Workflow Backward Compatibility)
1. 所有暴露给下游仓库调用的 `workflow_call` 可复用工作流，输入参数修改必须保持严格向后兼容，默认值必须可自洽运行。
