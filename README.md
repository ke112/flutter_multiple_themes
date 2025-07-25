# Flutter Multiple Themes

#### Flutter多主题暗黑模式适配完整解决方案

这是一个完整的Flutter多主题适配示例项目，展示了如何在Flutter应用中实现暗黑模式适配和多种主题切换功能。

## 功能特点

- ✅ 支持跟随系统主题：自动检测系统暗黑模式设置
- ✅ 支持手动切换主题：浅色模式、暗色模式
- ✅ 支持多种自定义主题：绿色、红色、紫色主题
- ✅ 响应式主题管理：基于GetX状态管理，实时响应主题变化
- ✅ 持久化保存：用户主题选择自动保存到本地
- ✅ 完整的颜色系统：包含200+个语义化颜色定义
- ✅ 优雅的主题切换UI：美观的主题选择界面
- ✅ 状态栏适配：自动适配状态栏和导航栏样式
- ✅ 全平台支持：Android、iOS、Web、Windows、macOS、Linux

## 技术栈

- Flutter >=3.4.3 <4.0.0
- GetX 4.7.2 状态管理
- shared_preferences 2.3.3 本地存储
- flutter_svg 2.0.17 SVG图标支持

## 项目结构

```
lib/
├── theme/                         # 主题相关核心文件
│   ├── multiple_theme_service.dart   # 主题服务类，核心业务逻辑
│   ├── multiple_theme_data.dart      # 主题数据定义和管理器
│   ├── multiple_theme_extension.dart # 主题扩展，颜色系统定义
│   └── multiple_theme_color.dart     # 响应式颜色访问接口
├── widget/                        # 自定义组件
│   └── svg_widget.dart            # SVG组件
├── tools/                         # 工具类
│   ├── log_util.dart             # 日志工具
│   └── navigator_provider.dart    # 导航工具
├── main.dart                      # 应用入口，主题配置
├── home_page.dart                # 主页面
└── color_theme_page.dart         # 主题选择页面
```

```
assets/
└── svg/                          # SVG图标资源
    ├── color_theme_light.svg     # 浅色主题图标
    ├── color_theme_dark.svg      # 暗色主题图标  
    ├── color_theme_system.svg    # 跟随系统图标
    ├── color_theme_selected.svg  # 选中状态图标
    └── navigation_back.svg       # 返回按钮图标
```

## 快速开始

### 1. 克隆项目

```bash
git clone <your-repo-url>
cd flutter_multiple_themes
```

### 2. 安装依赖

```bash
flutter pub get
```

### 3. 运行项目

```bash
flutter run
```

## 使用方法

### 基础用法

1. 在主页面点击浮动按钮进入主题选择页面
2. 选择你想要的主题：
   - **跟随系统**：自动跟随系统暗黑模式设置
   - **浅色模式**：经典的浅色界面
   - **暗色模式**：护眼的暗色界面  
   - **绿色主题**：清新自然的绿色风格
   - **红色主题**：热情活力的红色风格
   - **紫色主题**：神秘优雅的紫色风格
3. 应用会立即切换到新主题并自动保存选择

### 代码中使用主题颜色

```dart
// 方式1：使用静态访问（推荐，性能更好）
Container(
  color: ThemeColor.backgroundMain2,
  child: Text(
    'Hello World',
    style: TextStyle(color: ThemeColor.textIcon1),
  ),
)

// 方式2：使用上下文访问（更符合Flutter规范）
Container(
  color: ThemeColor.of(context).backgroundMain2,
  child: Text(
    'Hello World', 
    style: TextStyle(color: ThemeColor.of(context).textIcon1),
  ),
)
```

### 监听主题变化

```dart
// 在Controller或Service中监听主题变化
MultipleThemeService themeService = Get.find<MultipleThemeService>();

// 监听当前主题变化
themeService.currentThemeObs.listen((theme) {
  print('主题已切换到: ${theme.name}');
});

// 监听跟随系统状态变化
themeService.followSystemObs.listen((followSystem) {
  print('跟随系统状态: $followSystem');
});
```

### 获取主题状态

```dart
MultipleThemeService themeService = Get.find<MultipleThemeService>();

// 获取当前主题
MultipleThemeData currentTheme = themeService.currentTheme;

// 判断是否为暗黑模式
bool isDark = themeService.isDarkMode;

// 判断是否跟随系统
bool followSystem = themeService.followSystem;

// 检查特定主题是否被选中
bool isSelected = themeService.isThemeSelected(theme);
```

## 自定义主题

### 添加新的颜色主题

1. 在 `lib/theme/multiple_theme_extension.dart` 中添加新的颜色扩展：

