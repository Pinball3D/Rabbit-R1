.class public Landroidx/core/app/NotificationCompat$InboxStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboxStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$InboxStyle$Api16Impl;
    }
.end annotation


# static fields
.field private static final TEMPLATE_CLASS_NAME:Ljava/lang/String; = "androidx.core.app.NotificationCompat$InboxStyle"


# instance fields
.field private mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5451
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 5449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1

    .line 5454
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 5449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 5455
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$InboxStyle;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    return-void
.end method


# virtual methods
.method public addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 5481
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 1

    .line 5501
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$InboxStyle$Api16Impl;->createInboxStyle(Landroid/app/Notification$Builder;)Landroid/app/Notification$InboxStyle;

    move-result-object p1

    .line 5502
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroidx/core/app/NotificationCompat$InboxStyle$Api16Impl;->setBigContentTitle(Landroid/app/Notification$InboxStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object p1

    .line 5503
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mSummaryTextSet:Z

    if-eqz v0, :cond_0

    .line 5504
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mSummaryText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroidx/core/app/NotificationCompat$InboxStyle$Api16Impl;->setSummaryText(Landroid/app/Notification$InboxStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    :cond_0
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 5506
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 5507
    invoke-static {p1, v0}, Landroidx/core/app/NotificationCompat$InboxStyle$Api16Impl;->addLine(Landroid/app/Notification$InboxStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected clearCompatExtraKeys(Landroid/os/Bundle;)V
    .locals 0

    .line 5530
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->clearCompatExtraKeys(Landroid/os/Bundle;)V

    const-string p0, "android.textLines"

    .line 5531
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method protected getClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "androidx.core.app.NotificationCompat$InboxStyle"

    return-object p0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .locals 2

    .line 5517
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->restoreFromCompatExtras(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 5518
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "android.textLines"

    .line 5520
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 5521
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;
    .locals 0

    .line 5463
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;
    .locals 0

    .line 5471
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mSummaryText:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    .line 5472
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mSummaryTextSet:Z

    return-object p0
.end method
