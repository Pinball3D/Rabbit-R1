.class public final Landroidx/compose/material3/RadioButtonDefaults;
.super Ljava/lang/Object;
.source "RadioButton.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J=\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000b\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/compose/material3/RadioButtonDefaults;",
        "",
        "()V",
        "colors",
        "Landroidx/compose/material3/RadioButtonColors;",
        "selectedColor",
        "Landroidx/compose/ui/graphics/Color;",
        "unselectedColor",
        "disabledSelectedColor",
        "disabledUnselectedColor",
        "colors-ro_MJ88",
        "(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/RadioButtonColors;",
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

.field public static final INSTANCE:Landroidx/compose/material3/RadioButtonDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/RadioButtonDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/RadioButtonDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/RadioButtonDefaults;->INSTANCE:Landroidx/compose/material3/RadioButtonDefaults;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final colors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/RadioButtonColors;
    .locals 19

    move-object/from16 v0, p9

    const v1, -0x14ed1a26

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(colors)P(2:c#ui.graphics.Color,3:c#ui.graphics.Color,0:c#ui.graphics.Color,1:c#ui.graphics.Color)145@6275L9,146@6357L9,148@6464L9,151@6648L9:RadioButton.kt#uh7d8r"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p11, 0x1

    const/4 v3, 0x6

    if-eqz v2, :cond_0

    .line 146
    sget-object v2, Landroidx/compose/material3/tokens/RadioButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/RadioButtonTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/RadioButtonTokens;->getSelectedIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->toColor(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    move-wide v7, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v7, p1

    :goto_0
    and-int/lit8 v2, p11, 0x2

    if-eqz v2, :cond_1

    .line 147
    sget-object v2, Landroidx/compose/material3/tokens/RadioButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/RadioButtonTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/RadioButtonTokens;->getUnselectedIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->toColor(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    move-wide v9, v4

    goto :goto_1

    :cond_1
    move-wide/from16 v9, p3

    :goto_1
    and-int/lit8 v2, p11, 0x4

    if-eqz v2, :cond_2

    .line 148
    sget-object v2, Landroidx/compose/material3/tokens/RadioButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/RadioButtonTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/RadioButtonTokens;->getDisabledSelectedIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    .line 149
    invoke-static {v2, v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->toColor(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v11

    const v13, 0x3ec28f5c    # 0.38f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/16 v18, 0x0

    .line 150
    invoke-static/range {v11 .. v18}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide v11, v4

    goto :goto_2

    :cond_2
    move-wide/from16 v11, p5

    :goto_2
    and-int/lit8 v2, p11, 0x8

    if-eqz v2, :cond_3

    .line 151
    sget-object v2, Landroidx/compose/material3/tokens/RadioButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/RadioButtonTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/RadioButtonTokens;->getDisabledUnselectedIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    .line 152
    invoke-static {v2, v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->toColor(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v2

    const v4, 0x3ec28f5c    # 0.38f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe

    const/4 v15, 0x0

    move-wide/from16 p0, v2

    move/from16 p2, v4

    move/from16 p3, v5

    move/from16 p4, v6

    move/from16 p5, v13

    move/from16 p6, v14

    move-object/from16 p7, v15

    .line 153
    invoke-static/range {p0 .. p7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v2

    move-wide v13, v2

    goto :goto_3

    :cond_3
    move-wide/from16 v13, p7

    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.RadioButtonDefaults.colors (RadioButton.kt:144)"

    move/from16 v4, p10

    .line 154
    invoke-static {v1, v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    new-instance v1, Landroidx/compose/material3/RadioButtonColors;

    const/4 v15, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v15}, Landroidx/compose/material3/RadioButtonColors;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface/range {p9 .. p9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method
