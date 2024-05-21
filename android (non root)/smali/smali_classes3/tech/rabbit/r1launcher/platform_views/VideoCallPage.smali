.class public final Ltech/rabbit/r1launcher/platform_views/VideoCallPage;
.super Ljava/lang/Object;
.source "VideoCallPage.kt"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformView;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/platform_views/VideoCallPage;",
        "Lio/flutter/plugin/platform/PlatformView;",
        "context",
        "Landroid/content/Context;",
        "id",
        "",
        "creationParams",
        "",
        "",
        "",
        "(Landroid/content/Context;ILjava/util/Map;)V",
        "layout",
        "Landroid/widget/LinearLayout;",
        "dispose",
        "",
        "getView",
        "Landroid/view/View;",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final layout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Android view (id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", paramsFromDart: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 p3, 0x29

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41800000    # 16.0f

    .line 22
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p2, 0xff

    .line 23
    invoke-static {p2, p2, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 24
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    new-instance p2, Landroid/widget/Button;

    invoke-direct {p2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "Press me"

    .line 27
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 28
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    new-instance v1, Ltech/rabbit/r1launcher/platform_views/VideoCallPage$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Ltech/rabbit/r1launcher/platform_views/VideoCallPage$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 48
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 49
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    check-cast p2, Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v1, p0, Ltech/rabbit/r1launcher/platform_views/VideoCallPage;->layout:Landroid/widget/LinearLayout;

    return-void
.end method

.method static final lambda$2$lambda$1(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    const-string p1, "$textView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "###button  setOnClickListener"

    .line 43
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const-string p1, "click"

    .line 44
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/platform_views/VideoCallPage;->layout:Landroid/widget/LinearLayout;

    .line 56
    check-cast p0, Landroid/view/View;

    return-object p0
.end method
