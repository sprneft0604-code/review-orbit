# orbit-review-template

[English README](README.md)

这是一个用于聚焦 review 工作的 Orbit 模板。

当你希望 Agent 对代码、文档、计划或实现变更进行有边界、有证据、有记录的
review 时，可以使用这个模板。它刻意保持轻量：给 worker 足够的结构去检查、
排序、记录和交接 review 结果，但不把一次 review 会话扩大成完整重构或实现任务。

## 快速开始

创建或进入一个 Harness runtime，然后从 GitHub 安装模板：

```bash
harness init
harness install https://github.com/sprneft0604-code/review-orbit.git
orbit enter review
```

查看已安装的 orbit 文件：

```bash
orbit files review
orbit status
```

写入 review record 后，运行最小记录检查：

```bash
bash tools/check-review-records.sh
```

## 你会得到什么

- 一个边界清楚的 `review` orbit。
- 用于 scope、evidence、findings 和 handoff 的 review 流程说明。
- 可复用的 review record 模板。
- 一个轻量 done probe，用来检查 review record 是否存在，并包含最低要求的章节。

## 这份模板参考了哪些经验

这个模板调研并吸收了多种 review、verification、test-first 和 spec-first 的
Agent 工作流。GitHub star 数检查于 2026-04-12。

| Repository | Stars | 借鉴点 |
| --- | ---: | --- |
| [superpowers](https://github.com/obra/superpowers) | 147,851 | 严格的 TDD 核心：先有有效 RED，再写生产代码，最小 GREEN，最后重构。这个模板保留该核心，同时用更平和的方式处理 blocked 场景。 |
| [everything-claude-code](https://github.com/affaan-m/everything-claude-code) | 152,062 | 完整的 TDD agent/workflow 形态，强调证据和测试层级意识。这个模板借鉴其 evidence mindset，但不强制统一覆盖率数字。 |
| [spec-kit](https://github.com/github/spec-kit) | 87,242 | 展示了由项目策略和 spec 清晰度驱动 test-first 工作的方式。这个模板保留项目自定义测试纪律的空间。 |
| [get-shit-done](https://github.com/gsd-build/get-shit-done) | 51,071 | 强调验证和交接习惯。这个模板采用明确的 blocked/gap 记录，让失败或不确定的 TDD cycle 仍然有价值。 |
| [gstack](https://github.com/garrytan/gstack) | 70,314 | 回归测试和覆盖审计意识。这个模板通过要求 bug fix 证明 regression path 来体现这一点。 |
| [BMAD-METHOD](https://github.com/bmad-code-org/BMAD-METHOD) | 44,347 | 更宽的 QA、ATDD 和 traceability 视角。这个模板把它们视为升级路径，而不是每个小任务都必须满足的要求。 |
| [OpenSpec](https://github.com/Fission-AI/OpenSpec) | 39,231 | 面对不清晰行为时的 spec-first 纪律。这个模板要求 agent 在无法建立有效测试目标时停下来澄清。 |
| [oh-my-claudecode](https://github.com/Yeachan-Heo/oh-my-claudecode) | 27,919 | 紧凑的 TDD entry-mode 思路。这个模板保持安装后的 worker 入口简短，让 agent 能快速进入 test-first loop。 |

最终目标是：在 review 该严格的地方保持严格，同时足够轻量，可以放进真实项目里使用。