```dart
// 添加新的橙色主题
static const MultipleThemeExtension orange = MultipleThemeExtension(
  // 定义所有需要的颜色值
  brand01Black: Color(0xFF1A1A1A),
  brand02White: Color(0xFFFFF8F0),
  // ... 其他颜色定义
);
```

2. 在 `lib/theme/multiple_theme_data.dart` 的 `availableThemes` 中添加新主题：

```dart
// 橙色主题
MultipleThemeData(
  id: 'orange',
  icon: 'assets/svg/color_theme_light.svg',
  description: '温暖活力的橙色主题',
  colors: MultipleThemeExtension.orange,
  themeData: _createThemeData(MultipleThemeExtension.orange, false),
  isDark: false,
),
```

3. 在 `MultipleThemeData` 的 `name` getter 中添加对应的显示名称：

```dart
String get name {
  switch (id) {
    // ... 其他case
    case 'orange':
      return '橙色主题';
    default:
      return '';
  }
}
```

### 修改现有主题颜色

直接修改 `lib/theme/multiple_theme_extension.dart` 中对应主题的颜色值即可：

```dart
// 修改绿色主题的品牌色
static const MultipleThemeExtension green = MultipleThemeExtension(
  brand04Green: Color(0xFF10B981), // 新的绿色值
  // ... 其他颜色保持不变
);
```

## 核心功能说明

### 主题服务 (MultipleThemeService)

- **自动检测系统主题**：启动时自动检测系统暗黑模式设置
- **智能主题切换**：支持跟随系统和手动设置两种模式
- **持久化存储**：自动保存用户的主题选择偏好
- **响应式更新**：基于GetX实现主题变化的实时响应
- **系统模式监听**：自动检测用户在设置中切换系统主题

### 颜色系统架构

- **语义化命名**：所有颜色都有明确的语义，如 `textIcon1`、`backgroundMain2`
- **完整的色阶**：提供从50到950的完整颜色色阶
- **响应式访问**：颜色会根据当前主题自动变化
- **类型安全**：编译时检查，避免颜色使用错误

### 状态栏适配

- **自动适配**：根据主题自动设置状态栏和导航栏样式
- **边到边显示**：支持Android的边到边显示模式
- **跨平台兼容**：自动处理不同平台的差异

## 最佳实践

### 性能优化

1. **优先使用静态访问**：`ThemeColor.textIcon1` 比 `ThemeColor.of(context).textIcon1` 性能更好
2. **避免频繁重建**：使用 `GetBuilder` 只在必要时重建Widget
3. **合理使用监听**：只在需要响应主题变化的地方使用监听器

### 代码规范

1. **颜色命名**：使用语义化的颜色名称，而不是具体的颜色值
2. **主题一致性**：确保新增的主题在所有页面都保持一致的视觉效果
3. **适配测试**：在不同主题下测试界面的可读性和美观性

## 常见问题

### Q: 如何添加新的主题？
A: 参考上面的"自定义主题"章节，按步骤添加新的颜色扩展和主题数据。

### Q: 为什么有些颜色在切换主题后没有变化？
A: 请检查是否使用了 `ThemeColor.xxx` 或 `ThemeColor.of(context).xxx`，避免直接使用 `Colors.xxx`。

### Q: 如何让主题跟随系统自动切换？
A: 调用 `themeService.setTheme('system')` 即可开启跟随系统模式。

### Q: 如何在应用启动时设置特定主题？
A: 在 `MultipleThemeService._loadThemeFromStorage()` 方法中修改默认加载逻辑。

### Q: 状态栏颜色为什么没有正确适配？
A: 确保在 `main.dart` 中正确配置了 `_configureSystemUIOverlay` 方法。

## 注意事项

⚠️ **重要说明**：
- 如果你只需要跟随系统、浅色模式、暗色模式三种基础需求，可以直接在 `MultipleThemeManager.availableThemes` 中只保留 `.system`、`.light`、`.dark` 三个主题即可
- 绿色、红色、紫色主题是基于浅色模式复制的示例，支持多主题需求时，需要自行修改 `MultipleThemeExtension` 下对应主题的每个颜色值
- 所有颜色定义都需要同时提供暗黑版本，除非使用 `Colors.transparent`

## 技术特点

- **类型安全**：使用强类型的主题系统，编译时检查
- **高性能**：基于GetX的响应式状态管理，最小化重建
- **易维护**：清晰的代码结构和完善的注释
- **可扩展**：支持轻松添加新主题和颜色
- **用户友好**：自动检测和记忆用户偏好设置

## 贡献指南

欢迎提交 Issue 和 Pull Request 来帮助改进这个项目！

## 许可证

MIT License

---

期待您的需求和意见！