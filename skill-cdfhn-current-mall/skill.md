# 现版本中免海南商城知识库（含兑换中心）

> 本知识库描述中免海南商城H5当前版本（2026年7月）的完整产品形态、技术架构、页面结构及兑换中心现状。
> 数据来源：H5前端源码逆向分析 + 附件产品方案文档

---

## 一、项目技术概述

| 项目 | 详情 |
|------|------|
| 平台类型 | H5 Web SPA (单页应用) |
| 技术框架 | uni-app (Vue 3) + Vite 构建 |
| 路由模式 | Hash 路由 (`https://m.cdfhnmall.com/#/`) |
| 状态管理 | Pinia |
| 数据统计 | 神策数据 (Sensors Analytics) |
| UI框架 | uView + 自定义组件库 |
| H5标题 | 中免海南 |
| 主域名 | `m.cdfhnmall.com` (会员优选H5) / `h5-bigfrontend.cdfgsanya.com` (离岛免税H5) |

---

## 二、业务形态架构 (ServiceScenesTag)

商城采用多业态融合架构，支持在同一个H5中切换不同业务场景：

| 业务标签 | 中文名称 | 说明 |
|----------|---------|------|
| DUTY_FREE | 离岛免税 | 海南离岛免税核心业务 |
| DUTY_PAID | 会员优选 | 线上完税商品销售（默认场景） |
| COMMON | 公共 | 公共模块/通用入口 |
| MEI_LAN | 美兰云店 | 海口美兰机场免税店 (merchantId: 1) |
| BO_AO | 博鳌云店 | 琼海博鳌免税店 (merchantId: 3) |
| RI_YUE | 日月云店 | 海口日月广场免税店 (merchantId: 2) |
| FENG_HUANG | 凤凰云店 | 三亚凤凰机场免税店 (merchantId: 4) |
| SAN_YA | 三亚 | 三亚国际免税城 (merchantId: 5) |
| HAI_KOU | 海口 | 海口国际免税城 (merchantId: 6) |
| QIAN_FAN | 千帆 | 千帆业务线 |
| DUTY_LIJING | 离境免税 | 离境免税业务 |

**六大门店：** 海口美兰机场、海口日月广场、琼海博鳌、三亚凤凰机场、三亚国际免税城、海口国际免税城

---

## 三、底部导航栏 (TabBar)

| Tab | 页面路径 | 功能 |
|-----|---------|------|
| 首页 | `common/pages/home/index` | 商城首页 |
| 分类 | `common/pages/category/index` | 商品分类导航 |
| 品牌 | `common/pages/tabbar-shop-list/index` | 品牌店铺列表 |
| 购物车 | `common/pages/cart/index` | 购物车 |
| 我的 | `common/pages/mine/index` | 个人中心 |

---

## 四、首页结构

**路径:** `common/pages/home/index`

- 搜索入口、营销Banner轮播、商品分类快捷入口、品牌推荐
- 限时闪购/秒杀、商品推荐瀑布流、线下门店导航
- 支持CMS后台配置楼层内容 (layout-design)
- 支持动态布局设计 (design-page)

---

## 五、核心页面路径清单

### 5.1 公共模块 (common)

**主TabBar页面：** 首页、分类、品牌列表、购物车、我的、二级分类、门店列表、扫码页、品牌详情/列表、分类详情、Webview容器、闪屏页、停服页、iOS隐私、裂变优惠券、政府券列表

**我的(Mine)子页面：** 用户信息、账号安全、登录(短信/一键/通用)、忘记密码、修改密码、更换手机号、实名认证、浏览记录、我的收藏、优惠券(我的/v2/不可用/详情)、云券(我的/详情)、CRM优惠券列表、CRM会员信息/页/码、绑定CRM会员、注销确认/注销、帮助中心、推荐控制

**福利/会员权益中心(Benefits)：** 福利中心首页、预约列表/详情/成功、信息确认、生日券/规则、客服

**订单相关：** 订单列表(通用)

**线下订单：** 线下订单综合、订单核验、核验结果、岛邮(首页/地址/修改)、修改自提

### 5.2 离岛免税模块 (duty-free)

**主页面：** 首页、购物车、我的、品牌列表、商品详情、政府券购物车、扫码、帮助中心

**商品相关：** 商品分类/详情/列表/推荐、搜索、筛选、品牌店铺、闪购、购物车、政府券购物车、礼品详情、评价中心/商品评价、好评订单/售后、领券页

**订单相关：** 结算页、支付页、支付成功、发票、承诺书、提取预约、行程核验(普通/组合)、人脸核验、本地核验、会员核验、离岛行程核验、选择行程、积分页、航班WebView、交易快照、商品/赠品快照详情、eID SDK

