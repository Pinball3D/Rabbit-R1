.class public final Lcom/yeqx/melody/utils/extension/ViewExtensionKt;
.super Ljava/lang/Object;
.source "ViewExtension.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewExtension.kt\ncom/yeqx/melody/utils/extension/ViewExtensionKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,164:1\n1#2:165\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000fH\u0003\u001a\u0012\u0010\u0015\u001a\u00020\u0011*\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018\u001a\n\u0010\u0019\u001a\u00020\u001a*\u00020\u0016\u001a\u0018\u0010\u001b\u001a\u00020\u0011*\u00020\u00162\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u001d\u001a \u0010\u001e\u001a\u00020\u0011*\u00020\u00162\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u001d2\u0006\u0010\u001f\u001a\u00020\u0007\u001a\u001e\u0010 \u001a\u00020\u0011*\u00020\u00162\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00110\"\u001a\u0012\u0010 \u001a\u00020\u0011*\u00020\u00162\u0006\u0010#\u001a\u00020$\u001a&\u0010 \u001a\u00020\u0011*\u00020\u00162\u0006\u0010%\u001a\u00020\u00072\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00110\"\u001a \u0010&\u001a\u00020\u0011*\u00020\u00162\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00110\"H\u0007\u001a\u0012\u0010\'\u001a\u00020\u0011*\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000f\"\u001a\u0010\u0000\u001a\u00020\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0004\u0008\u0004\u0010\u0005\"\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\"\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "clickMinInterval",
        "",
        "getClickMinInterval",
        "()I",
        "setClickMinInterval",
        "(I)V",
        "lastClickTime",
        "",
        "getLastClickTime",
        "()J",
        "setLastClickTime",
        "(J)V",
        "tmpIntArr",
        "",
        "tryHiddenSuppressLayout",
        "",
        "hiddenSuppressLayout",
        "",
        "group",
        "Landroid/view/ViewGroup;",
        "suppress",
        "copyBoundsInWindow",
        "Landroid/view/View;",
        "rect",
        "Landroid/graphics/Rect;",
        "drawCacheBitmap",
        "Landroid/graphics/Bitmap;",
        "safePost",
        "runnable",
        "Lkotlin/Function0;",
        "safePostDelayed",
        "delay",
        "setOnSingleClickListener",
        "onClick",
        "Lkotlin/Function1;",
        "listener",
        "Landroid/view/View$OnClickListener;",
        "checkTime",
        "setOnSingleClickListenerWithAnim",
        "suppressLayoutCompat",
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
.field private static clickMinInterval:I = 0xc8

.field private static lastClickTime:J = 0x0L

