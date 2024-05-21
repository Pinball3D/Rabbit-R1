.class final Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ReportDrawn.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/compose/ReportDrawnKt;->ReportDrawnWhen(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReportDrawn.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReportDrawn.kt\nandroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1\n+ 2 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,176:1\n62#2,5:177\n62#2,5:182\n*S KotlinDebug\n*F\n+ 1 ReportDrawn.kt\nandroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1\n*L\n135#1:177,5\n138#1:182,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "invoke"
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
.field final synthetic $fullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;

.field final synthetic $predicate:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/activity/FullyDrawnReporter;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/FullyDrawnReporter;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1;->$fullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;

    iput-object p2, p0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1;->$predicate:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 1

    iget-object p1, p0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1;->$fullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;

    .line 134
    invoke-virtual {p1}, Landroidx/activity/FullyDrawnReporter;->isFullyDrawnReported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    new-instance p0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1$invoke$$inlined$onDispose$1;

    invoke-direct {p0}, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1$invoke$$inlined$onDispose$1;-><init>()V

    check-cast p0, Landroidx/compose/runtime/DisposableEffectResult;

    goto :goto_0

    .line 137
    :cond_0
    new-instance p1, Landroidx/activity/compose/ReportDrawnComposition;

    iget-object v0, p0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1;->$fullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;

    iget-object p0, p0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1;->$predicate:Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, v0, p0}, Landroidx/activity/compose/ReportDrawnComposition;-><init>(Landroidx/activity/FullyDrawnReporter;Lkotlin/jvm/functions/Function0;)V

    .line 182
    new-instance p0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1$invoke$$inlined$onDispose$2;

    invoke-direct {p0, p1}, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1$invoke$$inlined$onDispose$2;-><init>(Landroidx/activity/compose/ReportDrawnComposition;)V

    check-cast p0, Landroidx/compose/runtime/DisposableEffectResult;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 133
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, p1}, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
