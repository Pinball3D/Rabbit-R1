.class public final Ltech/rabbit/r1launcher/ui/theme/TypeKt;
.super Ljava/lang/Object;
.source "Type.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Typography",
        "Landroidx/compose/material3/Typography;",
        "getTypography",
        "()Landroidx/compose/material3/Typography;",
        "app_productionEnvRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final Typography:Landroidx/compose/material3/Typography;


# direct methods
.method static constructor <clinit>()V
    .locals 51

    .line 10
    new-instance v18, Landroidx/compose/material3/Typography;

    move-object/from16 v0, v18

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 12
    sget-object v10, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getDefault()Landroidx/compose/ui/text/font/SystemFontFamily;

    move-result-object v11

    .line 13
    sget-object v10, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v24

    const/16 v10, 0x10

    .line 14
    invoke-static {v10}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v22

    const/16 v10, 0x18

    .line 15
    invoke-static {v10}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v41

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 16
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v29

    .line 11
    new-instance v19, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v10, v19

    const-wide/16 v20, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 12
    move-object/from16 v27, v11

    check-cast v27, Landroidx/compose/ui/text/font/FontFamily;

    const/16 v28, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const v49, 0xfdff59

    const/16 v50, 0x0

    .line 11
    invoke-direct/range {v19 .. v50}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;Landroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7dff

    const/16 v17, 0x0

    .line 10
    invoke-direct/range {v0 .. v17}, Landroidx/compose/material3/Typography;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v18, Ltech/rabbit/r1launcher/ui/theme/TypeKt;->Typography:Landroidx/compose/material3/Typography;

    return-void
.end method

.method public static final getTypography()Landroidx/compose/material3/Typography;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/ui/theme/TypeKt;->Typography:Landroidx/compose/material3/Typography;

    return-object v0
.end method
