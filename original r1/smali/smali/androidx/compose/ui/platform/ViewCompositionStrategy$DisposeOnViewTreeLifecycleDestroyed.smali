.class public final Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;
.super Ljava/lang/Object;
.source "ViewCompositionStrategy.android.kt"

# interfaces
.implements Landroidx/compose/ui/platform/ViewCompositionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/ViewCompositionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisposeOnViewTreeLifecycleDestroyed"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;",
        "Landroidx/compose/ui/platform/ViewCompositionStrategy;",
        "()V",
        "installFor",
        "Lkotlin/Function0;",
        "",
        "view",
        "Landroidx/compose/ui/platform/AbstractComposeView;",
        "ui_release"
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

.field public static final INSTANCE:Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;

    invoke-direct {v0}, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;->INSTANCE:Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installFor(Landroidx/compose/ui/platform/AbstractComposeView;)Lkotlin/jvm/functions/Function0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/AbstractComposeView;",
            ")",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AbstractComposeView;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 154
    move-object p0, p1

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 157
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/platform/ViewCompositionStrategy_androidKt;->access$installForLifecycle(Landroidx/compose/ui/platform/AbstractComposeView;Landroidx/lifecycle/Lifecycle;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0

    .line 155
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "View tree for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " has no ViewTreeLifecycleOwner"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 154
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_1
    new-instance p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 161
    new-instance v0, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$listener$1;

    invoke-direct {v0, p1, p0}, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$listener$1;-><init>(Landroidx/compose/ui/platform/AbstractComposeView;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 174
    move-object v1, v0

    check-cast v1, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v1}, Landroidx/compose/ui/platform/AbstractComposeView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 175
    new-instance v1, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$1;

    invoke-direct {v1, p1, v0}, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$1;-><init>(Landroidx/compose/ui/platform/AbstractComposeView;Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$listener$1;)V

    iput-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 176
    new-instance p1, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$2;

    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    return-object p1
.end method
