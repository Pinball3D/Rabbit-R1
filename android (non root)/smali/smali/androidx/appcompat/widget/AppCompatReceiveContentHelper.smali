.class final Landroidx/appcompat/widget/AppCompatReceiveContentHelper;
.super Ljava/lang/Object;
.source "AppCompatReceiveContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatReceiveContentHelper$OnDropApi24Impl;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ReceiveContent"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static maybeHandleDragEventViaPerformReceiveContent(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static maybeHandleMenuActionViaPerformReceiveContent(Landroid/widget/TextView;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static tryGetActivity(Landroid/view/View;)Landroid/app/Activity;
    .locals 1

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 159
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 160
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 161
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 163
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