**我的(Mine)：** 订单详情、线下订单(详情/发票)、物流、退款/原因、取件订单/信息、修改提货/地址/保证金、定位、优惠券、CRM会员(首页/信息/积分/码/门店)、绑定CRM、登录(短信/通用)、浏览记录、收藏、线订单、购买/买家信息、选择国家、行程列表/结果、限购查询、用户信息、修改昵称、导购(分类/个人/资料/编辑标签/描述)、问卷/调研

**品牌视觉页面：** 雅诗兰黛、兰蔻、YSL、MAC、香奈儿、迪奥、资生堂、娇韵诗、植村秀、NARS、祖玛珑、科颜氏、汤姆福特、Fresh、娇兰、Bobbi Brown、阿玛尼、安娜许、麦尔特（共20+品牌）

**Chanel专属：** 会员信息、注册/成功、法律条款

**员工内购：** 内购中心/入口、合并购物车、内购商品详情、分享错误

**品牌专区：** 品牌专区首页、品牌子页

### 5.3 会员优选模块 (duty-paid)

**主页面：** 首页(复用common)、品牌列表/详情、帮助中心

**商品相关：** 商品详情/快照、搜索、普通商品、秒杀、闪购、排行榜/详情、活动详情/商品列表、优惠商品列表、硬核补贴、品牌专区/搜索、专区详情、以旧换新(置换/以旧换新)、导购(列表/详情/我的)、地址信息/修改、评价详情/发表、礼品详情、Webview

**订单相关：** 购物车、结算页(普通/丽晶)、支付页(微信/第三方/停车费/预留成功/成功)、订单详情/快照列表、物流、取消订单、售后(申请/首页/结果/快递发货/结果/物流)、离岛行程核验、会员核验

**我的(Mine)：** 优惠券详情、充值券/规则、我的奖品、领券、发票历史/结果

#### 福利中心/兑换中心（重点模块）

| 功能 | 路径 | 说明 |
|------|------|------|
| **福利中心首页** | `duty-paid/sub-packages/welfare-center/pages/index/index` | 福利值总览、签到、任务入口 |
| **兑换中心** | `duty-paid/sub-packages/welfare-center/pages/redemption-center/index` | 商品兑换列表/分类 |
| **兑换详情** | `duty-paid/sub-packages/welfare-center/pages/redemption-detail/index` | 兑换商品详情 |
| **兑换规则** | `duty-paid/sub-packages/welfare-center/pages/redemption-rule/index` | 兑换规则说明 |
| **兑换地址** | `duty-paid/sub-packages/welfare-center/pages/redemption-address/index` | 兑换收货地址管理 |
| **兑换结果** | `duty-paid/sub-packages/welfare-center/pages/redemption-result/index` | 兑换操作结果页 |
| **抽奖** | `duty-paid/sub-packages/welfare-center/pages/lottery/index` | 幸运抽奖活动 |
| **抽奖奖品** | `duty-paid/sub-packages/welfare-center/pages/lottery-prize/index` | 抽奖奖品详情/列表 |
| **抽奖规则** | `duty-paid/sub-packages/welfare-center/pages/lottery-rule/index` | 抽奖规则说明 |
| **签到奖励** | `duty-paid/sub-packages/welfare-center/pages/sign-prize/index` | 每日签到领福利 |
| **福利记录** | `duty-paid/sub-packages/welfare-center/pages/welfare-record/index` | 福利值收支明细 |
| **公众号二维码** | `duty-paid/sub-packages/welfare-center/pages/official-account-code/index` | 关注公众号领福利 |

**预售/订阅模块：** 预售首页/二级/商品详情/规则/信息/订单/记录/结果

**虚拟商品模块：** 虚拟商品详情、订单详情、取消、退款/详情、结算

**第三方H5/其他：** 邮轮H5、直播播放器、S店(首页/店铺/中转/消息订阅)、智慧停车、中间页、满意度调研

---

## 六、会员体系

### 6.1 CRM会员模块（离岛免税场景）

| 功能 | 场景 |
|------|------|
| CRM会员首页 | 离岛免税 |
| CRM会员信息 | 离岛免税 |
| CRM会员积分 | 离岛免税 |
| CRM会员码 | 离岛免税 |
| CRM门店 | 离岛免税 |
| CRM会员信息/页/码 | 公共(通用) |
| 绑定CRM会员引导/表单 | 公共(通用) |
| 查验CRM会员 | 离岛免税 |
| 登录绑定CRM | 离岛免税 |

### 6.2 Chanel会员（品牌专属）
- Chanel会员信息、注册/成功