.field private static final tmpIntArr:[I

.field private static tryHiddenSuppressLayout:Z = true


# direct methods
.method public static synthetic $r8$lambda$Bmpj0ugKrskNvKoWPjH0btJ1AM8(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->safePost$lambda$8(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dr83bscpgET2uII74tv4dzy2PvI(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->setOnSingleClickListener$lambda$0(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fw3fFub3mQ4bYJfgiweiexbX10Q(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->safePostDelayed$lambda$10(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZADxXR21gxYRbjkIuLNDISY4XMQ(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->setOnSingleClickListenerWithAnim$lambda$3(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cjA2x9sBrZqzkzOpP86MVTpVP4k(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->setOnSingleClickListener$lambda$5(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ii72qE31aGZf3KMe3vGmxrl1FuA(JLkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->setOnSingleClickListener$lambda$6(JLkotlin/jvm/functions/Function1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jo35UGnVn4RyDH7DWpWOwMe9Zrs(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->setOnSingleClickListenerWithAnim$lambda$4(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->tmpIntArr:[I

    return-void
.end method

.method public static final copyBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v0, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->tmpIntArr:[I

    .line 106
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 107
    aget p0, v0, v2

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offset(II)V

    return-void

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can not copy bounds as view is not laid out or attached to window"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final drawCacheBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static final getClickMinInterval()I
    .locals 1

    sget v0, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->clickMinInterval:I

    return v0
.end method

.method public static final getLastClickTime()J
    .locals 2

    sget-wide v0, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->lastClickTime:J

    return-wide v0
.end method

.method private static final hiddenSuppressLayout(Landroid/view/ViewGroup;Z)V
    .locals 1

    sget-boolean v0, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->tryHiddenSuppressLayout:Z

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    sput-boolean p0, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->tryHiddenSuppressLayout:Z

    :cond_0
    :goto_0
    return-void
.end method

.method public static final safePost(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/yeqx/melody/utils/extension/ViewExtensionKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/yeqx/melody/utils/extension/ViewExtensionKt$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final safePost$lambda$8(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$this_safePost"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "$runnable"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 148
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 149
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 147
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static final safePostDelayed(Landroid/view/View;Lkotlin/jvm/functions/Function0;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/yeqx/melody/utils/extension/ViewExtensionKt$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/yeqx/melody/utils/extension/ViewExtensionKt$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final safePostDelayed$lambda$10(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$this_safePostDelayed"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "$runnable"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static final setClickMinInterval(I)V
    .locals 0

    sput p0, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->clickMinInterval:I

    return-void
.end method

.method public static final setLastClickTime(J)V
    .locals 0

    sput-wide p0, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->lastClickTime:J

    return-void
.end method

.method public static final setOnSingleClickListener(Landroid/view/View;JLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/yeqx/melody/utils/extension/ViewExtensionKt$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2, p3}, Lcom/yeqx/melody/utils/extension/ViewExtensionKt$$ExternalSyntheticLambda6;-><init>(JLkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final setOnSingleClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/yeqx/melody/utils/extension/ViewExtensionKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/yeqx/melody/utils/extension/ViewExtensionKt$$ExternalSyntheticLambda1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final setOnSingleClickListener(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/yeqx/melody/utils/extension/ViewExtensionKt$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/yeqx/melody/utils/extension/ViewExtensionKt$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setOnSingleClickListener$lambda$0(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 6

    const-string v0, "$listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->lastClickTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->clickMinInterval:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    sput-wide v0, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->lastClickTime:J

    .line 24
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 26
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_0
    return-void
.end method

.method private static final setOnSingleClickListener$lambda$5(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 6

    const-string v0, "$onClick"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->lastClickTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->clickMinInterval:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    sput-wide v0, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->lastClickTime:J

    .line 73
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_0
    return-void
.end method

.method private static final setOnSingleClickListener$lambda$6(JLkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 4

    const-string v0, "$onClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->lastClickTime:J

    sub-long v2, v0, v2

    cmp-long p0, v2, p0

    if-lez p0, :cond_0

    sput-wide v0, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->lastClickTime:J

    .line 89
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 91
    invoke-virtual {p3, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_0
    return-void
.end method

.method public static final setOnSingleClickListenerWithAnim(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/yeqx/melody/utils/extension/ViewExtensionKt$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/yeqx/melody/utils/extension/ViewExtensionKt$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 54
    new-instance v0, Lcom/yeqx/melody/utils/extension/ViewExtensionKt$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/yeqx/melody/utils/extension/ViewExtensionKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setOnSingleClickListenerWithAnim$lambda$3(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const-string p1, "$this_setOnSingleClickListenerWithAnim"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-wide/16 v0, 0x12c

    const/4 p2, 0x2

    const-string v2, "alpha"

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p2, [F

    fill-array-data p1, :array_0

    .line 45
    invoke-static {p0, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 46
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 47
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    new-array p1, p2, [F

    fill-array-data p1, :array_1

    .line 39
    invoke-static {p0, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 40
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 41
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    const/4 p0, 0x0

    return p0

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private static final setOnSingleClickListenerWithAnim$lambda$4(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 6

    const-string v0, "$onClick"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->lastClickTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->clickMinInterval:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    sput-wide v0, Lcom/yeqx/melody/utils/extension/ViewExtensionKt;->lastClickTime:J

    .line 58
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 60
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_0
    return-void
.end method

.method public static final suppressLayoutCompat(Landroid/view/ViewGroup;Z)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    return-void
.end method
