.class final Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$2;
.super Lkotlin/jvm/internal/Lambda;
.source "HeightInLinesModifier.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/HeightInLinesModifierKt;->heightInLines(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;II)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeightInLinesModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeightInLinesModifier.kt\nandroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$2\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,134:1\n76#2:135\n76#2:136\n76#2:137\n50#3:138\n49#3:139\n50#3:146\n49#3:147\n83#3,3:154\n83#3,3:163\n1097#4,6:140\n1097#4,6:148\n1097#4,6:157\n1097#4,6:166\n81#5:172\n*S KotlinDebug\n*F\n+ 1 HeightInLinesModifier.kt\nandroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$2\n*L\n63#1:135\n64#1:136\n65#1:137\n69#1:138\n69#1:139\n72#1:146\n72#1:147\n81#1:154,3\n97#1:163,3\n69#1:140,6\n72#1:148,6\n81#1:157,6\n97#1:166,6\n72#1:172\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/Modifier;",
        "invoke",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $maxLines:I

.field final synthetic $minLines:I

.field final synthetic $textStyle:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method constructor <init>(IILandroidx/compose/ui/text/TextStyle;)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$2;->$minLines:I

    iput p2, p0, Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$2;->$maxLines:I

    iput-object p3, p0, Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$2;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$2(Landroidx/compose/runtime/State;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 172
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 12

    const-string v0, "$this$composed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x1855405a

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C62@2391L7,63@2452L7,64@2507L7,68@2678L96,71@2795L312,80@3135L366,96@3533L428:HeightInLinesModifier.kt#423gt5"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.text.heightInLines.<anonymous> (HeightInLinesModifier.kt:58)"

    .line 60
    invoke-static {p1, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    iget p1, p0, Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$2;->$minLines:I

    iget p3, p0, Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$2;->$maxLines:I

    invoke-static {p1, p3}, Landroidx/compose/foundation/text/HeightInLinesModifierKt;->validateMinMaxLines(II)V

    iget p1, p0, Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$2;->$minLines:I

    const p3, 0x7fffffff

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget p1, p0, Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$2;->$maxLines:I

    if-ne p1, p3, :cond_2

    .line 61
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast p0, Landroidx/compose/ui/Modifier;

    return-object p0

    .line 63
    :cond_2
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/CompositionLocal;

    const v1, 0x789c5f52

    const-string v2, "CC:CompositionLocal.kt#9igjgp"

    .line 135
    invoke-static {p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 63
    check-cast p1, Landroidx/compose/ui/unit/Density;

    .line 64
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    .line 136
    invoke-static {p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 64
    check-cast v3, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 65
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/CompositionLocal;

    .line 137
    invoke-static {p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 65
    check-cast v1, Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v2, p0, Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$2;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    const v4, 0x1e7b2b64

    .line 69
    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {p2, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 138
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    .line 140
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_3

    .line 141
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v7, v6, :cond_4

    .line 70
    :cond_3
    invoke-static {v2, v1}, Landroidx/compose/ui/text/TextStyleKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v7

    .line 143
    invoke-interface {p2, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 139
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 69
    check-cast v7, Landroidx/compose/ui/text/TextStyle;

    .line 72
    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p2, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 146
    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {p2, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 148
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_5

    .line 149
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_9

    .line 74
    :cond_5
    invoke-virtual {v7}, Landroidx/compose/ui/text/TextStyle;->getFontFamily()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v2

    .line 75
    invoke-virtual {v7}, Landroidx/compose/ui/text/TextStyle;->getFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v4

    if-nez v4, :cond_6

    sget-object v4, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v4

    .line 76
    :cond_6
    invoke-virtual {v7}, Landroidx/compose/ui/text/TextStyle;->getFontStyle-4Lr2A7w()Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroidx/compose/ui/text/font/FontStyle;->unbox-impl()I

    move-result v5

    goto :goto_0

    :cond_7
    sget-object v5, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getNormal-_-LCdwA()I

    move-result v5

    .line 77
    :goto_0
    invoke-virtual {v7}, Landroidx/compose/ui/text/TextStyle;->getFontSynthesis-ZQGJjVo()Landroidx/compose/ui/text/font/FontSynthesis;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroidx/compose/ui/text/font/FontSynthesis;->unbox-impl()I

    move-result v6

    goto :goto_1

    :cond_8
    sget-object v6, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->getAll-GVVA2EU()I

    move-result v6

    .line 73
    :goto_1
    invoke-interface {v3, v2, v4, v5, v6}, Landroidx/compose/ui/text/font/FontFamily$Resolver;->resolve-DPcqOEQ(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/runtime/State;

    move-result-object v4

    .line 151
    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 147
    :cond_9
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 72
    check-cast v4, Landroidx/compose/runtime/State;

    iget-object v2, p0, Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$2;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    .line 86
    invoke-static {v4}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$2;->invoke$lambda$2(Landroidx/compose/runtime/State;)Ljava/lang/Object;

    move-result-object v5

    filled-new-array {p1, v3, v2, v1, v5}, [Ljava/lang/Object;

    move-result-object v2

    const v5, -0x21de6e89

    .line 81
    invoke-interface {p2, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p2, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_2
    const/4 v11, 0x5

    if-ge v9, v11, :cond_a

    .line 155
    aget-object v11, v2, v9

    invoke-interface {p2, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 157
    :cond_a
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v10, :cond_b

    .line 158
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v2, v9, :cond_c

    .line 92
    :cond_b
    invoke-static {}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->getEmptyTextReplacement()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v7, p1, v3, v2, v0}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->computeSizeForDefaultText(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/lang/String;I)J

    move-result-wide v9

    .line 94
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 160
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 156
    :cond_c
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 81
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v9, p0, Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$2;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    .line 102
    invoke-static {v4}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$2;->invoke$lambda$2(Landroidx/compose/runtime/State;)Ljava/lang/Object;

    move-result-object v4

    filled-new-array {p1, v3, v9, v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 97
    invoke-interface {p2, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p2, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v4, v8

    :goto_3
    if-ge v8, v11, :cond_d

    .line 164
    aget-object v5, v1, v8

    invoke-interface {p2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 166
    :cond_d
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v4, :cond_e

    .line 167
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_f

    .line 104
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->getEmptyTextReplacement()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->getEmptyTextReplacement()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    .line 105
    invoke-static {v7, p1, v3, v1, v4}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->computeSizeForDefaultText(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/lang/String;I)J

    move-result-wide v3

    .line 111
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 169
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 165
    :cond_f
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 97
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr v1, v2

    iget v3, p0, Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$2;->$minLines:I

    const/4 v4, 0x0

    if-ne v3, v0, :cond_10

    move-object v3, v4

    goto :goto_4

    :cond_10
    sub-int/2addr v3, v0

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    .line 115
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_4
    iget p0, p0, Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$2;->$maxLines:I

    if-ne p0, p3, :cond_11

    goto :goto_5

    :cond_11
    sub-int/2addr p0, v0

    mul-int/2addr v1, p0

    add-int/2addr v2, v1

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 120
    :goto_5
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p0, Landroidx/compose/ui/Modifier;

    if-eqz v3, :cond_12

    .line 121
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p1, p3}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result p3

    goto :goto_6

    :cond_12
    sget-object p3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p3

    :goto_6
    if-eqz v4, :cond_13

    .line 122
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result p1

    goto :goto_7

    :cond_13
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p1

    .line 120
    :goto_7
    invoke-static {p0, p3, p1}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 119
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_14
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$2;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