### 6.3 会员相关API
- `/api/members/policy/show` - 展示会员政策
- `/api/members/policy/bigMemberStatus` - 大会员状态
- `/api/members/policy/switch` - 切换会员类型
- `/api/updateMemberLevelByIp` - 根据IP更新会员等级
- `/api/members/mine/:type/verify` - 会员验证
- `/api/members/cancelAccount` - 注销账号
- `/api/overseas/members/maskedRealNameInfo` - 脱敏实名信息

---

## 七、订单流程

### 7.1 核心购物流程
```
购物车 → 结算(settle) → 支付(pay) → 支付成功 → 订单详情
```

### 7.2 离岛免税订单流程（多一步核验）
```
购物车 → 结算 → 支付 → 行程核验 → 人脸核验/本地核验 → 会员核验 → 支付成功 → 订单详情
```

### 7.3 售后流程
```
订单详情 → 申请售后 → 选择原因 → 提交 → 结果 → 快递发货 → 售后物流跟踪
```

---

## 八、福利中心/兑换中心（现状）

### 8.1 福利中心首页功能
- 福利值余额展示（顶部）
- 签到入口（每日签到领福利值，支持连续签到奖励）
- 任务列表（浏览任务、分享任务等获取福利值）
- 快捷入口（兑换中心、抽奖、福利记录等）
- 活动Banner（限时活动推广）

### 8.2 兑换中心功能（现状）
- **商品分类** - 按分类浏览可兑换商品
- **商品列表** - 支持筛选和排序
- **商品详情** - 商品信息、所需福利值、库存等
- **兑换流程** - 选择商品 → 确认地址 → 确认兑换 → 兑换结果
- **兑换规则** - 明确的兑换规则说明
- **地址管理** - 兑换收货地址选择/新增
- **当前仅支持贝壳兑换** - 不支持积分兑换

### 8.3 现状奖品类型
| 类型 | 说明 |
|------|------|
| 优惠券(优选单券) | 优选配置 → 兑换中心/签到 |
| 优惠券(券中心) | 千帆配置 → 兑换中心/签到 |
| 实物奖品 | 兑换中心 |
| 预约抽奖 | 消耗贝壳 → 预约流程 → 兑换中心/签到 |
| 转盘抽奖 | 消耗贝壳 → 抽奖流程 → 转盘抽奖 |

### 8.4 福利值获取方式

| 获取方式 | API路径 | 说明 |
|---------|--------|------|
| 每日签到 | `/api/inc/signin/submit` | 每日签到获取福利值 |
| 签到日历 | `/api/inc/signin/calendar` | 查看签到日历 |
| 签到奖励配置 | `/api/inc/signin/reward/baseInfo` | 签到奖励配置 |
| 签到奖励列表 | `/api/inc/signin/reward/list` | 签到奖励列表 |
| 浏览任务 | `/api/inc/task/browseTask` | 浏览指定商品获取福利值 |
| 做任务 | `/api/inc/task/todo` | 完成指定任务 |
| 领取任务奖励 | `/api/inc/task/claimRewards` | 领取任务完成奖励 |
| 任务列表 | `/api/inc/task/list` | 可做任务列表 |
| 任务基础信息 | `/api/inc/task/baseInfo` | 任务中心基础信息 |

### 8.5 福利值使用方式

| 使用方式 | API路径 | 说明 |
|---------|--------|------|
| 兑换商品 | `/api/inc/exchange/order/submit` | 提交兑换订单 |
| 兑换商品预览 | `/api/inc/exchange/order/add` | 添加兑换商品 |
| 兑换列表 | `/api/inc/exchange/tab/list` | 兑换商品分类/列表 |
| 兑换奖品列表 | `/api/inc/exchange/tab/prizeList` | 兑换奖品列表 |
| 兑换商品详情 | `/api/inc/exchange/baseInfo` | 兑换商品详情 |
| 兑换规则 | `/api/inc/exchange/rule` | 兑换规则 |
| 预留兑换 | `/api/inc/exchange/findReserve` | 预留兑换查询 |
| 抽奖 | `/api/lottery/createLotteryOrder` | 创建抽奖订单 |
| 即时抽奖 | `/api/lottery/instantly` | 即时抽奖 |
| 抽奖商品 | `/api/lottery/getLotteryGoods` | 获取抽奖商品 |
| 加载抽奖 | `/api/lottery/loadLottery` | 加载抽奖页 |
| 获奖者列表 | `/api/lottery/loadWinnerList` | 获奖者展示 |
| 领取抽奖机会 | `/api/lottery/receiveLotteryChance` | 领取抽奖机会 |

### 8.6 福利值明细查询API

| 功能 | API路径 |
|------|--------|
| 福利值头部信息 | `/api/inc/welfareValueDesc/headerInfo` |
| 福利值明细列表 | `/api/inc/welfareValueDesc/list` |
| 福利值收入 | `/api/inc/welfareValue/income` |
| 福利值支出 | `/api/inc/welfareValue/expend` |
| 福利值说明 | `/api/inc/welfareValue/desc` |
| 连续签到天数 | `/api/inc/person/continuousDays` |
| 签到信息 | `/api/inc/person/signinInfo` |

