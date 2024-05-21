.class public final Landroidx/compose/material3/ChipKt;
.super Ljava/lang/Object;
.source "Chip.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Chip.kt\nandroidx/compose/material3/ChipKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,2104:1\n25#2:2105\n25#2:2112\n25#2:2119\n25#2:2126\n25#2:2133\n25#2:2140\n25#2:2147\n1114#3,6:2106\n1114#3,6:2113\n1114#3,6:2120\n1114#3,6:2127\n1114#3,6:2134\n1114#3,6:2141\n1114#3,6:2148\n154#4:2154\n154#4:2155\n154#4:2156\n154#4:2157\n154#4:2158\n154#4:2159\n154#4:2160\n*S KotlinDebug\n*F\n+ 1 Chip.kt\nandroidx/compose/material3/ChipKt\n*L\n115#1:2105\n186#1:2112\n268#1:2119\n348#1:2126\n433#1:2133\n528#1:2140\n596#1:2147\n115#1:2106,6\n186#1:2113,6\n268#1:2120,6\n348#1:2127,6\n433#1:2134,6\n528#1:2141,6\n596#1:2148,6\n1325#1:2154\n1326#1:2155\n1374#1:2156\n1376#1:2157\n2080#1:2158\n2081#1:2159\n2088#1:2160\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u001a\u00a6\u0001\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n2\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0002\u0008\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0015\u0008\u0002\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0015\u0008\u0002\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cH\u0007\u00a2\u0006\u0002\u0010\u001d\u001a\u00bc\u0001\u0010\u001e\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000e2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0002\u0008\u000c2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0013\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0013\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u001cH\u0003\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008&\u0010\'\u001a\u0097\u0001\u0010(\u001a\u00020\u00082\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0002\u0008\u000c2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0013\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0013\u0010)\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0013\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0006\u0010*\u001a\u00020\"2\u0006\u0010+\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u0001H\u0003\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010-\u001a\u00a6\u0001\u0010.\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n2\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0002\u0008\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0015\u0008\u0002\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0015\u0008\u0002\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cH\u0007\u00a2\u0006\u0002\u0010\u001d\u001a\u00ae\u0001\u0010/\u001a\u00020\u00082\u0006\u00100\u001a\u00020\u00102\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n2\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0002\u0008\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0015\u0008\u0002\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0015\u0008\u0002\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u0002012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u0001022\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u0001032\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cH\u0007\u00a2\u0006\u0002\u00104\u001a\u008f\u0001\u00105\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n2\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0002\u0008\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0015\u0008\u0002\u00106\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cH\u0007\u00a2\u0006\u0002\u00107\u001a\u00ae\u0001\u00108\u001a\u00020\u00082\u0006\u00100\u001a\u00020\u00102\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n2\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0002\u0008\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0015\u0008\u0002\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0015\u0008\u0002\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u0002012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u0001022\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u0001032\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cH\u0007\u00a2\u0006\u0002\u00104\u001a\u00c5\u0001\u00109\u001a\u00020\u00082\u0006\u00100\u001a\u00020\u00102\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n2\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0002\u0008\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0015\u0008\u0002\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0015\u0008\u0002\u0010)\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0015\u0008\u0002\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u0002012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u0001022\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u0001032\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cH\u0007\u00a2\u0006\u0002\u0010:\u001a\u00d1\u0001\u0010;\u001a\u00020\u00082\u0006\u00100\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0002\u0008\u000c2\u0006\u0010\u001f\u001a\u00020 2\u0013\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0013\u0010)\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0013\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u0002012\u0008\u0010\u0017\u001a\u0004\u0018\u0001022\u0008\u0010\u0019\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u001cH\u0003\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008<\u0010=\u001a\u008f\u0001\u0010>\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n2\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0002\u0008\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0015\u0008\u0002\u00106\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\n\u00a2\u0006\u0002\u0008\u000c2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cH\u0007\u00a2\u0006\u0002\u00107\u001a&\u0010?\u001a\u00020\u00012\u0008\u0008\u0002\u0010@\u001a\u00020\u00102\u0008\u0008\u0002\u0010A\u001a\u00020\u00102\u0008\u0008\u0002\u0010B\u001a\u00020\u0010H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0013\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006C"
    }
    d2 = {
        "AssistChipPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "FilterChipPadding",
        "HorizontalElementsPadding",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "SuggestionChipPadding",
        "AssistChip",
        "",
        "onClick",
        "Lkotlin/Function0;",
        "label",
        "Landroidx/compose/runtime/Composable;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "enabled",
        "",
        "leadingIcon",
        "trailingIcon",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "colors",
        "Landroidx/compose/material3/ChipColors;",
        "elevation",
        "Landroidx/compose/material3/ChipElevation;",
        "border",
        "Landroidx/compose/material3/ChipBorder;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/material3/ChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V",
        "Chip",
        "labelTextStyle",
        "Landroidx/compose/ui/text/TextStyle;",
        "labelColor",
        "Landroidx/compose/ui/graphics/Color;",
        "Landroidx/compose/foundation/BorderStroke;",
        "minHeight",
        "paddingValues",
        "Chip-nkUnTEs",
        "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V",
        "ChipContent",
        "avatar",
        "leadingIconColor",
        "trailingIconColor",
        "ChipContent-fe0OD_I",
        "(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V",
        "ElevatedAssistChip",
        "ElevatedFilterChip",
        "selected",
        "Landroidx/compose/material3/SelectableChipColors;",
        "Landroidx/compose/material3/SelectableChipElevation;",
        "Landroidx/compose/material3/SelectableChipBorder;",
        "(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/material3/SelectableChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V",
        "ElevatedSuggestionChip",
        "icon",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/material3/ChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V",
        "FilterChip",
        "InputChip",
        "(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/material3/SelectableChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V",
        "SelectableChip",
        "SelectableChip-u0RnIRE",
        "(ZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V",
        "SuggestionChip",
        "inputChipPadding",
        "hasAvatar",
        "hasLeadingIcon",
        "hasTrailingIcon",
        "material3_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final AssistChipPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field private static final FilterChipPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field private static final HorizontalElementsPadding:F

.field private static final SuggestionChipPadding:Landroidx/compose/foundation/layout/PaddingValues;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    int-to-float v0, v0

    .line 2160
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/ChipKt;->HorizontalElementsPadding:F

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2093
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA$default(FFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v4

    sput-object v4, Landroidx/compose/material3/ChipKt;->AssistChipPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 2098
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA$default(FFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v4

    sput-object v4, Landroidx/compose/material3/ChipKt;->FilterChipPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 2103
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA$default(FFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/ChipKt;->SuggestionChipPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-void
.end method

.method public static final AssistChip(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/material3/ChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/ChipColors;",
            "Landroidx/compose/material3/ChipElevation;",
            "Landroidx/compose/material3/ChipBorder;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v12, p1

    move/from16 v11, p12

    move/from16 v10, p14

    const-string v0, "onClick"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x732c9134

    move-object/from16 v1, p11

    .line 116
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    const-string v1, "C(AssistChip)P(8,5,7,3,6,10,9,1,2)110@5623L5,111@5674L18,112@5745L21,113@5813L18,114@5883L39,120@6059L10,121@6137L19,115@5928L543:Chip.kt#uh7d8r"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v10, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v11, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v11, 0xe

    if-nez v1, :cond_2

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v11

    goto :goto_1

    :cond_2
    move v1, v11

    :goto_1
    and-int/lit8 v4, v10, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v11, 0x70

    if-nez v4, :cond_5

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, v10, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v11, 0x380

    if-nez v5, :cond_8

    move-object/from16 v5, p2

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v1, v6

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v5, p2

    :goto_6
    and-int/lit8 v6, v10, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v7, v11, 0x1c00

    if-nez v7, :cond_b

    move/from16 v7, p3

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_7

    :cond_a
    const/16 v8, 0x400

    :goto_7
    or-int/2addr v1, v8

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v7, p3

    :goto_9
    and-int/lit8 v8, v10, 0x10

    const v36, 0xe000

    if-eqz v8, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_b

    :cond_c
    and-int v9, v11, v36

    if-nez v9, :cond_e

    move-object/from16 v9, p4

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x4000

    goto :goto_a

    :cond_d
    const/16 v13, 0x2000

    :goto_a
    or-int/2addr v1, v13

    goto :goto_c

    :cond_e
    :goto_b
    move-object/from16 v9, p4

    :goto_c
    and-int/lit8 v13, v10, 0x20

    if-eqz v13, :cond_f

    const/high16 v16, 0x30000

    or-int v1, v1, v16

    move-object/from16 v2, p5

    goto :goto_e

    :cond_f
    const/high16 v16, 0x70000

    and-int v16, v11, v16

    move-object/from16 v2, p5

    if-nez v16, :cond_11

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_d

    :cond_10
    const/high16 v16, 0x10000

    :goto_d
    or-int v1, v1, v16

    :cond_11
    :goto_e
    const/high16 v37, 0x380000

    and-int v16, v11, v37

    if-nez v16, :cond_13

    and-int/lit8 v16, v10, 0x40

    move-object/from16 v0, p6

    if-nez v16, :cond_12

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    const/high16 v16, 0x100000

    goto :goto_f

    :cond_12
    const/high16 v16, 0x80000

    :goto_f
    or-int v1, v1, v16

    goto :goto_10

    :cond_13
    move-object/from16 v0, p6

    :goto_10
    const/high16 v38, 0x1c00000

    and-int v16, v11, v38

    if-nez v16, :cond_16

    and-int/lit16 v3, v10, 0x80

    if-nez v3, :cond_14

    move-object/from16 v3, p7

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const/high16 v17, 0x800000

    goto :goto_11

    :cond_14
    move-object/from16 v3, p7

    :cond_15
    const/high16 v17, 0x400000

    :goto_11
    or-int v1, v1, v17

    goto :goto_12

    :cond_16
    move-object/from16 v3, p7

    :goto_12
    const/high16 v39, 0xe000000

    and-int v17, v11, v39

    if-nez v17, :cond_19

    and-int/lit16 v0, v10, 0x100

    if-nez v0, :cond_17

    move-object/from16 v0, p8

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    const/high16 v17, 0x4000000

    goto :goto_13

    :cond_17
    move-object/from16 v0, p8

    :cond_18
    const/high16 v17, 0x2000000

    :goto_13
    or-int v1, v1, v17

    goto :goto_14

    :cond_19
    move-object/from16 v0, p8

    :goto_14
    const/high16 v40, 0x70000000

    and-int v17, v11, v40

    if-nez v17, :cond_1c

    and-int/lit16 v0, v10, 0x200

    if-nez v0, :cond_1a

    move-object/from16 v0, p9

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    const/high16 v17, 0x20000000

    goto :goto_15

    :cond_1a
    move-object/from16 v0, p9

    :cond_1b
    const/high16 v17, 0x10000000

    :goto_15
    or-int v1, v1, v17

    goto :goto_16

    :cond_1c
    move-object/from16 v0, p9

    :goto_16
    and-int/lit16 v9, v10, 0x400

    if-eqz v9, :cond_1d

    or-int/lit8 v17, p13, 0x6

    move/from16 v41, v9

    :goto_17
    move/from16 v9, v17

    goto :goto_19

    :cond_1d
    and-int/lit8 v17, p13, 0xe

    move/from16 v41, v9

    move-object/from16 v9, p10

    if-nez v17, :cond_1f

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    const/16 v17, 0x4

    goto :goto_18

    :cond_1e
    const/16 v17, 0x2

    :goto_18
    or-int v17, p13, v17

    goto :goto_17

    :cond_1f
    move/from16 v9, p13

    :goto_19
    const v17, 0x5b6db6db

    and-int v0, v1, v17

    const v2, 0x12492492

    if-ne v0, v2, :cond_21

    and-int/lit8 v0, v9, 0xb

    const/4 v2, 0x2

    if-ne v0, v2, :cond_21

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_1a

    .line 132
    :cond_20
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object v8, v3

    move-object v3, v5

    move v4, v7

    move-object/from16 v23, v14

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    goto/16 :goto_26

    .line 116
    :cond_21
    :goto_1a
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v11, 0x1

    const/16 v42, 0x0

    const/4 v2, 0x6

    if-eqz v0, :cond_27

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_1b

    .line 2105
    :cond_22
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v10, 0x40

    if-eqz v0, :cond_23

    const v0, -0x380001

    and-int/2addr v1, v0

    :cond_23
    and-int/lit16 v0, v10, 0x80

    if-eqz v0, :cond_24

    const v0, -0x1c00001

    and-int/2addr v1, v0

    :cond_24
    and-int/lit16 v0, v10, 0x100

    if-eqz v0, :cond_25

    const v0, -0xe000001

    and-int/2addr v1, v0

    :cond_25
    and-int/lit16 v0, v10, 0x200

    if-eqz v0, :cond_26

    const v0, -0x70000001

    and-int/2addr v1, v0

    :cond_26
    move-object/from16 v44, p4

    move-object/from16 v20, p5

    move-object/from16 v45, p6

    move-object/from16 v21, p8

    move-object/from16 v22, p10

    move-object v8, v3

    move-object/from16 v19, v5

    move v0, v9

    move v9, v7

    move-object/from16 v7, p9

    goto/16 :goto_24

    :cond_27
    :goto_1b
    if-eqz v4, :cond_28

    .line 107
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_1c

    :cond_28
    move-object v0, v5

    :goto_1c
    if-eqz v6, :cond_29

    const/4 v4, 0x1

    move/from16 v43, v4

    goto :goto_1d

    :cond_29
    move/from16 v43, v7

    :goto_1d
    if-eqz v8, :cond_2a

    move-object/from16 v44, v42

    goto :goto_1e

    :cond_2a
    move-object/from16 v44, p4

    :goto_1e
    if-eqz v13, :cond_2b

    move-object/from16 v13, v42

    goto :goto_1f

    :cond_2b
    move-object/from16 v13, p5

    :goto_1f
    and-int/lit8 v4, v10, 0x40

    if-eqz v4, :cond_2c

    .line 111
    sget-object v4, Landroidx/compose/material3/AssistChipDefaults;->INSTANCE:Landroidx/compose/material3/AssistChipDefaults;

    invoke-virtual {v4, v14, v2}, Landroidx/compose/material3/AssistChipDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v4

    const v5, -0x380001

    and-int/2addr v1, v5

    move-object/from16 v45, v4

    goto :goto_20

    :cond_2c
    move-object/from16 v45, p6

    :goto_20
    and-int/lit16 v4, v10, 0x80

    if-eqz v4, :cond_2d

    .line 112
    sget-object v16, Landroidx/compose/material3/AssistChipDefaults;->INSTANCE:Landroidx/compose/material3/AssistChipDefaults;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const/high16 v34, 0x6000000

    const/16 v35, 0xff

    move-object/from16 v33, v14

    invoke-virtual/range {v16 .. v35}, Landroidx/compose/material3/AssistChipDefaults;->assistChipColors-oq7We08(JJJJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ChipColors;

    move-result-object v3

    const v4, -0x1c00001

    and-int/2addr v1, v4

    :cond_2d
    move-object/from16 v26, v3

    and-int/lit16 v3, v10, 0x100

    if-eqz v3, :cond_2e

    .line 113
    sget-object v16, Landroidx/compose/material3/AssistChipDefaults;->INSTANCE:Landroidx/compose/material3/AssistChipDefaults;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v24, 0x180000

    const/16 v25, 0x3f

    move-object/from16 v23, v14

    invoke-virtual/range {v16 .. v25}, Landroidx/compose/material3/AssistChipDefaults;->assistChipElevation-aqJV_2Y(FFFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ChipElevation;

    move-result-object v3

    const v4, -0xe000001

    and-int/2addr v1, v4

    move/from16 v17, v1

    move-object/from16 v16, v3

    goto :goto_21

    :cond_2e
    move-object/from16 v16, p8

    move/from16 v17, v1

    :goto_21
    and-int/lit16 v1, v10, 0x200

    if-eqz v1, :cond_2f

    .line 114
    sget-object v1, Landroidx/compose/material3/AssistChipDefaults;->INSTANCE:Landroidx/compose/material3/AssistChipDefaults;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc00

    const/16 v18, 0x7

    move-wide v2, v3

    move-wide v4, v5

    move v6, v7

    move-object v7, v14

    move-object/from16 p2, v0

    move v0, v9

    move/from16 v19, v41

    move/from16 v9, v18

    invoke-virtual/range {v1 .. v9}, Landroidx/compose/material3/AssistChipDefaults;->assistChipBorder-d_3_b6Q(JJFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ChipBorder;

    move-result-object v1

    const v2, -0x70000001

    and-int v2, v17, v2

    move/from16 v17, v2

    goto :goto_22

    :cond_2f
    move-object/from16 p2, v0

    move v0, v9

    move/from16 v19, v41

    move-object/from16 v1, p9

    :goto_22
    if-eqz v19, :cond_31

    const v2, -0x1d58f75c

    .line 115
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v14, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 2106
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 2107
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_30

    .line 115
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v2

    .line 2109
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2105
    :cond_30
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v2, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v19, p2

    move-object v7, v1

    move-object/from16 v22, v2

    goto :goto_23

    :cond_31
    move-object/from16 v19, p2

    move-object/from16 v22, p10

    move-object v7, v1

    :goto_23
    move-object/from16 v20, v13

    move-object/from16 v21, v16

    move/from16 v1, v17

    move-object/from16 v8, v26

    move/from16 v9, v43

    :goto_24
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "androidx.compose.material3.AssistChip (Chip.kt:103)"

    const v3, -0x732c9134

    .line 116
    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 121
    :cond_32
    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v3, 0x6

    invoke-virtual {v2, v14, v3}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v2

    sget-object v3, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/AssistChipTokens;->getLabelTextFont()Landroidx/compose/material3/tokens/TypographyKeyTokens;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/material3/TypographyKt;->fromToken(Landroidx/compose/material3/Typography;Landroidx/compose/material3/tokens/TypographyKeyTokens;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v4

    shr-int/lit8 v2, v1, 0x9

    and-int/lit8 v2, v2, 0xe

    shr-int/lit8 v3, v1, 0x12

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v3, v2

    .line 122
    invoke-virtual {v8, v9, v14, v3}, Landroidx/compose/material3/ChipColors;->labelColor$material3_release(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v5

    const v3, 0x320fe334

    .line 128
    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "127@6316L21"

    invoke-static {v14, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v7, :cond_33

    move-object/from16 v2, v42

    goto :goto_25

    :cond_33
    shr-int/lit8 v3, v1, 0x18

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    invoke-virtual {v7, v9, v14, v2}, Landroidx/compose/material3/ChipBorder;->borderStroke$material3_release(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    :goto_25
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    if-eqz v2, :cond_34

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/BorderStroke;

    move-object/from16 v42, v2

    .line 129
    :cond_34
    sget-object v2, Landroidx/compose/material3/AssistChipDefaults;->INSTANCE:Landroidx/compose/material3/AssistChipDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/AssistChipDefaults;->getHeight-D9Ej5fM()F

    move-result v13

    sget-object v2, Landroidx/compose/material3/ChipKt;->AssistChipPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v23, v14

    move-object v14, v2

    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0xe

    shl-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x3

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x6

    move-object/from16 p2, v7

    and-int/lit16 v7, v3, 0x1c00

    or-int/2addr v2, v7

    and-int v7, v3, v37

    or-int/2addr v2, v7

    and-int v7, v3, v38

    or-int/2addr v2, v7

    and-int v7, v3, v39

    or-int/2addr v2, v7

    and-int v3, v3, v40

    or-int v17, v2, v3

    shr-int/lit8 v1, v1, 0x18

    and-int/lit8 v1, v1, 0xe

    or-int/lit16 v1, v1, 0xd80

    shl-int/lit8 v0, v0, 0xc

    and-int v0, v0, v36

    or-int v18, v1, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move v2, v9

    move-object/from16 v3, p1

    move-object/from16 v24, p2

    move-object/from16 v7, v44

    move-object/from16 v26, v8

    move-object/from16 v8, v20

    move/from16 v43, v9

    move-object/from16 v9, v45

    move-object/from16 v10, v26

    move-object/from16 v11, v21

    move-object/from16 v12, v42

    move-object/from16 v15, v22

    move-object/from16 v16, v23

    .line 116
    invoke-static/range {v0 .. v18}, Landroidx/compose/material3/ChipKt;->Chip-nkUnTEs(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_35
    move-object/from16 v3, v19

    move-object/from16 v6, v20

    move-object/from16 v9, v21

    move-object/from16 v11, v22

    move-object/from16 v10, v24

    move-object/from16 v8, v26

    move/from16 v4, v43

    move-object/from16 v5, v44

    move-object/from16 v7, v45

    .line 132
    :goto_26
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_36

    goto :goto_27

    :cond_36
    new-instance v16, Landroidx/compose/material3/ChipKt$AssistChip$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/ChipKt$AssistChip$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/material3/ChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_27
    return-void
.end method

.method private static final Chip-nkUnTEs(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/ChipColors;",
            "Landroidx/compose/material3/ChipElevation;",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v15, p10

    move-object/from16 v14, p11

    move-object/from16 v13, p15

    move/from16 v12, p17

    move/from16 v11, p18

    const v2, 0x537a018f

    move-object/from16 v3, p16

    .line 1318
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    const-string v3, "C(Chip)P(10,11,3,5,7,6:c#ui.graphics.Color,8,14,13,1,2!1,9:c#ui.unit.Dp,12)1323@66508L23,1318@66337L961:Chip.kt#uh7d8r"

    invoke-static {v10, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v12, 0xe

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-nez v3, :cond_1

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    or-int/2addr v3, v12

    goto :goto_1

    :cond_1
    move v3, v12

    :goto_1
    and-int/lit8 v6, v12, 0x70

    const/16 v7, 0x20

    move-object/from16 v9, p1

    if-nez v6, :cond_3

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :cond_3
    and-int/lit16 v6, v12, 0x380

    const/16 v16, 0x100

    const/16 v17, 0x80

    if-nez v6, :cond_5

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    move/from16 v6, v16

    goto :goto_3

    :cond_4
    move/from16 v6, v17

    :goto_3
    or-int/2addr v3, v6

    :cond_5
    and-int/lit16 v6, v12, 0x1c00

    const/16 v18, 0x800

    const/16 v19, 0x400

    if-nez v6, :cond_7

    move-object/from16 v6, p3

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    move/from16 v20, v18

    goto :goto_4

    :cond_6
    move/from16 v20, v19

    :goto_4
    or-int v3, v3, v20

    goto :goto_5

    :cond_7
    move-object/from16 v6, p3

    :goto_5
    const v20, 0xe000

    and-int v21, v12, v20

    const/16 v22, 0x4000

    const/16 v23, 0x2000

    move-object/from16 v2, p4

    if-nez v21, :cond_9

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    move/from16 v24, v22

    goto :goto_6

    :cond_8
    move/from16 v24, v23

    :goto_6
    or-int v3, v3, v24

    :cond_9
    const/high16 v24, 0x70000

    and-int v24, v12, v24

    move-wide/from16 v8, p5

    if-nez v24, :cond_b

    invoke-interface {v10, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v24

    if-eqz v24, :cond_a

    const/high16 v24, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v24, 0x10000

    :goto_7
    or-int v3, v3, v24

    :cond_b
    const/high16 v24, 0x380000

    and-int v24, v12, v24

    move-object/from16 v9, p7

    if-nez v24, :cond_d

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/high16 v8, 0x100000

    goto :goto_8

    :cond_c
    const/high16 v8, 0x80000

    :goto_8
    or-int/2addr v3, v8

    :cond_d
    const/high16 v8, 0x1c00000

    and-int/2addr v8, v12

    if-nez v8, :cond_f

    move-object/from16 v8, p8

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    const/high16 v24, 0x800000

    goto :goto_9

    :cond_e
    const/high16 v24, 0x400000

    :goto_9
    or-int v3, v3, v24

    goto :goto_a

    :cond_f
    move-object/from16 v8, p8

    :goto_a
    const/high16 v24, 0xe000000

    and-int v25, v12, v24

    move-object/from16 v9, p9

    if-nez v25, :cond_11

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    const/high16 v25, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v25, 0x2000000

    :goto_b
    or-int v3, v3, v25

    :cond_11
    const/high16 v25, 0x70000000

    and-int v26, v12, v25

    if-nez v26, :cond_13

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    const/high16 v26, 0x20000000

    goto :goto_c

    :cond_12
    const/high16 v26, 0x10000000

    :goto_c
    or-int v3, v3, v26

    :cond_13
    and-int/lit8 v26, v11, 0xe

    if-nez v26, :cond_15

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    goto :goto_d

    :cond_14
    move v4, v5

    :goto_d
    or-int/2addr v4, v11

    goto :goto_e

    :cond_15
    move v4, v11

    :goto_e
    and-int/lit8 v5, v11, 0x70

    if-nez v5, :cond_17

    move-object/from16 v5, p12

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    goto :goto_f

    :cond_16
    const/16 v7, 0x10

    :goto_f
    or-int/2addr v4, v7

    goto :goto_10

    :cond_17
    move-object/from16 v5, p12

    :goto_10
    and-int/lit16 v7, v11, 0x380

    if-nez v7, :cond_19

    move/from16 v7, p13

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v26

    if-eqz v26, :cond_18

    goto :goto_11

    :cond_18
    move/from16 v16, v17

    :goto_11
    or-int v4, v4, v16

    goto :goto_12

    :cond_19
    move/from16 v7, p13

    :goto_12
    and-int/lit16 v2, v11, 0x1c00

    if-nez v2, :cond_1b

    move-object/from16 v2, p14

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    goto :goto_13

    :cond_1a
    move/from16 v18, v19

    :goto_13
    or-int v4, v4, v18

    goto :goto_14

    :cond_1b
    move-object/from16 v2, p14

    :goto_14
    and-int v16, v11, v20

    if-nez v16, :cond_1d

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    goto :goto_15

    :cond_1c
    move/from16 v22, v23

    :goto_15
    or-int v4, v4, v22

    :cond_1d
    const v16, 0x5b6db6db

    and-int v2, v3, v16

    const v5, 0x12492492

    if-ne v2, v5, :cond_1f

    const v2, 0xb6db

    and-int/2addr v2, v4

    const/16 v5, 0x2492

    if-ne v2, v5, :cond_1f

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_16

    .line 1343
    :cond_1e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v0, v10

    goto/16 :goto_1b

    .line 1318
    :cond_1f
    :goto_16
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "androidx.compose.material3.Chip (Chip.kt:1301)"

    const v5, 0x537a018f

    invoke-static {v5, v3, v4, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 1321
    :cond_20
    sget-object v2, Landroidx/compose/material3/ChipKt$Chip$1;->INSTANCE:Landroidx/compose/material3/ChipKt$Chip$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v6, 0x0

    invoke-static {v1, v5, v2, v12, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v19

    shr-int/lit8 v2, v3, 0x6

    and-int/lit8 v2, v2, 0xe

    shr-int/lit8 v16, v3, 0x18

    and-int/lit8 v16, v16, 0x70

    or-int v6, v2, v16

    .line 1324
    invoke-virtual {v15, v0, v10, v6}, Landroidx/compose/material3/ChipColors;->containerColor$material3_release(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const v6, 0x3d0d940

    .line 1325
    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "1324@66575L42"

    invoke-static {v10, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v14, :cond_21

    const/4 v6, 0x0

    goto :goto_17

    :cond_21
    move-object v6, v13

    check-cast v6, Landroidx/compose/foundation/interaction/InteractionSource;

    shr-int/lit8 v16, v4, 0x9

    and-int/lit8 v16, v16, 0x70

    or-int v16, v2, v16

    shl-int/lit8 v12, v4, 0x6

    and-int/lit16 v12, v12, 0x380

    or-int v12, v16, v12

    invoke-virtual {v14, v0, v6, v10, v12}, Landroidx/compose/material3/ChipElevation;->tonalElevation$material3_release(ZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v6

    :goto_17
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    if-eqz v6, :cond_22

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v6}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v6

    goto :goto_18

    :cond_22
    int-to-float v6, v5

    .line 2154
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    :goto_18
    move/from16 v26, v6

    const v6, 0x3d0d9a0

    .line 1326
    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "1325@66671L43"

    invoke-static {v10, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v14, :cond_23

    const/4 v6, 0x0

    goto :goto_19

    :cond_23
    move-object v6, v13

    check-cast v6, Landroidx/compose/foundation/interaction/InteractionSource;

    shr-int/lit8 v12, v4, 0x9

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v2, v12

    shl-int/lit8 v12, v4, 0x6

    and-int/lit16 v12, v12, 0x380

    or-int/2addr v2, v12

    invoke-virtual {v14, v0, v6, v10, v2}, Landroidx/compose/material3/ChipElevation;->shadowElevation$material3_release(ZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v6

    :goto_19
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    if-eqz v6, :cond_24

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v2

    goto :goto_1a

    :cond_24
    int-to-float v2, v5

    .line 2155
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    :goto_1a
    move/from16 v27, v2

    .line 1329
    new-instance v12, Landroidx/compose/material3/ChipKt$Chip$2;

    move-object v2, v12

    move v5, v3

    move-object/from16 v3, p3

    move/from16 v16, v4

    move-object/from16 v4, p4

    move/from16 p16, v5

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    move-object v0, v10

    move/from16 v10, p2

    move/from16 v11, p16

    move-object v1, v12

    const/4 v15, 0x1

    move/from16 v12, p13

    move-object/from16 v13, p14

    move/from16 v14, v16

    invoke-direct/range {v2 .. v14}, Landroidx/compose/material3/ChipKt$Chip$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ChipColors;ZIFLandroidx/compose/foundation/layout/PaddingValues;I)V

    const v2, -0x765f629c

    invoke-static {v0, v2, v15, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lkotlin/jvm/functions/Function2;

    move/from16 v3, p16

    shr-int/lit8 v1, v3, 0x3

    and-int/lit8 v1, v1, 0xe

    and-int/lit16 v2, v3, 0x380

    or-int/2addr v1, v2

    shr-int/lit8 v2, v3, 0xf

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    shl-int/lit8 v2, v16, 0x15

    and-int v2, v2, v24

    or-int/2addr v1, v2

    shl-int/lit8 v2, v16, 0xf

    and-int v2, v2, v25

    or-int v16, v1, v2

    const/16 v17, 0x6

    const/16 v18, 0x20

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, p2

    move-object/from16 v5, p9

    move-wide/from16 v6, v20

    move-wide/from16 v8, v22

    move/from16 v10, v26

    move/from16 v11, v27

    move-object/from16 v12, p12

    move-object/from16 v13, p15

    move-object v15, v0

    .line 1319
    invoke-static/range {v2 .. v18}, Landroidx/compose/material3/SurfaceKt;->Surface-o_FOJdg(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 1343
    :cond_25
    :goto_1b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_26

    goto :goto_1c

    :cond_26
    new-instance v19, Landroidx/compose/material3/ChipKt$Chip$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v28, v15

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/material3/ChipKt$Chip$3;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v28

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_1c
    return-void
.end method

.method private static final ChipContent-fe0OD_I(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;JJF",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v2, p1

    move/from16 v14, p14

    const v0, -0x2ea9c614

    move-object/from16 v1, p13

    .line 1407
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v3, "C(ChipContent)P(1,3,2:c#ui.graphics.Color,4!1,8,5:c#ui.graphics.Color,9:c#ui.graphics.Color,6:c#ui.unit.Dp)1407@69420L1012:Chip.kt#uh7d8r"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v14, 0xe

    if-nez v3, :cond_1

    move-object/from16 v3, p0

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v14

    goto :goto_1

    :cond_1
    move-object/from16 v3, p0

    move v5, v14

    :goto_1
    and-int/lit8 v6, v14, 0x70

    if-nez v6, :cond_3

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v5, v6

    :cond_3
    and-int/lit16 v6, v14, 0x380

    if-nez v6, :cond_5

    move-wide/from16 v6, p2

    invoke-interface {v1, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_3

    :cond_4
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v5, v8

    goto :goto_4

    :cond_5
    move-wide/from16 v6, p2

    :goto_4
    and-int/lit16 v8, v14, 0x1c00

    if-nez v8, :cond_7

    move-object/from16 v8, p4

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x800

    goto :goto_5

    :cond_6
    const/16 v9, 0x400

    :goto_5
    or-int/2addr v5, v9

    goto :goto_6

    :cond_7
    move-object/from16 v8, p4

    :goto_6
    const v9, 0xe000

    and-int/2addr v9, v14

    if-nez v9, :cond_9

    move-object/from16 v9, p5

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x4000

    goto :goto_7

    :cond_8
    const/16 v10, 0x2000

    :goto_7
    or-int/2addr v5, v10

    goto :goto_8

    :cond_9
    move-object/from16 v9, p5

    :goto_8
    const/high16 v10, 0x70000

    and-int/2addr v10, v14

    if-nez v10, :cond_b

    move-object/from16 v10, p6

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/high16 v11, 0x20000

    goto :goto_9

    :cond_a
    const/high16 v11, 0x10000

    :goto_9
    or-int/2addr v5, v11

    goto :goto_a

    :cond_b
    move-object/from16 v10, p6

    :goto_a
    const/high16 v11, 0x380000

    and-int/2addr v11, v14

    if-nez v11, :cond_d

    move-wide/from16 v11, p7

    invoke-interface {v1, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v13

    if-eqz v13, :cond_c

    const/high16 v13, 0x100000

    goto :goto_b

    :cond_c
    const/high16 v13, 0x80000

    :goto_b
    or-int/2addr v5, v13

    goto :goto_c

    :cond_d
    move-wide/from16 v11, p7

    :goto_c
    const/high16 v13, 0x1c00000

    and-int/2addr v13, v14

    if-nez v13, :cond_f

    move v13, v5

    move-wide/from16 v4, p9

    invoke-interface {v1, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v15

    if-eqz v15, :cond_e

    const/high16 v15, 0x800000

    goto :goto_d

    :cond_e
    const/high16 v15, 0x400000

    :goto_d
    or-int/2addr v13, v15

    goto :goto_e

    :cond_f
    move v13, v5

    move-wide/from16 v4, p9

    :goto_e
    const/high16 v15, 0xe000000

    and-int/2addr v15, v14

    if-nez v15, :cond_11

    move/from16 v15, p11

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x4000000

    goto :goto_f

    :cond_10
    const/high16 v16, 0x2000000

    :goto_f
    or-int v13, v13, v16

    goto :goto_10

    :cond_11
    move/from16 v15, p11

    :goto_10
    const/high16 v16, 0x70000000

    and-int v16, v14, v16

    move-object/from16 v0, p12

    if-nez v16, :cond_13

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x20000000

    goto :goto_11

    :cond_12
    const/high16 v17, 0x10000000

    :goto_11
    or-int v13, v13, v17

    :cond_13
    const v17, 0x5b6db6db

    and-int v0, v13, v17

    const v3, 0x12492492

    if-ne v0, v3, :cond_15

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_12

    .line 1436
    :cond_14
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_13

    .line 1407
    :cond_15
    :goto_12
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, -0x1

    const-string v3, "androidx.compose.material3.ChipContent (Chip.kt:1395)"

    const v4, -0x2ea9c614

    invoke-static {v4, v13, v0, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_16
    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/compose/runtime/ProvidedValue;

    .line 1409
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 1410
    invoke-static {}, Landroidx/compose/material3/TextKt;->getLocalTextStyle()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 1411
    new-instance v3, Landroidx/compose/material3/ChipKt$ChipContent$1;

    move-object v15, v3

    move/from16 v16, p11

    move-object/from16 v17, p12

    move-object/from16 v18, p5

    move/from16 v19, v13

    move-object/from16 v20, p4

    move-wide/from16 v21, p7

    move-object/from16 v23, p0

    move-object/from16 v24, p6

    move-wide/from16 v25, p9

    invoke-direct/range {v15 .. v26}, Landroidx/compose/material3/ChipKt$ChipContent$1;-><init>(FLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function2;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;J)V

    const v5, 0x683c8eac

    invoke-static {v1, v5, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/16 v4, 0x38

    .line 1408
    invoke-static {v0, v3, v1, v4}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 1436
    :cond_17
    :goto_13
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_18

    goto :goto_14

    :cond_18
    new-instance v16, Landroidx/compose/material3/ChipKt$ChipContent$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/ChipKt$ChipContent$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;I)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_14
    return-void
.end method

.method public static final ElevatedAssistChip(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/material3/ChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V
    .locals 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/ChipColors;",
            "Landroidx/compose/material3/ChipElevation;",
            "Landroidx/compose/material3/ChipBorder;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p12

    move/from16 v12, p14

    const-string v0, "onClick"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x4d3d05c2    # 1.9820445E8f

    move-object/from16 v1, p11

    .line 187
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    const-string v1, "C(ElevatedAssistChip)P(8,5,7,3,6,10,9,1,2)181@9326L5,182@9377L26,183@9456L29,185@9569L39,191@9744L10,192@9822L19,186@9613L543:Chip.kt#uh7d8r"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v13, 0xe

    if-nez v1, :cond_2

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v13

    goto :goto_1

    :cond_2
    move v1, v13

    :goto_1
    and-int/lit8 v4, v12, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v13, 0x70

    if-nez v4, :cond_5

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, v12, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v13, 0x380

    if-nez v5, :cond_8

    move-object/from16 v5, p2

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v1, v6

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v5, p2

    :goto_6
    and-int/lit8 v6, v12, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v7, v13, 0x1c00

    if-nez v7, :cond_b

    move/from16 v7, p3

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_7

    :cond_a
    const/16 v8, 0x400

    :goto_7
    or-int/2addr v1, v8

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v7, p3

    :goto_9
    and-int/lit8 v8, v12, 0x10

    const v36, 0xe000

    if-eqz v8, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_b

    :cond_c
    and-int v9, v13, v36

    if-nez v9, :cond_e

    move-object/from16 v9, p4

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v10, 0x4000

    goto :goto_a

    :cond_d
    const/16 v10, 0x2000

    :goto_a
    or-int/2addr v1, v10

    goto :goto_c

    :cond_e
    :goto_b
    move-object/from16 v9, p4

    :goto_c
    and-int/lit8 v10, v12, 0x20

    if-eqz v10, :cond_f

    const/high16 v16, 0x30000

    or-int v1, v1, v16

    move-object/from16 v2, p5

    goto :goto_e

    :cond_f
    const/high16 v16, 0x70000

    and-int v16, v13, v16

    move-object/from16 v2, p5

    if-nez v16, :cond_11

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_d

    :cond_10
    const/high16 v16, 0x10000

    :goto_d
    or-int v1, v1, v16

    :cond_11
    :goto_e
    const/high16 v37, 0x380000

    and-int v16, v13, v37

    if-nez v16, :cond_13

    and-int/lit8 v16, v12, 0x40

    move-object/from16 v0, p6

    if-nez v16, :cond_12

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    const/high16 v16, 0x100000

    goto :goto_f

    :cond_12
    const/high16 v16, 0x80000

    :goto_f
    or-int v1, v1, v16

    goto :goto_10

    :cond_13
    move-object/from16 v0, p6

    :goto_10
    const/high16 v38, 0x1c00000

    and-int v16, v13, v38

    if-nez v16, :cond_16

    and-int/lit16 v3, v12, 0x80

    if-nez v3, :cond_14

    move-object/from16 v3, p7

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const/high16 v17, 0x800000

    goto :goto_11

    :cond_14
    move-object/from16 v3, p7

    :cond_15
    const/high16 v17, 0x400000

    :goto_11
    or-int v1, v1, v17

    goto :goto_12

    :cond_16
    move-object/from16 v3, p7

    :goto_12
    const/high16 v39, 0xe000000

    and-int v17, v13, v39

    if-nez v17, :cond_19

    and-int/lit16 v0, v12, 0x100

    if-nez v0, :cond_17

    move-object/from16 v0, p8

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    const/high16 v17, 0x4000000

    goto :goto_13

    :cond_17
    move-object/from16 v0, p8

    :cond_18
    const/high16 v17, 0x2000000

    :goto_13
    or-int v1, v1, v17

    goto :goto_14

    :cond_19
    move-object/from16 v0, p8

    :goto_14
    and-int/lit16 v9, v12, 0x200

    const/high16 v40, 0x70000000

    if-eqz v9, :cond_1a

    const/high16 v17, 0x30000000

    or-int v1, v1, v17

    move/from16 v41, v9

    move-object/from16 v9, p9

    goto :goto_16

    :cond_1a
    and-int v17, v13, v40

    move/from16 v41, v9

    move-object/from16 v9, p9

    if-nez v17, :cond_1c

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    const/high16 v17, 0x20000000

    goto :goto_15

    :cond_1b
    const/high16 v17, 0x10000000

    :goto_15
    or-int v1, v1, v17

    :cond_1c
    :goto_16
    and-int/lit16 v9, v12, 0x400

    if-eqz v9, :cond_1d

    or-int/lit8 v17, p13, 0x6

    move/from16 v42, v9

    :goto_17
    move/from16 v9, v17

    goto :goto_19

    :cond_1d
    and-int/lit8 v17, p13, 0xe

    move/from16 v42, v9

    move-object/from16 v9, p10

    if-nez v17, :cond_1f

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    const/16 v17, 0x4

    goto :goto_18

    :cond_1e
    const/16 v17, 0x2

    :goto_18
    or-int v17, p13, v17

    goto :goto_17

    :cond_1f
    move/from16 v9, p13

    :goto_19
    const v17, 0x5b6db6db

    and-int v0, v1, v17

    const v2, 0x12492492

    if-ne v0, v2, :cond_21

    and-int/lit8 v0, v9, 0xb

    const/4 v2, 0x2

    if-ne v0, v2, :cond_21

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_1a

    .line 203
    :cond_20
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object v8, v3

    move-object v3, v5

    move v4, v7

    move-object/from16 v25, v11

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v11, p10

    goto/16 :goto_28

    .line 187
    :cond_21
    :goto_1a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v13, 0x1

    const v2, -0x380001

    const/16 v43, 0x0

    move/from16 p11, v9

    const/4 v9, 0x6

    if-eqz v0, :cond_26

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_1b

    .line 2112
    :cond_22
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x40

    if-eqz v0, :cond_23

    and-int/2addr v1, v2

    :cond_23
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_24

    const v0, -0x1c00001

    and-int/2addr v1, v0

    :cond_24
    and-int/lit16 v0, v12, 0x100

    if-eqz v0, :cond_25

    const v0, -0xe000001

    and-int/2addr v1, v0

    :cond_25
    move-object/from16 v45, p4

    move-object/from16 v46, p5

    move-object/from16 v47, p6

    move-object/from16 v20, p8

    move-object/from16 v8, p9

    move-object/from16 v21, p10

    move/from16 v48, p11

    move-object v9, v3

    move-object/from16 v19, v5

    move v10, v7

    goto/16 :goto_25

    :cond_26
    :goto_1b
    if-eqz v4, :cond_27

    .line 178
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_1c

    :cond_27
    move-object v0, v5

    :goto_1c
    if-eqz v6, :cond_28

    const/4 v4, 0x1

    move/from16 v44, v4

    goto :goto_1d

    :cond_28
    move/from16 v44, v7

    :goto_1d
    if-eqz v8, :cond_29

    move-object/from16 v45, v43

    goto :goto_1e

    :cond_29
    move-object/from16 v45, p4

    :goto_1e
    if-eqz v10, :cond_2a

    move-object/from16 v46, v43

    goto :goto_1f

    :cond_2a
    move-object/from16 v46, p5

    :goto_1f
    and-int/lit8 v4, v12, 0x40

    if-eqz v4, :cond_2b

    .line 182
    sget-object v4, Landroidx/compose/material3/AssistChipDefaults;->INSTANCE:Landroidx/compose/material3/AssistChipDefaults;

    invoke-virtual {v4, v11, v9}, Landroidx/compose/material3/AssistChipDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v4

    and-int/2addr v1, v2

    move-object/from16 v47, v4

    goto :goto_20

    :cond_2b
    move-object/from16 v47, p6

    :goto_20
    and-int/lit16 v2, v12, 0x80

    if-eqz v2, :cond_2c

    .line 183
    sget-object v16, Landroidx/compose/material3/AssistChipDefaults;->INSTANCE:Landroidx/compose/material3/AssistChipDefaults;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const/high16 v34, 0x6000000

    const/16 v35, 0xff

    move-object/from16 v33, v11

    invoke-virtual/range {v16 .. v35}, Landroidx/compose/material3/AssistChipDefaults;->elevatedAssistChipColors-oq7We08(JJJJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ChipColors;

    move-result-object v2

    const v3, -0x1c00001

    and-int/2addr v1, v3

    move/from16 v17, v1

    move-object/from16 v16, v2

    goto :goto_21

    :cond_2c
    move/from16 v17, v1

    move-object/from16 v16, v3

    :goto_21
    and-int/lit16 v1, v12, 0x100

    if-eqz v1, :cond_2d

    .line 184
    sget-object v1, Landroidx/compose/material3/AssistChipDefaults;->INSTANCE:Landroidx/compose/material3/AssistChipDefaults;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v10, 0x180000

    const/16 v18, 0x3f

    move-object v8, v11

    move/from16 v48, p11

    move/from16 v19, v41

    move/from16 v20, v42

    move v9, v10

    move/from16 v10, v18

    invoke-virtual/range {v1 .. v10}, Landroidx/compose/material3/AssistChipDefaults;->elevatedAssistChipElevation-aqJV_2Y(FFFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ChipElevation;

    move-result-object v1

    const v2, -0xe000001

    and-int v2, v17, v2

    move/from16 v17, v2

    goto :goto_22

    :cond_2d
    move/from16 v48, p11

    move/from16 v19, v41

    move/from16 v20, v42

    move-object/from16 v1, p8

    :goto_22
    if-eqz v19, :cond_2e

    move-object/from16 v2, v43

    goto :goto_23

    :cond_2e
    move-object/from16 v2, p9

    :goto_23
    if-eqz v20, :cond_30

    const v3, -0x1d58f75c

    .line 186
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v11, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 2113
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 2114
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2f

    .line 186
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v3

    .line 2116
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2112
    :cond_2f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v3, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object v8, v2

    move-object/from16 v21, v3

    goto :goto_24

    :cond_30
    move-object/from16 v21, p10

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object v8, v2

    :goto_24
    move-object/from16 v9, v16

    move/from16 v1, v17

    move/from16 v10, v44

    :goto_25
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "androidx.compose.material3.ElevatedAssistChip (Chip.kt:174)"

    move/from16 v2, v48

    const v3, 0x4d3d05c2    # 1.9820445E8f

    .line 187
    invoke-static {v3, v1, v2, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_26

    :cond_31
    move/from16 v2, v48

    .line 192
    :goto_26
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v3, 0x6

    invoke-virtual {v0, v11, v3}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v0

    sget-object v3, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/AssistChipTokens;->getLabelTextFont()Landroidx/compose/material3/tokens/TypographyKeyTokens;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/compose/material3/TypographyKt;->fromToken(Landroidx/compose/material3/Typography;Landroidx/compose/material3/tokens/TypographyKeyTokens;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v4

    shr-int/lit8 v0, v1, 0x9

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v3, v1, 0x12

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v3, v0

    .line 193
    invoke-virtual {v9, v10, v11, v3}, Landroidx/compose/material3/ChipColors;->labelColor$material3_release(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v5

    .line 198
    sget-object v3, Landroidx/compose/material3/AssistChipDefaults;->INSTANCE:Landroidx/compose/material3/AssistChipDefaults;

    invoke-virtual {v3}, Landroidx/compose/material3/AssistChipDefaults;->getHeight-D9Ej5fM()F

    move-result v16

    sget-object v22, Landroidx/compose/material3/ChipKt;->AssistChipPadding:Landroidx/compose/foundation/layout/PaddingValues;

    const v3, -0xd88591f

    .line 201
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "200@10083L21"

    invoke-static {v11, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v8, :cond_32

    move-object/from16 v0, v43

    goto :goto_27

    :cond_32
    shr-int/lit8 v3, v1, 0x18

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v0, v3

    invoke-virtual {v8, v10, v11, v0}, Landroidx/compose/material3/ChipBorder;->borderStroke$material3_release(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    :goto_27
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    if-eqz v0, :cond_33

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/BorderStroke;

    move-object/from16 v43, v0

    :cond_33
    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0xe

    shl-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v0, v3

    shr-int/lit8 v3, v1, 0x3

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v0, v3

    shl-int/lit8 v3, v1, 0x6

    and-int/lit16 v7, v3, 0x1c00

    or-int/2addr v0, v7

    and-int v7, v3, v37

    or-int/2addr v0, v7

    and-int v7, v3, v38

    or-int/2addr v0, v7

    and-int v7, v3, v39

    or-int/2addr v0, v7

    and-int v3, v3, v40

    or-int v17, v0, v3

    shr-int/lit8 v0, v1, 0x18

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v0, v0, 0xd80

    shl-int/lit8 v1, v2, 0xc

    and-int v1, v1, v36

    or-int v18, v0, v1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move v2, v10

    move-object/from16 v3, p1

    move-object/from16 v7, v45

    move-object/from16 v23, v8

    move-object/from16 v8, v46

    move-object/from16 v24, v9

    move-object/from16 v9, v47

    move/from16 v44, v10

    move-object/from16 v10, v24

    move-object/from16 v25, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v43

    move/from16 v13, v16

    move-object/from16 v14, v22

    move-object/from16 v15, v21

    move-object/from16 v16, v25

    .line 187
    invoke-static/range {v0 .. v18}, Landroidx/compose/material3/ChipKt;->Chip-nkUnTEs(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_34
    move-object/from16 v3, v19

    move-object/from16 v9, v20

    move-object/from16 v11, v21

    move-object/from16 v10, v23

    move-object/from16 v8, v24

    move/from16 v4, v44

    move-object/from16 v5, v45

    move-object/from16 v6, v46

    move-object/from16 v7, v47

    .line 203
    :goto_28
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_35

    goto :goto_29

    :cond_35
    new-instance v16, Landroidx/compose/material3/ChipKt$ElevatedAssistChip$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/ChipKt$ElevatedAssistChip$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/material3/ChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_29
    return-void
.end method

.method public static final ElevatedFilterChip(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/material3/SelectableChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V
    .locals 56
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SelectableChipColors;",
            "Landroidx/compose/material3/SelectableChipElevation;",
            "Landroidx/compose/material3/SelectableChipBorder;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move/from16 v12, p13

    move/from16 v11, p15

    const-string v0, "onClick"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7185902d

    move-object/from16 v1, p12

    .line 349
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    const-string v1, "C(ElevatedFilterChip)P(9,8,5,7,3,6,11,10,1,2)343@17577L5,344@17638L26,345@17727L29,347@17850L39,354@18060L10,348@17894L556:Chip.kt#uh7d8r"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v12, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v12, 0xe

    if-nez v1, :cond_2

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v12

    goto :goto_1

    :cond_2
    move v1, v12

    :goto_1
    and-int/lit8 v4, v11, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v12, 0x70

    if-nez v4, :cond_5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, v11, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v12, 0x380

    if-nez v4, :cond_8

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    :cond_8
    :goto_5
    and-int/lit8 v4, v11, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v7, v12, 0x1c00

    if-nez v7, :cond_b

    move-object/from16 v7, p3

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_6

    :cond_a
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v1, v8

    goto :goto_8

    :cond_b
    :goto_7
    move-object/from16 v7, p3

    :goto_8
    and-int/lit8 v8, v11, 0x10

    const v45, 0xe000

    if-eqz v8, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_a

    :cond_c
    and-int v9, v12, v45

    if-nez v9, :cond_e

    move/from16 v9, p4

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_9

    :cond_d
    const/16 v16, 0x2000

    :goto_9
    or-int v1, v1, v16

    goto :goto_b

    :cond_e
    :goto_a
    move/from16 v9, p4

    :goto_b
    and-int/lit8 v16, v11, 0x20

    const/high16 v46, 0x70000

    if-eqz v16, :cond_f

    const/high16 v17, 0x30000

    or-int v1, v1, v17

    move-object/from16 v2, p5

    goto :goto_d

    :cond_f
    and-int v17, v12, v46

    move-object/from16 v2, p5

    if-nez v17, :cond_11

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v17, 0x10000

    :goto_c
    or-int v1, v1, v17

    :cond_11
    :goto_d
    and-int/lit8 v17, v11, 0x40

    const/high16 v47, 0x380000

    if-eqz v17, :cond_12

    const/high16 v18, 0x180000

    or-int v1, v1, v18

    move-object/from16 v3, p6

    goto :goto_f

    :cond_12
    and-int v18, v12, v47

    move-object/from16 v3, p6

    if-nez v18, :cond_14

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    const/high16 v19, 0x100000

    goto :goto_e

    :cond_13
    const/high16 v19, 0x80000

    :goto_e
    or-int v1, v1, v19

    :cond_14
    :goto_f
    const/high16 v19, 0x1c00000

    and-int v19, v12, v19

    if-nez v19, :cond_17

    and-int/lit16 v5, v11, 0x80

    if-nez v5, :cond_15

    move-object/from16 v5, p7

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    const/high16 v20, 0x800000

    goto :goto_10

    :cond_15
    move-object/from16 v5, p7

    :cond_16
    const/high16 v20, 0x400000

    :goto_10
    or-int v1, v1, v20

    goto :goto_11

    :cond_17
    move-object/from16 v5, p7

    :goto_11
    const/high16 v20, 0xe000000

    and-int v20, v12, v20

    if-nez v20, :cond_1a

    and-int/lit16 v6, v11, 0x100

    if-nez v6, :cond_18

    move-object/from16 v6, p8

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    const/high16 v21, 0x4000000

    goto :goto_12

    :cond_18
    move-object/from16 v6, p8

    :cond_19
    const/high16 v21, 0x2000000

    :goto_12
    or-int v1, v1, v21

    goto :goto_13

    :cond_1a
    move-object/from16 v6, p8

    :goto_13
    const/high16 v21, 0x70000000

    and-int v21, v12, v21

    if-nez v21, :cond_1d

    and-int/lit16 v0, v11, 0x200

    if-nez v0, :cond_1b

    move-object/from16 v0, p9

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1c

    const/high16 v21, 0x20000000

    goto :goto_14

    :cond_1b
    move-object/from16 v0, p9

    :cond_1c
    const/high16 v21, 0x10000000

    :goto_14
    or-int v1, v1, v21

    goto :goto_15

    :cond_1d
    move-object/from16 v0, p9

    :goto_15
    and-int/lit16 v9, v11, 0x400

    if-eqz v9, :cond_1e

    or-int/lit8 v18, p14, 0x6

    move/from16 v48, v9

    move-object/from16 v9, p10

    goto :goto_17

    :cond_1e
    and-int/lit8 v21, p14, 0xe

    move/from16 v48, v9

    move-object/from16 v9, p10

    if-nez v21, :cond_20

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1f

    const/16 v18, 0x4

    goto :goto_16

    :cond_1f
    const/16 v18, 0x2

    :goto_16
    or-int v18, p14, v18

    goto :goto_17

    :cond_20
    move/from16 v18, p14

    :goto_17
    and-int/lit16 v9, v11, 0x800

    if-eqz v9, :cond_21

    or-int/lit8 v18, v18, 0x30

    move/from16 p12, v9

    goto :goto_19

    :cond_21
    and-int/lit8 v21, p14, 0x70

    move/from16 p12, v9

    move-object/from16 v9, p11

    if-nez v21, :cond_23

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_22

    const/16 v19, 0x20

    goto :goto_18

    :cond_22
    const/16 v19, 0x10

    :goto_18
    or-int v18, v18, v19

    :cond_23
    :goto_19
    move/from16 v9, v18

    const v18, 0x5b6db6db

    and-int v0, v1, v18

    const v2, 0x12492492

    if-ne v0, v2, :cond_25

    and-int/lit8 v0, v9, 0x5b

    const/16 v2, 0x12

    if-ne v0, v2, :cond_25

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_1a

    .line 366
    :cond_24
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object v8, v5

    move-object v9, v6

    move-object v4, v7

    move-object/from16 v25, v10

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v10, p9

    move-object v7, v3

    goto/16 :goto_28

    .line 349
    :cond_25
    :goto_1a
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v12, 0x1

    const/16 v49, 0x0

    const/4 v2, 0x6

    if-eqz v0, :cond_2a

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_1b

    .line 2126
    :cond_26
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_27

    const v0, -0x1c00001

    and-int/2addr v1, v0

    :cond_27
    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_28

    const v0, -0xe000001

    and-int/2addr v1, v0

    :cond_28
    and-int/lit16 v0, v11, 0x200

    if-eqz v0, :cond_29

    const v0, -0x70000001

    and-int/2addr v1, v0

    :cond_29
    move-object/from16 v51, p5

    move-object/from16 v21, p9

    move-object/from16 v22, p11

    move-object/from16 v52, v3

    move-object/from16 v53, v5

    move-object/from16 v20, v6

    move-object/from16 v19, v7

    move/from16 v54, v9

    move-object v14, v10

    move/from16 v10, p4

    move-object/from16 v9, p10

    goto/16 :goto_25

    :cond_2a
    :goto_1b
    if-eqz v4, :cond_2b

    .line 340
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_1c

    :cond_2b
    move-object v0, v7

    :goto_1c
    if-eqz v8, :cond_2c

    const/4 v4, 0x1

    move/from16 v50, v4

    goto :goto_1d

    :cond_2c
    move/from16 v50, p4

    :goto_1d
    if-eqz v16, :cond_2d

    move-object/from16 v51, v49

    goto :goto_1e

    :cond_2d
    move-object/from16 v51, p5

    :goto_1e
    if-eqz v17, :cond_2e

    move-object/from16 v52, v49

    goto :goto_1f

    :cond_2e
    move-object/from16 v52, v3

    :goto_1f
    and-int/lit16 v3, v11, 0x80

    if-eqz v3, :cond_2f

    .line 344
    sget-object v3, Landroidx/compose/material3/FilterChipDefaults;->INSTANCE:Landroidx/compose/material3/FilterChipDefaults;

    invoke-virtual {v3, v10, v2}, Landroidx/compose/material3/FilterChipDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v3

    const v4, -0x1c00001

    and-int/2addr v1, v4

    move-object/from16 v53, v3

    goto :goto_20

    :cond_2f
    move-object/from16 v53, v5

    :goto_20
    and-int/lit16 v3, v11, 0x100

    if-eqz v3, :cond_30

    .line 345
    sget-object v16, Landroidx/compose/material3/FilterChipDefaults;->INSTANCE:Landroidx/compose/material3/FilterChipDefaults;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x180

    const/16 v44, 0xfff

    move-object/from16 v41, v10

    invoke-virtual/range {v16 .. v44}, Landroidx/compose/material3/FilterChipDefaults;->elevatedFilterChipColors-XqyqHi0(JJJJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/SelectableChipColors;

    move-result-object v3

    const v4, -0xe000001

    and-int/2addr v1, v4

    move/from16 v17, v1

    move-object/from16 v16, v3

    goto :goto_21

    :cond_30
    move/from16 v17, v1

    move-object/from16 v16, v6

    :goto_21
    and-int/lit16 v1, v11, 0x200

    if-eqz v1, :cond_31

    .line 346
    sget-object v1, Landroidx/compose/material3/FilterChipDefaults;->INSTANCE:Landroidx/compose/material3/FilterChipDefaults;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v18, 0x180000

    const/16 v19, 0x3f

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v10

    move/from16 v21, p12

    move/from16 v54, v9

    move/from16 v20, v48

    move/from16 v9, v18

    move-object v14, v10

    move/from16 v10, v19

    invoke-virtual/range {v1 .. v10}, Landroidx/compose/material3/FilterChipDefaults;->elevatedFilterChipElevation-aqJV_2Y(FFFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SelectableChipElevation;

    move-result-object v1

    const v2, -0x70000001

    and-int v2, v17, v2

    move/from16 v17, v2

    goto :goto_22

    :cond_31
    move/from16 v21, p12

    move/from16 v54, v9

    move-object v14, v10

    move/from16 v20, v48

    move-object/from16 v1, p9

    :goto_22
    if-eqz v20, :cond_32

    move-object/from16 v2, v49

    goto :goto_23

    :cond_32
    move-object/from16 v2, p10

    :goto_23
    if-eqz v21, :cond_34

    const v3, -0x1d58f75c

    .line 348
    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v14, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 2127
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 2128
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_33

    .line 348
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v3

    .line 2130
    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2126
    :cond_33
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v3, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v19, v0

    move-object/from16 v21, v1

    move-object v9, v2

    move-object/from16 v22, v3

    goto :goto_24

    :cond_34
    move-object/from16 v22, p11

    move-object/from16 v19, v0

    move-object/from16 v21, v1

    move-object v9, v2

    :goto_24
    move-object/from16 v20, v16

    move/from16 v1, v17

    move/from16 v10, v50

    :goto_25
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "androidx.compose.material3.ElevatedFilterChip (Chip.kt:335)"

    move/from16 v2, v54

    const v3, 0x7185902d

    .line 349
    invoke-static {v3, v1, v2, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_26

    :cond_35
    move/from16 v2, v54

    .line 355
    :goto_26
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v3, 0x6

    invoke-virtual {v0, v14, v3}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v0

    sget-object v3, Landroidx/compose/material3/tokens/FilterChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilterChipTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilterChipTokens;->getLabelTextFont()Landroidx/compose/material3/tokens/TypographyKeyTokens;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/compose/material3/TypographyKt;->fromToken(Landroidx/compose/material3/Typography;Landroidx/compose/material3/tokens/TypographyKeyTokens;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v5

    .line 361
    sget-object v0, Landroidx/compose/material3/FilterChipDefaults;->INSTANCE:Landroidx/compose/material3/FilterChipDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/FilterChipDefaults;->getHeight-D9Ej5fM()F

    move-result v16

    sget-object v23, Landroidx/compose/material3/ChipKt;->FilterChipPadding:Landroidx/compose/foundation/layout/PaddingValues;

    const v0, -0x2f223072

    .line 364
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "363@18367L31"

    invoke-static {v14, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v9, :cond_36

    move-object/from16 v0, v49

    goto :goto_27

    :cond_36
    shr-int/lit8 v0, v1, 0xc

    and-int/lit8 v0, v0, 0xe

    shl-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v0, v3

    shl-int/lit8 v3, v2, 0x6

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v0, v3

    invoke-virtual {v9, v10, v15, v14, v0}, Landroidx/compose/material3/SelectableChipBorder;->borderStroke$material3_release(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    :goto_27
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    if-eqz v0, :cond_37

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/BorderStroke;

    move-object/from16 v49, v0

    :cond_37
    const/4 v7, 0x0

    and-int/lit8 v0, v1, 0xe

    const/high16 v3, 0xc00000

    or-int/2addr v0, v3

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v0, v3

    shl-int/lit8 v3, v1, 0x3

    and-int/lit16 v4, v3, 0x380

    or-int/2addr v0, v4

    shr-int/lit8 v4, v1, 0x3

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v0, v4

    shl-int/lit8 v4, v1, 0x6

    and-int v6, v4, v45

    or-int/2addr v0, v6

    and-int v3, v3, v47

    or-int/2addr v0, v3

    const/high16 v3, 0xe000000

    and-int/2addr v3, v4

    or-int/2addr v0, v3

    const/high16 v3, 0x70000000

    and-int/2addr v3, v4

    or-int v17, v0, v3

    shr-int/lit8 v0, v1, 0x18

    and-int/lit8 v1, v0, 0xe

    or-int/lit16 v1, v1, 0x6c00

    and-int/lit8 v0, v0, 0x70

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0xc

    and-int v1, v1, v46

    or-int v18, v0, v1

    move/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move v3, v10

    move-object/from16 v4, p2

    move-object/from16 v6, v51

    move-object/from16 v8, v52

    move-object/from16 v24, v9

    move-object/from16 v9, v53

    move/from16 v50, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    move-object/from16 v12, v49

    move/from16 v13, v16

    move-object/from16 v25, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v22

    move-object/from16 v16, v25

    .line 349
    invoke-static/range {v0 .. v18}, Landroidx/compose/material3/ChipKt;->SelectableChip-u0RnIRE(ZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_38
    move-object/from16 v4, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    move-object/from16 v11, v24

    move/from16 v5, v50

    move-object/from16 v6, v51

    move-object/from16 v7, v52

    move-object/from16 v8, v53

    .line 366
    :goto_28
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_39

    goto :goto_29

    :cond_39
    new-instance v16, Landroidx/compose/material3/ChipKt$ElevatedFilterChip$2;

    move-object/from16 v0, v16

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v55, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material3/ChipKt$ElevatedFilterChip$2;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/material3/SelectableChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v55

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_29
    return-void
.end method

.method public static final ElevatedSuggestionChip(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/material3/ChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/ChipColors;",
            "Landroidx/compose/material3/ChipElevation;",
            "Landroidx/compose/material3/ChipBorder;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p11

    move/from16 v12, p12

    const-string v0, "onClick"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x637721bb

    move-object/from16 v1, p10

    .line 597
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    const-string v1, "C(ElevatedSuggestionChip)P(8,6,7,3,4,9,1,2)591@29894L5,592@29949L30,593@30036L33,595@30153L39,601@30329L10,602@30411L19,596@30198L540:Chip.kt#uh7d8r"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v13, 0xe

    if-nez v1, :cond_2

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v13

    goto :goto_1

    :cond_2
    move v1, v13

    :goto_1
    and-int/lit8 v2, v12, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v13, 0x70

    if-nez v2, :cond_5

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    :goto_3
    and-int/lit8 v2, v12, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v13, 0x380

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v3, p2

    :goto_6
    and-int/lit8 v4, v12, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v5, v13, 0x1c00

    if-nez v5, :cond_b

    move/from16 v5, p3

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x800

    goto :goto_7

    :cond_a
    const/16 v6, 0x400

    :goto_7
    or-int/2addr v1, v6

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v5, p3

    :goto_9
    and-int/lit8 v6, v12, 0x10

    const v32, 0xe000

    if-eqz v6, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_b

    :cond_c
    and-int v7, v13, v32

    if-nez v7, :cond_e

    move-object/from16 v7, p4

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const/16 v8, 0x4000

    goto :goto_a

    :cond_d
    const/16 v8, 0x2000

    :goto_a
    or-int/2addr v1, v8

    goto :goto_c

    :cond_e
    :goto_b
    move-object/from16 v7, p4

    :goto_c
    const/high16 v8, 0x70000

    and-int/2addr v8, v13

    if-nez v8, :cond_11

    and-int/lit8 v8, v12, 0x20

    if-nez v8, :cond_f

    move-object/from16 v8, p5

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const/high16 v9, 0x20000

    goto :goto_d

    :cond_f
    move-object/from16 v8, p5

    :cond_10
    const/high16 v9, 0x10000

    :goto_d
    or-int/2addr v1, v9

    goto :goto_e

    :cond_11
    move-object/from16 v8, p5

    :goto_e
    const/high16 v33, 0x380000

    and-int v9, v13, v33

    if-nez v9, :cond_14

    and-int/lit8 v9, v12, 0x40

    if-nez v9, :cond_12

    move-object/from16 v9, p6

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    const/high16 v10, 0x100000

    goto :goto_f

    :cond_12
    move-object/from16 v9, p6

    :cond_13
    const/high16 v10, 0x80000

    :goto_f
    or-int/2addr v1, v10

    goto :goto_10

    :cond_14
    move-object/from16 v9, p6

    :goto_10
    const/high16 v10, 0x1c00000

    and-int/2addr v10, v13

    if-nez v10, :cond_17

    and-int/lit16 v10, v12, 0x80

    if-nez v10, :cond_15

    move-object/from16 v10, p7

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16

    const/high16 v16, 0x800000

    goto :goto_11

    :cond_15
    move-object/from16 v10, p7

    :cond_16
    const/high16 v16, 0x400000

    :goto_11
    or-int v1, v1, v16

    goto :goto_12

    :cond_17
    move-object/from16 v10, p7

    :goto_12
    and-int/lit16 v0, v12, 0x100

    const/high16 v34, 0xe000000

    if-eqz v0, :cond_18

    const/high16 v16, 0x6000000

    or-int v1, v1, v16

    move-object/from16 v10, p8

    goto :goto_14

    :cond_18
    and-int v16, v13, v34

    move-object/from16 v10, p8

    if-nez v16, :cond_1a

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    const/high16 v16, 0x4000000

    goto :goto_13

    :cond_19
    const/high16 v16, 0x2000000

    :goto_13
    or-int v1, v1, v16

    :cond_1a
    :goto_14
    and-int/lit16 v10, v12, 0x200

    const/high16 v35, 0x70000000

    if-eqz v10, :cond_1b

    const/high16 v16, 0x30000000

    or-int v1, v1, v16

    move/from16 p10, v10

    move-object/from16 v10, p9

    goto :goto_16

    :cond_1b
    and-int v16, v13, v35

    move/from16 p10, v10

    move-object/from16 v10, p9

    if-nez v16, :cond_1d

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    const/high16 v16, 0x20000000

    goto :goto_15

    :cond_1c
    const/high16 v16, 0x10000000

    :goto_15
    or-int v1, v1, v16

    :cond_1d
    :goto_16
    const v16, 0x5b6db6db

    and-int v3, v1, v16

    const v5, 0x12492492

    if-ne v3, v5, :cond_1f

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_17

    .line 613
    :cond_1e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object/from16 v24, v11

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    goto/16 :goto_24

    .line 597
    :cond_1f
    :goto_17
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v3, v13, 0x1

    const v36, -0x1c00001

    const v5, -0x380001

    const v16, -0x70001

    const/16 v37, 0x0

    const/4 v10, 0x6

    if-eqz v3, :cond_24

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_18

    .line 2147
    :cond_20
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_21

    and-int v1, v1, v16

    :cond_21
    and-int/lit8 v0, v12, 0x40

    if-eqz v0, :cond_22

    and-int/2addr v1, v5

    :cond_22
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_23

    and-int v1, v1, v36

    :cond_23
    move-object/from16 v38, p2

    move-object/from16 v19, p7

    move-object/from16 v20, p9

    move-object/from16 v40, v7

    move-object/from16 v41, v8

    move v12, v10

    move/from16 v10, p3

    move-object/from16 v7, p8

    goto/16 :goto_21

    :cond_24
    :goto_18
    if-eqz v2, :cond_25

    .line 589
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object/from16 v38, v2

    goto :goto_19

    :cond_25
    move-object/from16 v38, p2

    :goto_19
    if-eqz v4, :cond_26

    const/4 v2, 0x1

    move/from16 v39, v2

    goto :goto_1a

    :cond_26
    move/from16 v39, p3

    :goto_1a
    if-eqz v6, :cond_27

    move-object/from16 v40, v37

    goto :goto_1b

    :cond_27
    move-object/from16 v40, v7

    :goto_1b
    and-int/lit8 v2, v12, 0x20

    if-eqz v2, :cond_28

    .line 592
    sget-object v2, Landroidx/compose/material3/SuggestionChipDefaults;->INSTANCE:Landroidx/compose/material3/SuggestionChipDefaults;

    invoke-virtual {v2, v11, v10}, Landroidx/compose/material3/SuggestionChipDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    and-int v1, v1, v16

    move-object/from16 v41, v2

    goto :goto_1c

    :cond_28
    move-object/from16 v41, v8

    :goto_1c
    and-int/lit8 v2, v12, 0x40

    if-eqz v2, :cond_29

    .line 593
    sget-object v16, Landroidx/compose/material3/SuggestionChipDefaults;->INSTANCE:Landroidx/compose/material3/SuggestionChipDefaults;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const/high16 v30, 0x180000

    const/16 v31, 0x3f

    move-object/from16 v29, v11

    invoke-virtual/range {v16 .. v31}, Landroidx/compose/material3/SuggestionChipDefaults;->elevatedSuggestionChipColors-5tl4gsc(JJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ChipColors;

    move-result-object v2

    and-int/2addr v1, v5

    move/from16 v17, v1

    move-object/from16 v16, v2

    goto :goto_1d

    :cond_29
    move/from16 v17, v1

    move-object/from16 v16, v9

    :goto_1d
    and-int/lit16 v1, v12, 0x80

    if-eqz v1, :cond_2a

    .line 594
    sget-object v1, Landroidx/compose/material3/SuggestionChipDefaults;->INSTANCE:Landroidx/compose/material3/SuggestionChipDefaults;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v9, 0x180000

    const/16 v18, 0x3f

    move-object v8, v11

    move/from16 v19, p10

    move v12, v10

    move/from16 v10, v18

    invoke-virtual/range {v1 .. v10}, Landroidx/compose/material3/SuggestionChipDefaults;->elevatedSuggestionChipElevation-aqJV_2Y(FFFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ChipElevation;

    move-result-object v1

    and-int v2, v17, v36

    move/from16 v17, v2

    goto :goto_1e

    :cond_2a
    move/from16 v19, p10

    move v12, v10

    move-object/from16 v1, p7

    :goto_1e
    if-eqz v0, :cond_2b

    move-object/from16 v0, v37

    goto :goto_1f

    :cond_2b
    move-object/from16 v0, p8

    :goto_1f
    if-eqz v19, :cond_2d

    const v2, -0x1d58f75c

    .line 596
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v11, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 2148
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 2149
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_2c

    .line 596
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v2

    .line 2151
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2147
    :cond_2c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v2, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v7, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    goto :goto_20

    :cond_2d
    move-object/from16 v20, p9

    move-object v7, v0

    move-object/from16 v19, v1

    :goto_20
    move-object/from16 v9, v16

    move/from16 v1, v17

    move/from16 v10, v39

    :goto_21
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, -0x1

    const-string v2, "androidx.compose.material3.ElevatedSuggestionChip (Chip.kt:585)"

    const v3, 0x637721bb

    .line 597
    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 602
    :cond_2e
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v0, v11, v12}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v0

    sget-object v2, Landroidx/compose/material3/tokens/SuggestionChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/SuggestionChipTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/SuggestionChipTokens;->getLabelTextFont()Landroidx/compose/material3/tokens/TypographyKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/TypographyKt;->fromToken(Landroidx/compose/material3/Typography;Landroidx/compose/material3/tokens/TypographyKeyTokens;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v4

    shr-int/lit8 v0, v1, 0x9

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v2, v1, 0xf

    and-int/lit8 v3, v2, 0x70

    or-int/2addr v3, v0

    .line 603
    invoke-virtual {v9, v10, v11, v3}, Landroidx/compose/material3/ChipColors;->labelColor$material3_release(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v5

    .line 608
    sget-object v3, Landroidx/compose/material3/SuggestionChipDefaults;->INSTANCE:Landroidx/compose/material3/SuggestionChipDefaults;

    invoke-virtual {v3}, Landroidx/compose/material3/SuggestionChipDefaults;->getHeight-D9Ej5fM()F

    move-result v16

    sget-object v21, Landroidx/compose/material3/ChipKt;->SuggestionChipPadding:Landroidx/compose/foundation/layout/PaddingValues;

    const v3, -0x56c298f4

    .line 611
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "610@30665L21"

    invoke-static {v11, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v7, :cond_2f

    move-object/from16 v0, v37

    goto :goto_22

    :cond_2f
    shr-int/lit8 v3, v1, 0x15

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v0, v3

    invoke-virtual {v7, v10, v11, v0}, Landroidx/compose/material3/ChipBorder;->borderStroke$material3_release(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    :goto_22
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    if-eqz v0, :cond_30

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/BorderStroke;

    move-object v12, v0

    goto :goto_23

    :cond_30
    move-object/from16 v12, v37

    :goto_23
    const/4 v8, 0x0

    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0xe

    const/high16 v3, 0xc00000

    or-int/2addr v0, v3

    shl-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v0, v3

    shr-int/lit8 v3, v1, 0x3

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v0, v3

    shl-int/lit8 v3, v1, 0x6

    and-int/lit16 v8, v3, 0x1c00

    or-int/2addr v0, v8

    and-int v3, v3, v33

    or-int/2addr v0, v3

    shl-int/lit8 v3, v1, 0x9

    and-int v8, v3, v34

    or-int/2addr v0, v8

    and-int v3, v3, v35

    or-int v17, v0, v3

    shr-int/lit8 v0, v1, 0x15

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v0, v0, 0xd80

    and-int v1, v2, v32

    or-int v18, v0, v1

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move v2, v10

    move-object/from16 v3, p1

    move-object/from16 v22, v7

    move-object/from16 v7, v40

    move-object/from16 v23, v9

    move-object/from16 v9, v41

    move/from16 v39, v10

    move-object/from16 v10, v23

    move-object/from16 v24, v11

    move-object/from16 v11, v19

    move/from16 v13, v16

    move-object/from16 v14, v21

    move-object/from16 v15, v20

    move-object/from16 v16, v24

    const/4 v8, 0x0

    .line 597
    invoke-static/range {v0 .. v18}, Landroidx/compose/material3/ChipKt;->Chip-nkUnTEs(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_31
    move-object/from16 v8, v19

    move-object/from16 v10, v20

    move-object/from16 v9, v22

    move-object/from16 v7, v23

    move-object/from16 v3, v38

    move/from16 v4, v39

    move-object/from16 v5, v40

    move-object/from16 v6, v41

    .line 613
    :goto_24
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-nez v13, :cond_32

    goto :goto_25

    :cond_32
    new-instance v14, Landroidx/compose/material3/ChipKt$ElevatedSuggestionChip$2;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/ChipKt$ElevatedSuggestionChip$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/material3/ChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_25
    return-void
.end method

.method public static final FilterChip(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/material3/SelectableChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V
    .locals 55
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SelectableChipColors;",
            "Landroidx/compose/material3/SelectableChipElevation;",
            "Landroidx/compose/material3/SelectableChipBorder;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move/from16 v12, p13

    move/from16 v11, p15

    const-string v0, "onClick"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x6ff11e49

    move-object/from16 v1, p12

    .line 269
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    const-string v1, "C(FilterChip)P(9,8,5,7,3,6,11,10,1,2)263@13479L5,264@13540L18,265@13621L21,266@13699L18,267@13769L39,274@13979L10,268@13813L556:Chip.kt#uh7d8r"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v12, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v12, 0xe

    if-nez v1, :cond_2

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v12

    goto :goto_1

    :cond_2
    move v1, v12

    :goto_1
    and-int/lit8 v4, v11, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v12, 0x70

    if-nez v4, :cond_5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, v11, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v12, 0x380

    if-nez v4, :cond_8

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    :cond_8
    :goto_5
    and-int/lit8 v4, v11, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v7, v12, 0x1c00

    if-nez v7, :cond_b

    move-object/from16 v7, p3

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_6

    :cond_a
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v1, v8

    goto :goto_8

    :cond_b
    :goto_7
    move-object/from16 v7, p3

    :goto_8
    and-int/lit8 v8, v11, 0x10

    const v45, 0xe000

    if-eqz v8, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_a

    :cond_c
    and-int v9, v12, v45

    if-nez v9, :cond_e

    move/from16 v9, p4

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_9

    :cond_d
    const/16 v16, 0x2000

    :goto_9
    or-int v1, v1, v16

    goto :goto_b

    :cond_e
    :goto_a
    move/from16 v9, p4

    :goto_b
    and-int/lit8 v16, v11, 0x20

    const/high16 v46, 0x70000

    if-eqz v16, :cond_f

    const/high16 v17, 0x30000

    or-int v1, v1, v17

    move-object/from16 v2, p5

    goto :goto_d

    :cond_f
    and-int v17, v12, v46

    move-object/from16 v2, p5

    if-nez v17, :cond_11

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v17, 0x10000

    :goto_c
    or-int v1, v1, v17

    :cond_11
    :goto_d
    and-int/lit8 v17, v11, 0x40

    const/high16 v47, 0x380000

    if-eqz v17, :cond_12

    const/high16 v18, 0x180000

    or-int v1, v1, v18

    move-object/from16 v3, p6

    goto :goto_f

    :cond_12
    and-int v18, v12, v47

    move-object/from16 v3, p6

    if-nez v18, :cond_14

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    const/high16 v19, 0x100000

    goto :goto_e

    :cond_13
    const/high16 v19, 0x80000

    :goto_e
    or-int v1, v1, v19

    :cond_14
    :goto_f
    const/high16 v19, 0x1c00000

    and-int v19, v12, v19

    if-nez v19, :cond_17

    and-int/lit16 v5, v11, 0x80

    if-nez v5, :cond_15

    move-object/from16 v5, p7

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    const/high16 v20, 0x800000

    goto :goto_10

    :cond_15
    move-object/from16 v5, p7

    :cond_16
    const/high16 v20, 0x400000

    :goto_10
    or-int v1, v1, v20

    goto :goto_11

    :cond_17
    move-object/from16 v5, p7

    :goto_11
    const/high16 v20, 0xe000000

    and-int v20, v12, v20

    if-nez v20, :cond_1a

    and-int/lit16 v6, v11, 0x100

    if-nez v6, :cond_18

    move-object/from16 v6, p8

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    const/high16 v21, 0x4000000

    goto :goto_12

    :cond_18
    move-object/from16 v6, p8

    :cond_19
    const/high16 v21, 0x2000000

    :goto_12
    or-int v1, v1, v21

    goto :goto_13

    :cond_1a
    move-object/from16 v6, p8

    :goto_13
    const/high16 v21, 0x70000000

    and-int v21, v12, v21

    if-nez v21, :cond_1d

    and-int/lit16 v0, v11, 0x200

    if-nez v0, :cond_1b

    move-object/from16 v0, p9

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1c

    const/high16 v21, 0x20000000

    goto :goto_14

    :cond_1b
    move-object/from16 v0, p9

    :cond_1c
    const/high16 v21, 0x10000000

    :goto_14
    or-int v1, v1, v21

    goto :goto_15

    :cond_1d
    move-object/from16 v0, p9

    :goto_15
    and-int/lit8 v21, p14, 0xe

    if-nez v21, :cond_20

    and-int/lit16 v0, v11, 0x400

    if-nez v0, :cond_1e

    move-object/from16 v0, p10

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1f

    const/16 v18, 0x4

    goto :goto_16

    :cond_1e
    move-object/from16 v0, p10

    :cond_1f
    const/16 v18, 0x2

    :goto_16
    or-int v18, p14, v18

    goto :goto_17

    :cond_20
    move-object/from16 v0, p10

    move/from16 v18, p14

    :goto_17
    and-int/lit16 v9, v11, 0x800

    if-eqz v9, :cond_21

    or-int/lit8 v18, v18, 0x30

    move/from16 p12, v9

    move/from16 v48, v18

    move-object/from16 v9, p11

    goto :goto_19

    :cond_21
    and-int/lit8 v21, p14, 0x70

    move/from16 p12, v9

    move-object/from16 v9, p11

    if-nez v21, :cond_23

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_22

    const/16 v19, 0x20

    goto :goto_18

    :cond_22
    const/16 v19, 0x10

    :goto_18
    or-int v18, v18, v19

    :cond_23
    move/from16 v48, v18

    :goto_19
    const v18, 0x5b6db6db

    and-int v0, v1, v18

    const v2, 0x12492492

    if-ne v0, v2, :cond_25

    and-int/lit8 v0, v48, 0x5b

    const/16 v2, 0x12

    if-ne v0, v2, :cond_25

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_1a

    .line 286
    :cond_24
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v11, p10

    move-object v8, v5

    move-object v4, v7

    move-object v12, v9

    move-object/from16 v24, v10

    move/from16 v5, p4

    move-object/from16 v10, p9

    move-object v7, v3

    move-object v9, v6

    move-object/from16 v6, p5

    goto/16 :goto_27

    .line 269
    :cond_25
    :goto_1a
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v12, 0x1

    const/16 v49, 0x0

    const/4 v2, 0x6

    if-eqz v0, :cond_2b

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_1b

    .line 2119
    :cond_26
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_27

    const v0, -0x1c00001

    and-int/2addr v1, v0

    :cond_27
    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_28

    const v0, -0xe000001

    and-int/2addr v1, v0

    :cond_28
    and-int/lit16 v0, v11, 0x200

    if-eqz v0, :cond_29

    const v0, -0x70000001

    and-int/2addr v1, v0

    :cond_29
    and-int/lit16 v0, v11, 0x400

    if-eqz v0, :cond_2a

    and-int/lit8 v48, v48, -0xf

    :cond_2a
    move-object/from16 v51, p5

    move-object/from16 v20, p9

    move-object/from16 v8, p10

    move-object/from16 v52, v3

    move-object/from16 v53, v5

    move-object/from16 v30, v6

    move-object/from16 v19, v7

    move-object/from16 v21, v9

    move/from16 v0, v48

    move/from16 v9, p4

    goto/16 :goto_25

    :cond_2b
    :goto_1b
    if-eqz v4, :cond_2c

    .line 260
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_1c

    :cond_2c
    move-object v0, v7

    :goto_1c
    if-eqz v8, :cond_2d

    const/4 v4, 0x1

    move/from16 v50, v4

    goto :goto_1d

    :cond_2d
    move/from16 v50, p4

    :goto_1d
    if-eqz v16, :cond_2e

    move-object/from16 v51, v49

    goto :goto_1e

    :cond_2e
    move-object/from16 v51, p5

    :goto_1e
    if-eqz v17, :cond_2f

    move-object/from16 v52, v49

    goto :goto_1f

    :cond_2f
    move-object/from16 v52, v3

    :goto_1f
    and-int/lit16 v3, v11, 0x80

    if-eqz v3, :cond_30

    .line 264
    sget-object v3, Landroidx/compose/material3/FilterChipDefaults;->INSTANCE:Landroidx/compose/material3/FilterChipDefaults;

    invoke-virtual {v3, v10, v2}, Landroidx/compose/material3/FilterChipDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v3

    const v4, -0x1c00001

    and-int/2addr v1, v4

    move-object/from16 v53, v3

    goto :goto_20

    :cond_30
    move-object/from16 v53, v5

    :goto_20
    and-int/lit16 v3, v11, 0x100

    if-eqz v3, :cond_31

    .line 265
    sget-object v16, Landroidx/compose/material3/FilterChipDefaults;->INSTANCE:Landroidx/compose/material3/FilterChipDefaults;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x180

    const/16 v44, 0xfff

    move-object/from16 v41, v10

    invoke-virtual/range {v16 .. v44}, Landroidx/compose/material3/FilterChipDefaults;->filterChipColors-XqyqHi0(JJJJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/SelectableChipColors;

    move-result-object v3

    const v4, -0xe000001

    and-int/2addr v1, v4

    move/from16 v16, v1

    move-object/from16 v30, v3

    goto :goto_21

    :cond_31
    move/from16 v16, v1

    move-object/from16 v30, v6

    :goto_21
    and-int/lit16 v1, v11, 0x200

    if-eqz v1, :cond_32

    .line 266
    sget-object v1, Landroidx/compose/material3/FilterChipDefaults;->INSTANCE:Landroidx/compose/material3/FilterChipDefaults;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v17, 0x180000

    const/16 v18, 0x3f

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v10

    move/from16 v31, p12

    move/from16 v9, v17

    move-object/from16 p3, v10

    move/from16 v10, v18

    invoke-virtual/range {v1 .. v10}, Landroidx/compose/material3/FilterChipDefaults;->filterChipElevation-aqJV_2Y(FFFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SelectableChipElevation;

    move-result-object v1

    const v2, -0x70000001

    and-int v2, v16, v2

    goto :goto_22

    :cond_32
    move/from16 v31, p12

    move-object/from16 p3, v10

    move-object/from16 v1, p9

    move/from16 v2, v16

    :goto_22
    and-int/lit16 v3, v11, 0x400

    if-eqz v3, :cond_33

    .line 267
    sget-object v16, Landroidx/compose/material3/FilterChipDefaults;->INSTANCE:Landroidx/compose/material3/FilterChipDefaults;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/high16 v28, 0x180000

    const/16 v29, 0x3f

    move-object/from16 v27, p3

    invoke-virtual/range {v16 .. v29}, Landroidx/compose/material3/FilterChipDefaults;->filterChipBorder-gHcDVlo(JJJJFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SelectableChipBorder;

    move-result-object v3

    and-int/lit8 v48, v48, -0xf

    goto :goto_23

    :cond_33
    move-object/from16 v3, p10

    :goto_23
    if-eqz v31, :cond_35

    const v4, -0x1d58f75c

    move-object/from16 v10, p3

    .line 268
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v10, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 2120
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 2121
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_34

    .line 268
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v4

    .line 2123
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2119
    :cond_34
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v4, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move v1, v2

    move-object v8, v3

    move-object/from16 v21, v4

    goto :goto_24

    :cond_35
    move-object/from16 v10, p3

    move-object/from16 v21, p11

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move v1, v2

    move-object v8, v3

    :goto_24
    move/from16 v0, v48

    move/from16 v9, v50

    :goto_25
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v2, "androidx.compose.material3.FilterChip (Chip.kt:255)"

    const v3, -0x6ff11e49

    .line 269
    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 275
    :cond_36
    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v3, 0x6

    invoke-virtual {v2, v10, v3}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v2

    sget-object v3, Landroidx/compose/material3/tokens/FilterChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilterChipTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilterChipTokens;->getLabelTextFont()Landroidx/compose/material3/tokens/TypographyKeyTokens;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/material3/TypographyKt;->fromToken(Landroidx/compose/material3/Typography;Landroidx/compose/material3/tokens/TypographyKeyTokens;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v5

    .line 281
    sget-object v2, Landroidx/compose/material3/FilterChipDefaults;->INSTANCE:Landroidx/compose/material3/FilterChipDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/FilterChipDefaults;->getHeight-D9Ej5fM()F

    move-result v16

    sget-object v22, Landroidx/compose/material3/ChipKt;->FilterChipPadding:Landroidx/compose/foundation/layout/PaddingValues;

    const v2, 0x10760aa7

    .line 284
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "283@14286L31"

    invoke-static {v10, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v8, :cond_37

    move-object/from16 v2, v49

    goto :goto_26

    :cond_37
    shr-int/lit8 v2, v1, 0xc

    and-int/lit8 v2, v2, 0xe

    shl-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    shl-int/lit8 v3, v0, 0x6

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v2, v3

    invoke-virtual {v8, v9, v15, v10, v2}, Landroidx/compose/material3/SelectableChipBorder;->borderStroke$material3_release(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    :goto_26
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    if-eqz v2, :cond_38

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/BorderStroke;

    move-object/from16 v49, v2

    :cond_38
    const/4 v7, 0x0

    and-int/lit8 v2, v1, 0xe

    const/high16 v3, 0xc00000

    or-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x3

    and-int/lit16 v4, v3, 0x380

    or-int/2addr v2, v4

    shr-int/lit8 v4, v1, 0x3

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v2, v4

    shl-int/lit8 v4, v1, 0x6

    and-int v6, v4, v45

    or-int/2addr v2, v6

    and-int v3, v3, v47

    or-int/2addr v2, v3

    const/high16 v3, 0xe000000

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    const/high16 v3, 0x70000000

    and-int/2addr v3, v4

    or-int v17, v2, v3

    shr-int/lit8 v1, v1, 0x18

    and-int/lit8 v2, v1, 0xe

    or-int/lit16 v2, v2, 0x6c00

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0xc

    and-int v0, v0, v46

    or-int v18, v1, v0

    move/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move v3, v9

    move-object/from16 v4, p2

    move-object/from16 v6, v51

    move-object/from16 v23, v8

    move-object/from16 v8, v52

    move/from16 v50, v9

    move-object/from16 v9, v53

    move-object/from16 v24, v10

    move-object/from16 v10, v30

    move-object/from16 v11, v20

    move-object/from16 v12, v49

    move/from16 v13, v16

    move-object/from16 v14, v22

    move-object/from16 v15, v21

    move-object/from16 v16, v24

    .line 269
    invoke-static/range {v0 .. v18}, Landroidx/compose/material3/ChipKt;->SelectableChip-u0RnIRE(ZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_39
    move-object/from16 v4, v19

    move-object/from16 v10, v20

    move-object/from16 v12, v21

    move-object/from16 v11, v23

    move-object/from16 v9, v30

    move/from16 v5, v50

    move-object/from16 v6, v51

    move-object/from16 v7, v52

    move-object/from16 v8, v53

    .line 286
    :goto_27
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_3a

    goto :goto_28

    :cond_3a
    new-instance v16, Landroidx/compose/material3/ChipKt$FilterChip$2;

    move-object/from16 v0, v16

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v54, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material3/ChipKt$FilterChip$2;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/material3/SelectableChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v54

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_28
    return-void
.end method

.method public static final InputChip(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/material3/SelectableChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SelectableChipColors;",
            "Landroidx/compose/material3/SelectableChipElevation;",
            "Landroidx/compose/material3/SelectableChipBorder;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move/from16 v15, p0

    move-object/from16 v13, p1

    move-object/from16 v12, p2

    move/from16 v11, p14

    move/from16 v10, p15

    move/from16 v9, p16

    const-string v0, "onClick"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x5f4f4473

    move-object/from16 v1, p13

    .line 434
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    const-string v1, "C(InputChip)P(10,9,6,8,4,7!1,12,11,2,3)428@21836L5,429@21896L17,430@21975L20,431@22051L17,432@22120L39,459@23091L10,453@22901L787:Chip.kt#uh7d8r"

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v9, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v11, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v11, 0xe

    if-nez v1, :cond_2

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v11

    goto :goto_1

    :cond_2
    move v1, v11

    :goto_1
    and-int/lit8 v4, v9, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v11, 0x70

    if-nez v4, :cond_5

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, v9, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v11, 0x380

    if-nez v4, :cond_8

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    :cond_8
    :goto_5
    and-int/lit8 v4, v9, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v2, v11, 0x1c00

    if-nez v2, :cond_b

    move-object/from16 v2, p3

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/16 v16, 0x800

    goto :goto_6

    :cond_a
    const/16 v16, 0x400

    :goto_6
    or-int v1, v1, v16

    goto :goto_8

    :cond_b
    :goto_7
    move-object/from16 v2, p3

    :goto_8
    and-int/lit8 v16, v9, 0x10

    const v47, 0xe000

    if-eqz v16, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v3, p4

    goto :goto_a

    :cond_c
    and-int v17, v11, v47

    move/from16 v3, p4

    if-nez v17, :cond_e

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v18

    if-eqz v18, :cond_d

    const/16 v18, 0x4000

    goto :goto_9

    :cond_d
    const/16 v18, 0x2000

    :goto_9
    or-int v1, v1, v18

    :cond_e
    :goto_a
    and-int/lit8 v18, v9, 0x20

    if-eqz v18, :cond_f

    const/high16 v19, 0x30000

    or-int v1, v1, v19

    move-object/from16 v5, p5

    goto :goto_c

    :cond_f
    const/high16 v19, 0x70000

    and-int v19, v11, v19

    move-object/from16 v5, p5

    if-nez v19, :cond_11

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    const/high16 v20, 0x20000

    goto :goto_b

    :cond_10
    const/high16 v20, 0x10000

    :goto_b
    or-int v1, v1, v20

    :cond_11
    :goto_c
    and-int/lit8 v20, v9, 0x40

    if-eqz v20, :cond_12

    const/high16 v21, 0x180000

    or-int v1, v1, v21

    move-object/from16 v6, p6

    goto :goto_e

    :cond_12
    const/high16 v21, 0x380000

    and-int v21, v11, v21

    move-object/from16 v6, p6

    if-nez v21, :cond_14

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    const/high16 v22, 0x100000

    goto :goto_d

    :cond_13
    const/high16 v22, 0x80000

    :goto_d
    or-int v1, v1, v22

    :cond_14
    :goto_e
    and-int/lit16 v7, v9, 0x80

    if-eqz v7, :cond_15

    const/high16 v23, 0xc00000

    or-int v1, v1, v23

    move-object/from16 v14, p7

    goto :goto_10

    :cond_15
    const/high16 v23, 0x1c00000

    and-int v23, v11, v23

    move-object/from16 v14, p7

    if-nez v23, :cond_17

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_16

    const/high16 v24, 0x800000

    goto :goto_f

    :cond_16
    const/high16 v24, 0x400000

    :goto_f
    or-int v1, v1, v24

    :cond_17
    :goto_10
    const/high16 v24, 0xe000000

    and-int v24, v11, v24

    if-nez v24, :cond_1a

    and-int/lit16 v0, v9, 0x100

    if-nez v0, :cond_18

    move-object/from16 v0, p8

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_19

    const/high16 v24, 0x4000000

    goto :goto_11

    :cond_18
    move-object/from16 v0, p8

    :cond_19
    const/high16 v24, 0x2000000

    :goto_11
    or-int v1, v1, v24

    goto :goto_12

    :cond_1a
    move-object/from16 v0, p8

    :goto_12
    const/high16 v24, 0x70000000

    and-int v24, v11, v24

    if-nez v24, :cond_1d

    and-int/lit16 v0, v9, 0x200

    if-nez v0, :cond_1b

    move-object/from16 v0, p9

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1c

    const/high16 v24, 0x20000000

    goto :goto_13

    :cond_1b
    move-object/from16 v0, p9

    :cond_1c
    const/high16 v24, 0x10000000

    :goto_13
    or-int v1, v1, v24

    goto :goto_14

    :cond_1d
    move-object/from16 v0, p9

    :goto_14
    and-int/lit8 v24, v10, 0xe

    if-nez v24, :cond_20

    and-int/lit16 v0, v9, 0x400

    if-nez v0, :cond_1e

    move-object/from16 v0, p10

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1f

    const/16 v17, 0x4

    goto :goto_15

    :cond_1e
    move-object/from16 v0, p10

    :cond_1f
    const/16 v17, 0x2

    :goto_15
    or-int v17, v10, v17

    goto :goto_16

    :cond_20
    move-object/from16 v0, p10

    move/from16 v17, v10

    :goto_16
    and-int/lit8 v24, v10, 0x70

    if-nez v24, :cond_23

    and-int/lit16 v0, v9, 0x800

    if-nez v0, :cond_21

    move-object/from16 v0, p11

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_22

    const/16 v19, 0x20

    goto :goto_17

    :cond_21
    move-object/from16 v0, p11

    :cond_22
    const/16 v19, 0x10

    :goto_17
    or-int v17, v17, v19

    goto :goto_18

    :cond_23
    move-object/from16 v0, p11

    :goto_18
    move/from16 v0, v17

    and-int/lit16 v2, v9, 0x1000

    if-eqz v2, :cond_24

    or-int/lit16 v0, v0, 0x180

    goto :goto_1a

    :cond_24
    and-int/lit16 v3, v10, 0x380

    if-nez v3, :cond_26

    move-object/from16 v3, p12

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_25

    const/16 v22, 0x100

    goto :goto_19

    :cond_25
    const/16 v22, 0x80

    :goto_19
    or-int v0, v0, v22

    goto :goto_1b

    :cond_26
    :goto_1a
    move-object/from16 v3, p12

    :goto_1b
    const v17, 0x5b6db6db

    and-int v3, v1, v17

    const v5, 0x12492492

    if-ne v3, v5, :cond_28

    and-int/lit16 v3, v0, 0x2db

    const/16 v5, 0x92

    if-ne v3, v5, :cond_28

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_1c

    .line 476
    :cond_27
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object v7, v6

    move-object/from16 v30, v8

    move-object v8, v14

    move-object/from16 v6, p5

    goto/16 :goto_2d

    .line 434
    :cond_28
    :goto_1c
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_2e

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_1d

    .line 2133
    :cond_29
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v2, v9, 0x100

    if-eqz v2, :cond_2a

    const v2, -0xe000001

    and-int/2addr v1, v2

    :cond_2a
    and-int/lit16 v2, v9, 0x200

    if-eqz v2, :cond_2b

    const v2, -0x70000001

    and-int/2addr v1, v2

    :cond_2b
    and-int/lit16 v2, v9, 0x400

    if-eqz v2, :cond_2c

    and-int/lit8 v0, v0, -0xf

    :cond_2c
    and-int/lit16 v2, v9, 0x800

    if-eqz v2, :cond_2d

    and-int/lit8 v0, v0, -0x71

    :cond_2d
    move-object/from16 v19, p3

    move/from16 v7, p4

    move-object/from16 v48, p5

    move-object/from16 v21, p8

    move-object/from16 v22, p9

    move-object/from16 v23, p10

    move-object/from16 v5, p11

    move-object/from16 v24, p12

    move-object/from16 v20, v14

    goto/16 :goto_26

    :cond_2e
    :goto_1d
    if-eqz v4, :cond_2f

    .line 424
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    goto :goto_1e

    :cond_2f
    move-object/from16 v3, p3

    :goto_1e
    if-eqz v16, :cond_30

    const/4 v4, 0x1

    goto :goto_1f

    :cond_30
    move/from16 v4, p4

    :goto_1f
    if-eqz v18, :cond_31

    const/16 v48, 0x0

    goto :goto_20

    :cond_31
    move-object/from16 v48, p5

    :goto_20
    if-eqz v20, :cond_32

    const/4 v6, 0x0

    :cond_32
    if-eqz v7, :cond_33

    const/4 v14, 0x0

    :cond_33
    and-int/lit16 v7, v9, 0x100

    if-eqz v7, :cond_34

    .line 429
    sget-object v7, Landroidx/compose/material3/InputChipDefaults;->INSTANCE:Landroidx/compose/material3/InputChipDefaults;

    const/4 v5, 0x6

    invoke-virtual {v7, v8, v5}, Landroidx/compose/material3/InputChipDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v7

    const v5, -0xe000001

    and-int/2addr v1, v5

    goto :goto_21

    :cond_34
    move-object/from16 v7, p8

    :goto_21
    and-int/lit16 v5, v9, 0x200

    if-eqz v5, :cond_35

    .line 430
    sget-object v16, Landroidx/compose/material3/InputChipDefaults;->INSTANCE:Landroidx/compose/material3/InputChipDefaults;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const/16 v44, 0x0

    const/16 v45, 0xc00

    const/16 v46, 0x1fff

    move-object/from16 v43, v8

    invoke-virtual/range {v16 .. v46}, Landroidx/compose/material3/InputChipDefaults;->inputChipColors-kwJvTHA(JJJJJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/SelectableChipColors;

    move-result-object v5

    const v16, -0x70000001

    and-int v1, v1, v16

    goto :goto_22

    :cond_35
    move-object/from16 v5, p9

    :goto_22
    move/from16 p3, v1

    and-int/lit16 v1, v9, 0x400

    if-eqz v1, :cond_36

    .line 431
    sget-object v16, Landroidx/compose/material3/InputChipDefaults;->INSTANCE:Landroidx/compose/material3/InputChipDefaults;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v24, 0x180000

    const/16 v25, 0x3f

    move-object/from16 v23, v8

    invoke-virtual/range {v16 .. v25}, Landroidx/compose/material3/InputChipDefaults;->inputChipElevation-aqJV_2Y(FFFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SelectableChipElevation;

    move-result-object v1

    and-int/lit8 v0, v0, -0xf

    goto :goto_23

    :cond_36
    move-object/from16 v1, p10

    :goto_23
    move-object/from16 p4, v1

    and-int/lit16 v1, v9, 0x800

    if-eqz v1, :cond_37

    .line 432
    sget-object v16, Landroidx/compose/material3/InputChipDefaults;->INSTANCE:Landroidx/compose/material3/InputChipDefaults;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/high16 v28, 0x180000

    const/16 v29, 0x3f

    move-object/from16 v27, v8

    invoke-virtual/range {v16 .. v29}, Landroidx/compose/material3/InputChipDefaults;->inputChipBorder-gHcDVlo(JJJJFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SelectableChipBorder;

    move-result-object v1

    and-int/lit8 v0, v0, -0x71

    goto :goto_24

    :cond_37
    move-object/from16 v1, p11

    :goto_24
    if-eqz v2, :cond_39

    const v2, -0x1d58f75c

    .line 433
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v8, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 2134
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 2135
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p5, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_38

    .line 433
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v2

    .line 2137
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2133
    :cond_38
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v0, v2

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v23, p4

    move-object/from16 v24, v0

    move-object/from16 v19, v3

    move-object/from16 v22, v5

    move-object/from16 v21, v7

    move-object/from16 v20, v14

    move/from16 v0, p5

    goto :goto_25

    :cond_39
    move/from16 p5, v0

    move-object/from16 v23, p4

    move-object/from16 v24, p12

    move-object/from16 v19, v3

    move-object/from16 v22, v5

    move-object/from16 v21, v7

    move-object/from16 v20, v14

    :goto_25
    move-object v5, v1

    move v7, v4

    move/from16 v1, p3

    :goto_26
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string v2, "androidx.compose.material3.InputChip (Chip.kt:419)"

    const v3, -0x5f4f4473

    .line 434
    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3a
    const v2, -0x51c71708

    .line 437
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "439@22510L9"

    invoke-static {v8, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-eqz v6, :cond_3c

    if-eqz v7, :cond_3b

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_27

    :cond_3b
    const v2, 0x3ec28f5c    # 0.38f

    .line 440
    :goto_27
    sget-object v3, Landroidx/compose/material3/tokens/InputChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/InputChipTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/InputChipTokens;->getAvatarShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v3, v8, v4}, Landroidx/compose/material3/ShapesKt;->toShape(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v3

    .line 441
    new-instance v14, Landroidx/compose/material3/ChipKt$InputChip$2;

    invoke-direct {v14, v2, v3, v6, v1}, Landroidx/compose/material3/ChipKt$InputChip$2;-><init>(FLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;I)V

    const v2, -0x15009343

    const/4 v3, 0x1

    invoke-static {v8, v2, v3, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object/from16 v16, v2

    goto :goto_28

    :cond_3c
    const/4 v3, 0x1

    const/4 v4, 0x6

    const/16 v16, 0x0

    :goto_28
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 460
    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v2, v8, v4}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v2

    sget-object v4, Landroidx/compose/material3/tokens/InputChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/InputChipTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/InputChipTokens;->getLabelTextFont()Landroidx/compose/material3/tokens/TypographyKeyTokens;

    move-result-object v4

    invoke-static {v2, v4}, Landroidx/compose/material3/TypographyKt;->fromToken(Landroidx/compose/material3/Typography;Landroidx/compose/material3/tokens/TypographyKeyTokens;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v25

    const v2, -0x51c7131c

    .line 467
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "466@23351L31"

    invoke-static {v8, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v5, :cond_3d

    const/4 v2, 0x0

    goto :goto_29

    :cond_3d
    shr-int/lit8 v2, v1, 0xc

    and-int/lit8 v2, v2, 0xe

    shl-int/lit8 v4, v1, 0x3

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v2, v4

    shl-int/lit8 v4, v0, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v2, v4

    invoke-virtual {v5, v7, v15, v8, v2}, Landroidx/compose/material3/SelectableChipBorder;->borderStroke$material3_release(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    :goto_29
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    if-eqz v2, :cond_3e

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/BorderStroke;

    move-object/from16 v26, v2

    goto :goto_2a

    :cond_3e
    const/16 v26, 0x0

    .line 468
    :goto_2a
    sget-object v2, Landroidx/compose/material3/InputChipDefaults;->INSTANCE:Landroidx/compose/material3/InputChipDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/InputChipDefaults;->getHeight-D9Ej5fM()F

    move-result v27

    const/4 v2, 0x0

    if-eqz v16, :cond_3f

    move v4, v3

    goto :goto_2b

    :cond_3f
    move v4, v2

    :goto_2b
    if-eqz v48, :cond_40

    move v14, v3

    goto :goto_2c

    :cond_40
    move v14, v2

    :goto_2c
    if-eqz v20, :cond_41

    move v2, v3

    .line 469
    :cond_41
    invoke-static {v4, v14, v2}, Landroidx/compose/material3/ChipKt;->inputChipPadding(ZZZ)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v14

    and-int/lit8 v2, v1, 0xe

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x3

    and-int/lit16 v4, v3, 0x380

    or-int/2addr v2, v4

    shr-int/lit8 v4, v1, 0x3

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v2, v4

    shl-int/lit8 v4, v1, 0x6

    and-int v4, v4, v47

    or-int/2addr v2, v4

    const/high16 v4, 0x380000

    and-int/2addr v4, v3

    or-int/2addr v2, v4

    const/high16 v4, 0xe000000

    and-int/2addr v4, v3

    or-int/2addr v2, v4

    const/high16 v4, 0x70000000

    and-int/2addr v3, v4

    or-int v17, v2, v3

    shr-int/lit8 v1, v1, 0x1b

    and-int/lit8 v1, v1, 0xe

    or-int/lit16 v1, v1, 0xc00

    shl-int/lit8 v2, v0, 0x3

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x9

    const/high16 v2, 0x70000

    and-int/2addr v0, v2

    or-int v18, v1, v0

    move/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move v3, v7

    move-object/from16 v4, p2

    move-object/from16 v28, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v6

    move-object/from16 v6, v48

    move/from16 v29, v7

    move-object/from16 v7, v16

    move-object/from16 v30, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v12, v26

    move/from16 v13, v27

    move-object/from16 v15, v24

    move-object/from16 v16, v30

    .line 454
    invoke-static/range {v0 .. v18}, Landroidx/compose/material3/ChipKt;->SelectableChip-u0RnIRE(ZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_42
    move-object/from16 v4, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v13, v24

    move-object/from16 v7, v25

    move-object/from16 v12, v28

    move/from16 v5, v29

    move-object/from16 v6, v48

    .line 476
    :goto_2d
    invoke-interface/range {v30 .. v30}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_43

    goto :goto_2e

    :cond_43
    new-instance v17, Landroidx/compose/material3/ChipKt$InputChip$3;

    move-object/from16 v0, v17

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v14, p14

    move-object/from16 v49, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material3/ChipKt$InputChip$3;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/material3/SelectableChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v49

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_2e
    return-void
.end method

.method private static final SelectableChip-u0RnIRE(ZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SelectableChipColors;",
            "Landroidx/compose/material3/SelectableChipElevation;",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v13, p3

    move-object/from16 v12, p10

    move-object/from16 v11, p11

    move-object/from16 v10, p15

    move/from16 v9, p17

    move/from16 v8, p18

    const v0, 0x18048c8c

    move-object/from16 v1, p16

    .line 1364
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    const-string v1, "C(SelectableChip)P(13,10,11,4,6,7,8!1,15,14,2,3!1,9:c#ui.unit.Dp,12)1371@68165L33,1365@67963L1080:Chip.kt#uh7d8r"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v9, 0xe

    const/4 v3, 0x2

    if-nez v1, :cond_1

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    or-int/2addr v1, v9

    goto :goto_1

    :cond_1
    move v1, v9

    :goto_1
    and-int/lit8 v4, v9, 0x70

    const/16 v5, 0x20

    if-nez v4, :cond_3

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_3
    and-int/lit16 v4, v9, 0x380

    const/16 v16, 0x100

    const/16 v17, 0x80

    if-nez v4, :cond_5

    move-object/from16 v4, p2

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    move/from16 v18, v16

    goto :goto_3

    :cond_4
    move/from16 v18, v17

    :goto_3
    or-int v1, v1, v18

    goto :goto_4

    :cond_5
    move-object/from16 v4, p2

    :goto_4
    and-int/lit16 v2, v9, 0x1c00

    const/16 v18, 0x800

    const/16 v19, 0x400

    if-nez v2, :cond_7

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_6

    move/from16 v2, v18

    goto :goto_5

    :cond_6
    move/from16 v2, v19

    :goto_5
    or-int/2addr v1, v2

    :cond_7
    const v20, 0xe000

    and-int v2, v9, v20

    const/16 v21, 0x4000

    const/16 v22, 0x2000

    if-nez v2, :cond_9

    move-object/from16 v2, p4

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    move/from16 v23, v21

    goto :goto_6

    :cond_8
    move/from16 v23, v22

    :goto_6
    or-int v1, v1, v23

    goto :goto_7

    :cond_9
    move-object/from16 v2, p4

    :goto_7
    const/high16 v23, 0x70000

    and-int v24, v9, v23

    const/high16 v25, 0x20000

    const/high16 v26, 0x10000

    move-object/from16 v0, p5

    if-nez v24, :cond_b

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    move/from16 v27, v25

    goto :goto_8

    :cond_a
    move/from16 v27, v26

    :goto_8
    or-int v1, v1, v27

    :cond_b
    const/high16 v27, 0x380000

    and-int v27, v9, v27

    move-object/from16 v6, p6

    if-nez v27, :cond_d

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c

    const/high16 v28, 0x100000

    goto :goto_9

    :cond_c
    const/high16 v28, 0x80000

    :goto_9
    or-int v1, v1, v28

    :cond_d
    const/high16 v28, 0x1c00000

    and-int v28, v9, v28

    move-object/from16 v6, p7

    if-nez v28, :cond_f

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_e

    const/high16 v28, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v28, 0x400000

    :goto_a
    or-int v1, v1, v28

    :cond_f
    const/high16 v28, 0xe000000

    and-int v28, v9, v28

    move-object/from16 v6, p8

    if-nez v28, :cond_11

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_10

    const/high16 v28, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v28, 0x2000000

    :goto_b
    or-int v1, v1, v28

    :cond_11
    const/high16 v28, 0x70000000

    and-int v28, v9, v28

    move-object/from16 v9, p9

    if-nez v28, :cond_13

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_12

    const/high16 v28, 0x20000000

    goto :goto_c

    :cond_12
    const/high16 v28, 0x10000000

    :goto_c
    or-int v1, v1, v28

    :cond_13
    and-int/lit8 v28, v8, 0xe

    if-nez v28, :cond_15

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_14

    const/4 v3, 0x4

    :cond_14
    or-int/2addr v3, v8

    goto :goto_d

    :cond_15
    move v3, v8

    :goto_d
    and-int/lit8 v28, v8, 0x70

    if-nez v28, :cond_17

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    goto :goto_e

    :cond_16
    const/16 v5, 0x10

    :goto_e
    or-int/2addr v3, v5

    :cond_17
    and-int/lit16 v5, v8, 0x380

    if-nez v5, :cond_19

    move-object/from16 v5, p12

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_18

    goto :goto_f

    :cond_18
    move/from16 v16, v17

    :goto_f
    or-int v3, v3, v16

    goto :goto_10

    :cond_19
    move-object/from16 v5, p12

    :goto_10
    and-int/lit16 v0, v8, 0x1c00

    if-nez v0, :cond_1b

    move/from16 v0, p13

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_1a

    goto :goto_11

    :cond_1a
    move/from16 v18, v19

    :goto_11
    or-int v3, v3, v18

    goto :goto_12

    :cond_1b
    move/from16 v0, p13

    :goto_12
    and-int v16, v8, v20

    move-object/from16 v9, p14

    if-nez v16, :cond_1d

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    goto :goto_13

    :cond_1c
    move/from16 v21, v22

    :goto_13
    or-int v3, v3, v21

    :cond_1d
    and-int v16, v8, v23

    if-nez v16, :cond_1f

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e

    goto :goto_14

    :cond_1e
    move/from16 v25, v26

    :goto_14
    or-int v3, v3, v25

    :cond_1f
    const v16, 0x5b6db6db

    and-int v0, v1, v16

    const v2, 0x12492492

    if-ne v0, v2, :cond_21

    const v0, 0x5b6db

    and-int/2addr v0, v3

    const v2, 0x12492

    if-ne v0, v2, :cond_21

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_15

    .line 1393
    :cond_20
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v18, v7

    goto/16 :goto_1a

    .line 1364
    :cond_21
    :goto_15
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "androidx.compose.material3.SelectableChip (Chip.kt:1346)"

    const v2, 0x18048c8c

    invoke-static {v2, v1, v3, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 1369
    :cond_22
    sget-object v0, Landroidx/compose/material3/ChipKt$SelectableChip$1;->INSTANCE:Landroidx/compose/material3/ChipKt$SelectableChip$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v15, v4, v0, v2, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    shr-int/lit8 v0, v1, 0x9

    and-int/lit8 v0, v0, 0xe

    shl-int/lit8 v2, v1, 0x3

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v2, v0

    shl-int/lit8 v5, v3, 0x6

    and-int/lit16 v5, v5, 0x380

    or-int/2addr v2, v5

    .line 1372
    invoke-virtual {v12, v13, v14, v7, v2}, Landroidx/compose/material3/SelectableChipColors;->containerColor$material3_release(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    const v2, 0x3dca30cd

    .line 1373
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "1372@68242L42"

    invoke-static {v7, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v11, :cond_23

    const/4 v2, 0x0

    goto :goto_16

    :cond_23
    move-object v2, v10

    check-cast v2, Landroidx/compose/foundation/interaction/InteractionSource;

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0x70

    or-int/2addr v5, v0

    shl-int/lit8 v4, v3, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v4, v5

    invoke-virtual {v11, v13, v2, v7, v4}, Landroidx/compose/material3/SelectableChipElevation;->tonalElevation$material3_release(ZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    :goto_16
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    if-eqz v2, :cond_24

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v2

    goto :goto_17

    :cond_24
    const/4 v2, 0x0

    int-to-float v4, v2

    .line 2156
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    :goto_17
    move/from16 v19, v2

    const v2, 0x3dca3139

    .line 1375
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "1374@68350L43"

    invoke-static {v7, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v11, :cond_25

    const/4 v5, 0x0

    goto :goto_18

    :cond_25
    move-object v2, v10

    check-cast v2, Landroidx/compose/foundation/interaction/InteractionSource;

    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v0, v4

    shl-int/lit8 v4, v3, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v0, v4

    invoke-virtual {v11, v13, v2, v7, v0}, Landroidx/compose/material3/SelectableChipElevation;->shadowElevation$material3_release(ZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v5

    :goto_18
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    if-eqz v5, :cond_26

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v0

    goto :goto_19

    :cond_26
    const/4 v0, 0x0

    int-to-float v0, v0

    .line 2157
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    :goto_19
    move/from16 v25, v0

    .line 1379
    new-instance v5, Landroidx/compose/material3/ChipKt$SelectableChip$2;

    move-object v0, v5

    move v2, v1

    move-object/from16 v1, p10

    move/from16 p16, v2

    move/from16 v2, p3

    move/from16 v16, v3

    move/from16 v3, p0

    move/from16 v4, p16

    move-object v13, v5

    move/from16 v5, v16

    move-object/from16 v6, p4

    move-object v14, v7

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p13

    move-object/from16 v12, p14

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/ChipKt$SelectableChip$2;-><init>(Landroidx/compose/material3/SelectableChipColors;ZZIILkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FLandroidx/compose/foundation/layout/PaddingValues;)V

    const v0, -0x226db3de

    const/4 v1, 0x1

    invoke-static {v14, v0, v1, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lkotlin/jvm/functions/Function2;

    move/from16 v1, p16

    and-int/lit8 v0, v1, 0xe

    shr-int/lit8 v2, v1, 0x3

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x1c00

    or-int/2addr v0, v2

    shr-int/lit8 v1, v1, 0xf

    and-int v1, v1, v20

    or-int/2addr v0, v1

    shl-int/lit8 v1, v16, 0x15

    const/high16 v2, 0x70000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    move v15, v0

    shr-int/lit8 v0, v16, 0xf

    and-int/lit8 v0, v0, 0xe

    or-int/lit8 v16, v0, 0x30

    const/16 v17, 0x40

    move/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v3, p3

    move-object/from16 v4, p9

    move-wide/from16 v5, v21

    move-wide/from16 v7, v23

    move/from16 v9, v19

    move/from16 v10, v25

    move-object/from16 v11, p12

    move-object/from16 v12, p15

    move-object/from16 v18, v14

    .line 1366
    invoke-static/range {v0 .. v17}, Landroidx/compose/material3/SurfaceKt;->Surface-d85dljk(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 1393
    :cond_27
    :goto_1a
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_28

    goto :goto_1b

    :cond_28
    new-instance v19, Landroidx/compose/material3/ChipKt$SelectableChip$3;

    move-object/from16 v0, v19

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v29, v15

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/material3/ChipKt$SelectableChip$3;-><init>(ZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v29

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_1b
    return-void
.end method

.method public static final SuggestionChip(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/material3/ChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/ChipColors;",
            "Landroidx/compose/material3/ChipElevation;",
            "Landroidx/compose/material3/ChipBorder;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v12, p1

    move/from16 v11, p11

    move/from16 v10, p12

    const-string v0, "onClick"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0xa2b9a45

    move-object/from16 v1, p10

    .line 529
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    const-string v1, "C(SuggestionChip)P(8,6,7,3,4,9,1,2)523@26368L5,524@26423L22,525@26502L25,526@26578L22,527@26652L39,533@26828L10,534@26910L19,528@26697L540:Chip.kt#uh7d8r"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v10, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v11, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v11, 0xe

    if-nez v1, :cond_2

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v11

    goto :goto_1

    :cond_2
    move v1, v11

    :goto_1
    and-int/lit8 v2, v10, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v11, 0x70

    if-nez v2, :cond_5

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    :goto_3
    and-int/lit8 v2, v10, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v11, 0x380

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v3, p2

    :goto_6
    and-int/lit8 v4, v10, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v5, v11, 0x1c00

    if-nez v5, :cond_b

    move/from16 v5, p3

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x800

    goto :goto_7

    :cond_a
    const/16 v6, 0x400

    :goto_7
    or-int/2addr v1, v6

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v5, p3

    :goto_9
    and-int/lit8 v6, v10, 0x10

    const v32, 0xe000

    if-eqz v6, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_b

    :cond_c
    and-int v7, v11, v32

    if-nez v7, :cond_e

    move-object/from16 v7, p4

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const/16 v8, 0x4000

    goto :goto_a

    :cond_d
    const/16 v8, 0x2000

    :goto_a
    or-int/2addr v1, v8

    goto :goto_c

    :cond_e
    :goto_b
    move-object/from16 v7, p4

    :goto_c
    const/high16 v8, 0x70000

    and-int/2addr v8, v11

    if-nez v8, :cond_11

    and-int/lit8 v8, v10, 0x20

    if-nez v8, :cond_f

    move-object/from16 v8, p5

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const/high16 v9, 0x20000

    goto :goto_d

    :cond_f
    move-object/from16 v8, p5

    :cond_10
    const/high16 v9, 0x10000

    :goto_d
    or-int/2addr v1, v9

    goto :goto_e

    :cond_11
    move-object/from16 v8, p5

    :goto_e
    const/high16 v33, 0x380000

    and-int v9, v11, v33

    if-nez v9, :cond_14

    and-int/lit8 v9, v10, 0x40

    if-nez v9, :cond_12

    move-object/from16 v9, p6

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    const/high16 v13, 0x100000

    goto :goto_f

    :cond_12
    move-object/from16 v9, p6

    :cond_13
    const/high16 v13, 0x80000

    :goto_f
    or-int/2addr v1, v13

    goto :goto_10

    :cond_14
    move-object/from16 v9, p6

    :goto_10
    const/high16 v13, 0x1c00000

    and-int/2addr v13, v11

    if-nez v13, :cond_17

    and-int/lit16 v13, v10, 0x80

    if-nez v13, :cond_15

    move-object/from16 v13, p7

    invoke-interface {v14, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16

    const/high16 v16, 0x800000

    goto :goto_11

    :cond_15
    move-object/from16 v13, p7

    :cond_16
    const/high16 v16, 0x400000

    :goto_11
    or-int v1, v1, v16

    goto :goto_12

    :cond_17
    move-object/from16 v13, p7

    :goto_12
    const/high16 v34, 0xe000000

    and-int v16, v11, v34

    if-nez v16, :cond_1a

    and-int/lit16 v0, v10, 0x100

    if-nez v0, :cond_18

    move-object/from16 v0, p8

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    const/high16 v16, 0x4000000

    goto :goto_13

    :cond_18
    move-object/from16 v0, p8

    :cond_19
    const/high16 v16, 0x2000000

    :goto_13
    or-int v1, v1, v16

    goto :goto_14

    :cond_1a
    move-object/from16 v0, p8

    :goto_14
    and-int/lit16 v9, v10, 0x200

    const/high16 v35, 0x70000000

    if-eqz v9, :cond_1b

    const/high16 v16, 0x30000000

    or-int v1, v1, v16

    move/from16 p10, v9

    move-object/from16 v9, p9

    goto :goto_16

    :cond_1b
    and-int v16, v11, v35

    move/from16 p10, v9

    move-object/from16 v9, p9

    if-nez v16, :cond_1d

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    const/high16 v16, 0x20000000

    goto :goto_15

    :cond_1c
    const/high16 v16, 0x10000000

    :goto_15
    or-int v1, v1, v16

    :cond_1d
    :goto_16
    const v16, 0x5b6db6db

    and-int v0, v1, v16

    const v3, 0x12492492

    if-ne v0, v3, :cond_1f

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_17

    .line 545
    :cond_1e
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move v4, v5

    move-object v5, v7

    move-object v6, v8

    move-object v10, v9

    move-object v8, v13

    move-object/from16 v22, v14

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    goto/16 :goto_23

    .line 529
    :cond_1f
    :goto_17
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v11, 0x1

    const v3, -0x1c00001

    const v36, -0x380001

    const v16, -0x70001

    const/16 v37, 0x0

    const/4 v9, 0x6

    if-eqz v0, :cond_25

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_18

    .line 2140
    :cond_20
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v10, 0x20

    if-eqz v0, :cond_21

    and-int v1, v1, v16

    :cond_21
    and-int/lit8 v0, v10, 0x40

    if-eqz v0, :cond_22

    and-int v1, v1, v36

    :cond_22
    and-int/lit16 v0, v10, 0x80

    if-eqz v0, :cond_23

    and-int/2addr v1, v3

    :cond_23
    and-int/lit16 v0, v10, 0x100

    if-eqz v0, :cond_24

    const v0, -0xe000001

    and-int/2addr v1, v0

    :cond_24
    move-object/from16 v19, p2

    move-object/from16 v21, p9

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move v0, v9

    move-object/from16 v20, v13

    move-object/from16 v8, p6

    move-object/from16 v7, p8

    move v9, v5

    goto/16 :goto_21

    :cond_25
    :goto_18
    if-eqz v2, :cond_26

    .line 521
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_19

    :cond_26
    move-object/from16 v0, p2

    :goto_19
    if-eqz v4, :cond_27

    const/4 v2, 0x1

    move/from16 v38, v2

    goto :goto_1a

    :cond_27
    move/from16 v38, v5

    :goto_1a
    if-eqz v6, :cond_28

    move-object/from16 v39, v37

    goto :goto_1b

    :cond_28
    move-object/from16 v39, v7

    :goto_1b
    and-int/lit8 v2, v10, 0x20

    if-eqz v2, :cond_29

    .line 524
    sget-object v2, Landroidx/compose/material3/SuggestionChipDefaults;->INSTANCE:Landroidx/compose/material3/SuggestionChipDefaults;

    invoke-virtual {v2, v14, v9}, Landroidx/compose/material3/SuggestionChipDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    and-int v1, v1, v16

    move-object/from16 v40, v2

    goto :goto_1c

    :cond_29
    move-object/from16 v40, v8

    :goto_1c
    and-int/lit8 v2, v10, 0x40

    if-eqz v2, :cond_2a

    .line 525
    sget-object v16, Landroidx/compose/material3/SuggestionChipDefaults;->INSTANCE:Landroidx/compose/material3/SuggestionChipDefaults;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const/high16 v30, 0x180000

    const/16 v31, 0x3f

    move-object/from16 v29, v14

    invoke-virtual/range {v16 .. v31}, Landroidx/compose/material3/SuggestionChipDefaults;->suggestionChipColors-5tl4gsc(JJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ChipColors;

    move-result-object v2

    and-int v1, v1, v36

    move-object/from16 v26, v2

    goto :goto_1d

    :cond_2a
    move-object/from16 v26, p6

    :goto_1d
    and-int/lit16 v2, v10, 0x80

    if-eqz v2, :cond_2b

    .line 526
    sget-object v16, Landroidx/compose/material3/SuggestionChipDefaults;->INSTANCE:Landroidx/compose/material3/SuggestionChipDefaults;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v24, 0x180000

    const/16 v25, 0x3f

    move-object/from16 v23, v14

    invoke-virtual/range {v16 .. v25}, Landroidx/compose/material3/SuggestionChipDefaults;->suggestionChipElevation-aqJV_2Y(FFFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ChipElevation;

    move-result-object v2

    and-int/2addr v1, v3

    move/from16 v16, v1

    move-object v13, v2

    goto :goto_1e

    :cond_2b
    move/from16 v16, v1

    :goto_1e
    and-int/lit16 v1, v10, 0x100

    if-eqz v1, :cond_2c

    .line 527
    sget-object v1, Landroidx/compose/material3/SuggestionChipDefaults;->INSTANCE:Landroidx/compose/material3/SuggestionChipDefaults;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xc00

    const/16 v17, 0x7

    move-object v7, v14

    move/from16 v18, p10

    move-object/from16 p2, v0

    move v0, v9

    move/from16 v9, v17

    invoke-virtual/range {v1 .. v9}, Landroidx/compose/material3/SuggestionChipDefaults;->suggestionChipBorder-d_3_b6Q(JJFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ChipBorder;

    move-result-object v1

    const v2, -0xe000001

    and-int v2, v16, v2

    move/from16 v16, v2

    goto :goto_1f

    :cond_2c
    move/from16 v18, p10

    move-object/from16 p2, v0

    move v0, v9

    move-object/from16 v1, p8

    :goto_1f
    if-eqz v18, :cond_2e

    const v2, -0x1d58f75c

    .line 528
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v14, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 2141
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 2142
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_2d

    .line 528
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v2

    .line 2144
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2140
    :cond_2d
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v2, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v19, p2

    move-object v7, v1

    move-object/from16 v21, v2

    goto :goto_20

    :cond_2e
    move-object/from16 v19, p2

    move-object/from16 v21, p9

    move-object v7, v1

    :goto_20
    move-object/from16 v20, v13

    move/from16 v1, v16

    move-object/from16 v8, v26

    move/from16 v9, v38

    :goto_21
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.SuggestionChip (Chip.kt:517)"

    const v4, 0xa2b9a45

    .line 529
    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 534
    :cond_2f
    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v2, v14, v0}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v0

    sget-object v2, Landroidx/compose/material3/tokens/SuggestionChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/SuggestionChipTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/SuggestionChipTokens;->getLabelTextFont()Landroidx/compose/material3/tokens/TypographyKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/TypographyKt;->fromToken(Landroidx/compose/material3/Typography;Landroidx/compose/material3/tokens/TypographyKeyTokens;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v4

    shr-int/lit8 v0, v1, 0x9

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v2, v1, 0xf

    and-int/lit8 v3, v2, 0x70

    or-int/2addr v3, v0

    .line 535
    invoke-virtual {v8, v9, v14, v3}, Landroidx/compose/material3/ChipColors;->labelColor$material3_release(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v5

    const/16 v16, 0x0

    const v3, 0x7e450f0f

    .line 541
    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "540@27074L21"

    invoke-static {v14, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v7, :cond_30

    move-object/from16 v0, v37

    goto :goto_22

    :cond_30
    shr-int/lit8 v3, v1, 0x15

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v0, v3

    invoke-virtual {v7, v9, v14, v0}, Landroidx/compose/material3/ChipBorder;->borderStroke$material3_release(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    :goto_22
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    if-eqz v0, :cond_31

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/BorderStroke;

    move-object/from16 v37, v0

    .line 542
    :cond_31
    sget-object v0, Landroidx/compose/material3/SuggestionChipDefaults;->INSTANCE:Landroidx/compose/material3/SuggestionChipDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/SuggestionChipDefaults;->getHeight-D9Ej5fM()F

    move-result v13

    sget-object v0, Landroidx/compose/material3/ChipKt;->SuggestionChipPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v22, v14

    move-object v14, v0

    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0xe

    const/high16 v3, 0xc00000

    or-int/2addr v0, v3

    shl-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v0, v3

    shr-int/lit8 v3, v1, 0x3

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v0, v3

    shl-int/lit8 v3, v1, 0x6

    move-object/from16 p2, v7

    and-int/lit16 v7, v3, 0x1c00

    or-int/2addr v0, v7

    and-int v3, v3, v33

    or-int/2addr v0, v3

    shl-int/lit8 v3, v1, 0x9

    and-int v7, v3, v34

    or-int/2addr v0, v7

    and-int v3, v3, v35

    or-int v17, v0, v3

    shr-int/lit8 v0, v1, 0x15

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v0, v0, 0xd80

    and-int v1, v2, v32

    or-int v18, v0, v1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move v2, v9

    move-object/from16 v3, p1

    move-object/from16 v23, p2

    move-object/from16 v7, v39

    move-object/from16 v26, v8

    move-object/from16 v8, v16

    move/from16 v38, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v26

    move-object/from16 v11, v20

    move-object/from16 v12, v37

    move-object/from16 v15, v21

    move-object/from16 v16, v22

    .line 529
    invoke-static/range {v0 .. v18}, Landroidx/compose/material3/ChipKt;->Chip-nkUnTEs(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_32
    move-object/from16 v3, v19

    move-object/from16 v8, v20

    move-object/from16 v10, v21

    move-object/from16 v9, v23

    move-object/from16 v7, v26

    move/from16 v4, v38

    move-object/from16 v5, v39

    move-object/from16 v6, v40

    .line 545
    :goto_23
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-nez v13, :cond_33

    goto :goto_24

    :cond_33
    new-instance v14, Landroidx/compose/material3/ChipKt$SuggestionChip$2;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/ChipKt$SuggestionChip$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/material3/ChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_24
    return-void
.end method

.method public static final synthetic access$Chip-nkUnTEs(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p18}, Landroidx/compose/material3/ChipKt;->Chip-nkUnTEs(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public static final synthetic access$ChipContent-fe0OD_I(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p14}, Landroidx/compose/material3/ChipKt;->ChipContent-fe0OD_I(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$SelectableChip-u0RnIRE(ZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p18}, Landroidx/compose/material3/ChipKt;->SelectableChip-u0RnIRE(ZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public static final synthetic access$getHorizontalElementsPadding$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/ChipKt;->HorizontalElementsPadding:F

    return v0
.end method

.method private static final inputChipPadding(ZZZ)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 8

    const/16 v0, 0x8

    const/4 v1, 0x4

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float p0, v1

    .line 2158
    :goto_1
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    move v2, p0

    if-eqz p2, :cond_2

    int-to-float p0, v0

    goto :goto_2

    :cond_2
    int-to-float p0, v1

    .line 2159
    :goto_2
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    move v4, p0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    .line 2082
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object p0

    return-object p0
.end method

.method static synthetic inputChipPadding$default(ZZZILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p0, v0

    :cond_0
    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_1

    move p1, v0

    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_2

    move p2, v0

    .line 2075
    :cond_2
    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ChipKt;->inputChipPadding(ZZZ)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object p0

    return-object p0
.end method
