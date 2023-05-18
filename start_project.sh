#!/usr/sh

project=$1
mkdir $project && \
mkdir "${project}/directions" && \
mkdir "${project}/images" && \
touch "${project}/outline.md"&& \
cat << EOS > "${project}/main.md" &&
---
marp: true
theme: default
size: 16:9
paginate: true
headingDivider: 3
---

# Let's use marp to create slides at blazing speed!

## Slides can be split by separating them with # like this
EOS

cat << "EOS" > "${project}/directions/direction.md"
＜指示＞
あなたは〇〇です。
※ここに指示内容を書く
ただし、制約事項を必ず守ってください。

＜目的＞
※目的や指示の背景をここに書く

＜制約事項＞
※制約事項を設ける場合はここに書く（以下は例）
- 出力はコードブロック(```で囲う)にして出力すること。
- 出力するMarkdownはコピーアンドペーストができるようにすること。
- 15分程度の発表内容にすること。

＜出力フォーマット＞
※出力フォーマットがある場合はここに書く（以下は例）
```markdown
## 目次
1. 
2. 
3. 
4. 
    1. 
    2. 
    3. 
        1. 
        2. 
5. 
6. 
```
EOS