### 8.7 福利中心页面结构
```
福利中心首页 (index)
├── 签到模块 (sign-prize)
│   ├── 签到日历
│   ├── 签到奖励展示
│   └── 连续签到天数
├── 任务中心
│   ├── 任务列表 (task/list)
│   ├── 待完成任务 (task/todo)
│   ├── 浏览任务 (task/browseTask)
│   └── 领取奖励 (task/claimRewards)
├── 兑换中心 (redemption-center)
│   ├── 兑换商品列表/分类
│   ├── 兑换商品详情 (redemption-detail)
│   ├── 兑换规则 (redemption-rule)
│   ├── 兑换地址管理 (redemption-address)
│   └── 兑换结果 (redemption-result)
├── 抽奖活动 (lottery)
│   ├── 抽奖转盘/互动
│   ├── 抽奖奖品列表 (lottery-prize)
│   └── 抽奖规则 (lottery-rule)
├── 福利记录 (welfare-record)
└── 公众号二维码 (official-account-code)
```

---

## 九、主要API域名

| 域名 | 用途 |
|------|------|
| `service.cdfhnmall.com` | 会员优选主服务API |
| `weapp.cdfgsanya.com` | 离岛免税主服务API |
| `mapi.cdfgsanya.com` | 通用微服务API |
| `m.cdfhnmall.com` | H5前端域名 |
| `h5-bigfrontend.cdfgsanya.com` | 离岛免税H5域名 |
| `coupon.cdfhnms.com` | 优惠券中心 |
| `member.cdfhnmall.com` | 会员服务 |
| `marketing.cdfhnmall.com` | 营销服务 |
| `customer.cdf-hn.com` | 客服服务 |
| `csp.cdf-hn.com` | 订单综合服务 |
| `images.cdfhnmall.com` | 图片CDN |
| `pic.cdfgsanya.com` | 免税图片服务 |
| `bi.cdfhnms.com` | 神策数据上报 |
| `cart.cdfhnmall.com` | 购物车服务 |
| `order.cdfhnmall.com` | 订单服务 |

---

## 十、多渠道接入

| 渠道类型 | AppID/标识 | 说明 |
|---------|------------|------|
| 自有微信小程序 | `wx83f3046fd293eefa` | 中免海南小程序 |
| 扫码小程序 | `wxe2ab028ce877c1e2` | 扫码服务小程序 |
| 渠道微信 | `wx489324d17ad1f611` | 渠道合作小程序 |
| CRM会员半屏小程序 | `wxdf26125d1f97992c` | 大会员半屏组件 |
| 官方公众号 | `wxcc9b2752ea6cb428` | 微信公众号 |
| APP支付 | `wxe7a795535228acf3` | iOS支付 |
| 第三方-携程 | `CTGBS` | 携程渠道登录 |
| 第三方-中国移动 | `CMCC` | 移动渠道登录 |
| H5 | `cdfhn.platform = "h5"` | 普通浏览器 |
| 微信内H5 | `cdfhn.platform = "weixin"` | 微信浏览器 |
| 支付宝H5 | `cdfhn.platform = "alipay"` | 支付宝浏览器 |
| 鸿蒙APP | `big_frontend_harmony_app` | 鸿蒙原生APP |

---

## 十一、数据埋点体系

基于神策数据(Sensors Analytics)的全链路用户行为追踪，主要事件包括：资源位曝光(HNMS_RESOURCEEXPOSURE)、加购(ADD_CART_RESULT)、页面展示/离开(pageShow/pageLeave)、应用启动/显示/隐藏(appLaunch/appShow/appHide)、页面分享(pageShare)、收藏(mpFavorite)、小程序点击(mpClick)等。

### 页面名称映射 (部分)
| 页面路径 | 神策页面名 |
|---------|-----------|
| `common/pages/home/index` | home |
| `duty-free/sub-packages/products/pages/detail/index` | product_detail |
| `duty-paid/sub-packages/products/pages/goods-detail/index` | product_detail |
| `common/pages/cart/index` | cart |
| `common/pages/tabbar-shop-list/index` | category |
| `duty-paid/sub-packages/orders/pages/settle/index` | order_confirm |
| `duty-free/sub-packages/orders/pages/payment/index` | checkout |
| `duty-paid/sub-packages/orders/pages/pay/index` | checkout |
| `duty-paid/sub-packages/orders/pages/order-detail/index` | order_detail |
| `common/pages/mine/index` | usercenter |
| `common/sub-packages/mine/pages/login/index` | login |
| `common/sub-packages/mine/pages/user-info/index` | settings |