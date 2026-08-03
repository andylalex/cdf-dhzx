#!/bin/bash
lark-cli docs +update --doc "IDDjdEkXEorNYkxS7cWcXnx5n6b" --command str_replace --pattern '<tr><td vertical-align="top"><p>停用/启用</p></td><td vertical-align="top"><p>列表操作栏一键切换奖品状态（启用↔停用）；如有进行中的活动配置了奖品则变成按钮禁用状态，不可操作</p></td></tr>' --content '<tr><td vertical-align="top"><p>成本分摊配置</p></td><td vertical-align="top"><p>分摊模式下拉（平台全额/门店全额/品牌全额/混合分摊）；选择"混合分摊"时展开费用分摊角色比例设置（品牌方、门店、有税商户，各自百分比输入）</p></td></tr>
<tr><td vertical-align="top"><p>收入分成配置</p></td><td vertical-align="top"><p>与成本分摊结构一致：分成模式下拉（平台全额/门店全额/品牌全额/混合分成）+ 混合分成时展开角色比例设置（品牌方、门店、有税商户）</p></td></tr>
<tr><td vertical-align="top"><p>停用/启用</p></td><td vertical-align="top"><p>列表操作栏一键切换奖品状态（启用↔停用）；如有进行中的活动配置了奖品则变成按钮禁用状态，不可操作</p></td></tr>' --doc-format markdown
