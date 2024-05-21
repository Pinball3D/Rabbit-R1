.class public final Landroidx/compose/material3/MenuDefaults;
.super Ljava/lang/Object;
.source "Menu.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Menu.kt\nandroidx/compose/material3/MenuDefaults\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,443:1\n154#2:444\n*S KotlinDebug\n*F\n+ 1 Menu.kt\nandroidx/compose/material3/MenuDefaults\n*L\n260#1:444\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JQ\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\nH\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/material3/MenuDefaults;",
        "",
        "()V",
        "DropdownMenuItemContentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "getDropdownMenuItemContentPadding",
        "()Landroidx/compose/foundation/layout/PaddingValues;",
        "itemColors",
        "Landroidx/compose/material3/MenuItemColors;",
        "textColor",
        "Landroidx/compose/ui/graphics/Color;",
        "leadingIconColor",
        "trailingIconColor",
        "disabledTextColor",
        "disabledLeadingIconColor",
        "disabledTrailingIconColor",
        "itemColors-5tl4gsc",
        "(JJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/MenuItemColors;",
        "material3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field private static final DropdownMenuItemContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field public static final INSTANCE:Landroidx/compose/material3/MenuDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/MenuDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/MenuDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/MenuDefaults;->INSTANCE:Landroidx/compose/material3/MenuDefaults;

    .line 259
    invoke-static {}, Landroidx/compose/material3/MenuKt;->access$getDropdownMenuItemHorizontalPadding$p()F

    move-result v0

    const/4 v1, 0x0

    int-to-float v1, v1

    .line 444
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 258
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA(FF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/MenuDefaults;->DropdownMenuItemContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDropdownMenuItemContentPadding()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    sget-object p0, Landroidx/compose/material3/MenuDefaults;->DropdownMenuItemContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object p0
.end method

.method public final itemColors-5tl4gsc(JJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/MenuItemColors;
    .locals 20

    move-object/from16 v0, p13

    const v1, -0x4c3506dc

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(itemColors)P(4:c#ui.graphics.Color,3:c#ui.graphics.Color,5:c#ui.graphics.Color,1:c#ui.graphics.Color,0:c#ui.graphics.Color,2:c#ui.graphics.Color)235@8727L9,236@8808L9,237@8891L9,239@8991L9,241@9163L9,243@9335L9:Menu.kt#uh7d8r"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p15, 0x1

    const/4 v3, 0x6

    if-eqz v2, :cond_0

    .line 236
    sget-object v2, Landroidx/compose/material3/tokens/MenuTokens;->INSTANCE:Landroidx/compose/material3/tokens/MenuTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/MenuTokens;->getListItemLabelTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->toColor(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    move-wide v7, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v7, p1

    :goto_0
    and-int/lit8 v2, p15, 0x2

    if-eqz v2, :cond_1

    .line 237
    sget-object v2, Landroidx/compose/material3/tokens/MenuTokens;->INSTANCE:Landroidx/compose/material3/tokens/MenuTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/MenuTokens;->getListItemLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->toColor(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    move-wide v9, v4

    goto :goto_1

    :cond_1
    move-wide/from16 v9, p3

    :goto_1
    and-int/lit8 v2, p15, 0x4

    if-eqz v2, :cond_2

    .line 238
    sget-object v2, Landroidx/compose/material3/tokens/MenuTokens;->INSTANCE:Landroidx/compose/material3/tokens/MenuTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/MenuTokens;->getListItemTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->toColor(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    move-wide v11, v4

    goto :goto_2

    :cond_2
    move-wide/from16 v11, p5

    :goto_2
    and-int/lit8 v2, p15, 0x8

    if-eqz v2, :cond_3

    .line 240
    sget-object v2, Landroidx/compose/material3/tokens/MenuTokens;->INSTANCE:Landroidx/compose/material3/tokens/MenuTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/MenuTokens;->getListItemDisabledLabelTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->toColor(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    const v2, 0x3ec28f5c    # 0.38f

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xe

    const/16 v16, 0x0

    move-wide/from16 p0, v4

    move/from16 p2, v2

    move/from16 p3, v6

    move/from16 p4, v13

    move/from16 p5, v14

    move/from16 p6, v15

    move-object/from16 p7, v16

    .line 241
    invoke-static/range {p0 .. p7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide v13, v4

    goto :goto_3

    :cond_3
    move-wide/from16 v13, p7

    :goto_3
    and-int/lit8 v2, p15, 0x10

    if-eqz v2, :cond_4

    .line 242
    sget-object v2, Landroidx/compose/material3/tokens/MenuTokens;->INSTANCE:Landroidx/compose/material3/tokens/MenuTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/MenuTokens;->getListItemDisabledLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->toColor(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    const v2, 0x3ec28f5c    # 0.38f

    const/4 v6, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/16 v18, 0x0

    move-wide/from16 p0, v4

    move/from16 p2, v2

    move/from16 p3, v6

    move/from16 p4, v15

    move/from16 p5, v16

    move/from16 p6, v17

    move-object/from16 p7, v18

    .line 243
    invoke-static/range {p0 .. p7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide v15, v4

    goto :goto_4

    :cond_4
    move-wide/from16 v15, p9

    :goto_4
    and-int/lit8 v2, p15, 0x20

    if-eqz v2, :cond_5

    .line 244
    sget-object v2, Landroidx/compose/material3/tokens/MenuTokens;->INSTANCE:Landroidx/compose/material3/tokens/MenuTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/MenuTokens;->getListItemDisabledTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->toColor(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v2

    const v4, 0x3ec28f5c    # 0.38f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xe

    const/16 v19, 0x0

    move-wide/from16 p0, v2

    move/from16 p2, v4

    move/from16 p3, v5

    move/from16 p4, v6

    move/from16 p5, v17

    move/from16 p6, v18

    move-object/from16 p7, v19

    .line 245
    invoke-static/range {p0 .. p7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v2

    move-wide/from16 v17, v2

    goto :goto_5

    :cond_5
    move-wide/from16 v17, p11

    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.MenuDefaults.itemColors (Menu.kt:234)"

    move/from16 v4, p14

    .line 246
    invoke-static {v1, v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6
    new-instance v1, Landroidx/compose/material3/MenuItemColors;

    const/16 v19, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v19}, Landroidx/compose/material3/MenuItemColors;-><init>(JJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    invoke-interface/range {p13 .. p13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method
