.class final Landroidx/compose/material3/BadgeKt$Badge$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Badge.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/BadgeKt;->Badge-eopBjH0(Landroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$dirty:I

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_Row:Landroidx/compose/foundation/layout/RowScope;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/RowScope;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/layout/RowScope;",
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/BadgeKt$Badge$1$1;->$content:Lkotlin/jvm/functions/Function3;

    iput-object p2, p0, Landroidx/compose/material3/BadgeKt$Badge$1$1;->$this_Row:Landroidx/compose/foundation/layout/RowScope;

    iput p3, p0, Landroidx/compose/material3/BadgeKt$Badge$1$1;->$$changed:I

    iput p4, p0, Landroidx/compose/material3/BadgeKt$Badge$1$1;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 173
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/BadgeKt$Badge$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 4

    const-string v0, "C174@6872L10,177@7007L114:Badge.kt#uh7d8r"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 174
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 174
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.Badge.<anonymous>.<anonymous> (Badge.kt:172)"

    const v2, 0x55966a

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 175
    :cond_2
    sget-object p2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object p2

    sget-object v0, Landroidx/compose/material3/tokens/BadgeTokens;->INSTANCE:Landroidx/compose/material3/tokens/BadgeTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/BadgeTokens;->getLargeLabelTextFont()Landroidx/compose/material3/tokens/TypographyKeyTokens;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/compose/material3/TypographyKt;->fromToken(Landroidx/compose/material3/Typography;Landroidx/compose/material3/tokens/TypographyKeyTokens;)Landroidx/compose/ui/text/TextStyle;

    move-result-object p2

    const/4 v0, 0x0

    .line 174
    invoke-static {p2, v0}, Landroidx/compose/material3/IncludeFontPaddingHelper_androidKt;->copyAndSetFontPadding(Landroidx/compose/ui/text/TextStyle;Z)Landroidx/compose/ui/text/TextStyle;

    move-result-object p2

    .line 180
    new-instance v0, Landroidx/compose/material3/BadgeKt$Badge$1$1$1;

    iget-object v1, p0, Landroidx/compose/material3/BadgeKt$Badge$1$1;->$content:Lkotlin/jvm/functions/Function3;

    iget-object v2, p0, Landroidx/compose/material3/BadgeKt$Badge$1$1;->$this_Row:Landroidx/compose/foundation/layout/RowScope;

    iget v3, p0, Landroidx/compose/material3/BadgeKt$Badge$1$1;->$$changed:I

    iget p0, p0, Landroidx/compose/material3/BadgeKt$Badge$1$1;->$$dirty:I

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/material3/BadgeKt$Badge$1$1$1;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/RowScope;II)V

    const p0, -0x460a95a7

    const/4 v1, 0x1

    invoke-static {p1, p0, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function2;

    const/16 v0, 0x30

    .line 178
    invoke-static {p2, p0, p1, v0}, Landroidx/compose/material3/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
