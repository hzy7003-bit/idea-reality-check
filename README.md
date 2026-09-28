# idea-reality-check

**一个用于深度验证产品创意的 AI Skill。** 当前版本：**v0.1**。

> Try to kill the idea first. If it survives, find out why.

它不会默认鼓励你把点子做出来，而是先用真实需求、国内外现有方案、市场证据、专利与 prior art、用户行为、工程约束、隐藏假设、失败案例和替代方案来攻击它。如果创意经得住攻击，再研究真正剩下的机会，并找出成本最低的下一步实验。

适用于生活产品、硬件、消费电子、机械结构、软件、App、SaaS、服务创新和改良型发明。输出是一份有来源、区分事实/推断/未知项的 **Reality Check Report**，不是一个无依据的 GO/NO GO 或市场潜力分数。

## 它和普通 Idea Validator 有什么不同？

普通 Idea Validator 往往从市场规模、用户画像、商业模式和 TAM / SAM / SOM 出发。这个 Skill 会先检查点子与真实世界是否对得上：

| 常见分析 | idea-reality-check 重点验证 |
| --- | --- |
| 用户描述的问题和提出的方案是否被当成同一件事 | 把真实问题与用户提出的实现方案分开 |
| 市场规模是否足够大 | 谁在什么情况下遇到问题、频率和痛苦程度如何、现在如何应对 |
| 找到竞品后就得出“已经有人做了” | 继续查体验缺口、产品化、真实采用情况，以及类似方案为何没有成为主流 |
| 找到专利后就停止 | 专利是 prior art 线索，不等于市场已被解决，也不构成法律 FTO 意见 |
| 把概念图里的理想流程当作现实 | 暴露隐藏假设、实际工作流、物理自由度、边界条件、安全、维护和集成成本 |
| 只比较功能多少 | 检查更简单的替代方案是否已解决大部分问题，以及新复杂度带来的边际收益是否值得 |
| 最后建议“先做 MVP” | 先找能检验关键未知项的最低成本实验 |

**搜索边界：** 搜索不到只表示在已搜索来源中没有找到，不能证明不存在。没有证据时会标为未知或推断；不会编造市场、成本、用户付费意愿或失败原因。重要的时效性产品、市场、专利和法规信息应联网核查并附来源。

## 工作流程与报告

Skill 按八个阶段工作：问题真实性、现有方案搜索、专利/prior art、真实世界模型、已有方案为何未普及、反方攻击、剩余机会、最低成本实验。

报告模板包含原始创意、真实问题、现有方案、跨市场发现、prior art、隐藏假设、现实模型、未普及原因、Adversarial Kill、仍然成立的部分、剩余机会、最低成本实验，以及证据等级。机械类会检查自由度、力学、环境、耐久、安全和维护；软件类会检查真实工作流、数据、权限、网络、平台、隐私、安全和集成约束。

## 安装到 Codex

Codex 用户级 Skill 默认放在 `~/.codex/skills/`；如果设置了 `CODEX_HOME`，则放在 `$CODEX_HOME/skills/`。本仓库把可安装的 Skill 放在 `idea-reality-check/` 目录中。以下命令适用于 macOS/Linux shell：

```bash
git clone https://github.com/hzy7003-bit/idea-reality-check.git
mkdir -p "${CODEX_HOME:-$HOME/.codex}/skills"
cp -R ./idea-reality-check/idea-reality-check "${CODEX_HOME:-$HOME/.codex}/skills/"
```

也可以直接把仓库里的 `idea-reality-check/` 整个目录复制到该 `skills/` 目录。Skill 以 `SKILL.md` 为入口，并携带 `agents/`、`references/` 和 `assets/` 支持文件。Codex 官方文档说明了 Skill 目录、`SKILL.md`、参考资料和资源文件的组织方式：[Build skills](https://developers.openai.com/plugins/build/skills)；Codex 用户级路径示例见 [Testing Agent Skills Systematically with Evals](https://developers.openai.com/blog/eval-skills)。

这个目录结构也容易移植到支持类似 Skill 机制的 Agent；其他平台的发现、调用和兼容性尚未逐一验证。

## 使用

在 Codex 中可以显式调用：

```text
$idea-reality-check

我想到一个不用电的自动防雨坐垫，给共享单车或电动车用。

帮我深入验证一下这个想法。
```

也可以直接描述你想验证的产品或服务创意。Skill 会使用提问者的语言输出报告；要点上下文不足时，会先明确临时假设并继续调查，只有答案会实质改变研究方向时才追问。

## v0.1 验证记录

- 回归案例：旋转雨披、汽车下车避雨装置
- 陌生盲测：无电自动防雨坐垫
- 记录结果：三个案例均通过
- 详细案例和后续迭代记录见 [`idea-reality-check/references/regression-cases.md`](idea-reality-check/references/regression-cases.md) 与 [`idea-reality-check/references/iteration-log.md`](idea-reality-check/references/iteration-log.md)。

## English

`idea-reality-check` is an AI Skill for deeply testing product ideas. It does not assume that an idea should become a startup or product. It separates the user's problem from the proposed solution, researches existing products and prior art across relevant markets, models real-world constraints, looks for historical failure and simpler substitutes, then tries to kill the idea with evidence. If something survives, it identifies the remaining opportunity and the cheapest experiment that could resolve the most important unknown.

> Try to kill the idea first. If it survives, find out why.

Unlike a typical idea validator focused on market size, personas, business models, or TAM / SAM / SOM, this Skill asks whether the problem is real, what users do today, why similar products have not become mainstream, whether a simpler option already solves most of the need, and whether the new solution shifts the burden into manufacturing, maintenance, safety, or operations. A patent is evidence of prior art, not proof that a market has been solved. No search result is not proof of nonexistence.

Install the complete `idea-reality-check/` folder into `~/.codex/skills/` (or `$CODEX_HOME/skills/` when set) using the commands above, then invoke it with `$idea-reality-check`. The package follows the `SKILL.md`-based structure documented by OpenAI, but compatibility with other agents has not been independently verified.

Version **v0.1** passed two regression cases (rotating rain poncho and car egress rain shelter) and one unfamiliar blind test (a non-electric automatic rainproof seat). See the linked regression cases for the recorded scenarios.

## License

MIT. See [LICENSE](LICENSE).
