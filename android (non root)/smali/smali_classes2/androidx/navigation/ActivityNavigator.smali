.class public Landroidx/navigation/ActivityNavigator;
.super Landroidx/navigation/Navigator;
.source "ActivityNavigator.kt"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "activity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/ActivityNavigator$Companion;,
        Landroidx/navigation/ActivityNavigator$Destination;,
        Landroidx/navigation/ActivityNavigator$Extras;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/Navigator<",
        "Landroidx/navigation/ActivityNavigator$Destination;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityNavigator.kt\nandroidx/navigation/ActivityNavigator\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,530:1\n179#2,2:531\n*S KotlinDebug\n*F\n+ 1 ActivityNavigator.kt\nandroidx/navigation/ActivityNavigator\n*L\n48#1:531,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0017\u0018\u0000 \u00162\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0016\u0017\u0018B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\n\u001a\u00020\u0002H\u0016J0\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u00022\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u0013\u0010\u0003\u001a\u00020\u00048\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/navigation/ActivityNavigator;",
        "Landroidx/navigation/Navigator;",
        "Landroidx/navigation/ActivityNavigator$Destination;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "hostActivity",
        "Landroid/app/Activity;",
        "createDestination",
        "navigate",
        "Landroidx/navigation/NavDestination;",
        "destination",
        "args",
        "Landroid/os/Bundle;",
        "navOptions",
        "Landroidx/navigation/NavOptions;",
        "navigatorExtras",
        "Landroidx/navigation/Navigator$Extras;",
        "popBackStack",
        "",
        "Companion",
        "Destination",
        "Extras",
        "navigation-runtime_release"
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
.field public static final Companion:Landroidx/navigation/ActivityNavigator$Companion;

.field private static final EXTRA_NAV_CURRENT:Ljava/lang/String; = "android-support-navigation:ActivityNavigator:current"

.field private static final EXTRA_NAV_SOURCE:Ljava/lang/String; = "android-support-navigation:ActivityNavigator:source"

.field private static final EXTRA_POP_ENTER_ANIM:Ljava/lang/String; = "android-support-navigation:ActivityNavigator:popEnterAnim"

.field private static final EXTRA_POP_EXIT_ANIM:Ljava/lang/String; = "android-support-navigation:ActivityNavigator:popExitAnim"

.field private static final LOG_TAG:Ljava/lang/String; = "ActivityNavigator"


# instance fields
.field private final context:Landroid/content/Context;

.field private final hostActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/ActivityNavigator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/ActivityNavigator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/ActivityNavigator;->Companion:Landroidx/navigation/ActivityNavigator$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Landroidx/navigation/Navigator;-><init>()V

    iput-object p1, p0, Landroidx/navigation/ActivityNavigator;->context:Landroid/content/Context;

    .line 43
    sget-object v0, Landroidx/navigation/ActivityNavigator$hostActivity$1;->INSTANCE:Landroidx/navigation/ActivityNavigator$hostActivity$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 531
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    .line 49
    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 532
    :goto_0
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Landroidx/navigation/ActivityNavigator;->hostActivity:Landroid/app/Activity;

    return-void
.end method

.method public static final applyPopAnimationsToPendingTransition(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/navigation/ActivityNavigator;->Companion:Landroidx/navigation/ActivityNavigator$Companion;

    invoke-virtual {v0, p0}, Landroidx/navigation/ActivityNavigator$Companion;->applyPopAnimationsToPendingTransition(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public createDestination()Landroidx/navigation/ActivityNavigator$Destination;
    .locals 1

    .line 53
    new-instance v0, Landroidx/navigation/ActivityNavigator$Destination;

    check-cast p0, Landroidx/navigation/Navigator;

    invoke-direct {v0, p0}, Landroidx/navigation/ActivityNavigator$Destination;-><init>(Landroidx/navigation/Navigator;)V

    return-object v0
.end method

.method public bridge synthetic createDestination()Landroidx/navigation/NavDestination;
    .locals 0

    .line 37
    invoke-virtual {p0}, Landroidx/navigation/ActivityNavigator;->createDestination()Landroidx/navigation/ActivityNavigator$Destination;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavDestination;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/ActivityNavigator;->context:Landroid/content/Context;

    return-object p0
.end method

.method public navigate(Landroidx/navigation/ActivityNavigator$Destination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;
    .locals 9

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator$Destination;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator$Destination;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz p2, :cond_3

    .line 93
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator$Destination;->getDataPattern()Ljava/lang/String;

    move-result-object v1

    .line 95
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\\{(.+?)\\}"

    .line 98
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 99
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 100
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    .line 101
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ""

    .line 103
    invoke-virtual {v2, v3, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 104
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 106
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Could not find "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " in "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " to fill data pattern "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 111
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 115
    :cond_3
    :goto_1
    instance-of p2, p4, Landroidx/navigation/ActivityNavigator$Extras;

    if-eqz p2, :cond_4

    .line 116
    move-object v1, p4

    check-cast v1, Landroidx/navigation/ActivityNavigator$Extras;

    invoke-virtual {v1}, Landroidx/navigation/ActivityNavigator$Extras;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    iget-object v1, p0, Landroidx/navigation/ActivityNavigator;->hostActivity:Landroid/app/Activity;

    if-nez v1, :cond_5

    const/high16 v1, 0x10000000

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_5
    if-eqz p3, :cond_6

    .line 122
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->shouldLaunchSingleTop()Z

    move-result v1

    if-eqz v1, :cond_6

    const/high16 v1, 0x20000000

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_6
    iget-object v1, p0, Landroidx/navigation/ActivityNavigator;->hostActivity:Landroid/app/Activity;

    const-string v2, "android-support-navigation:ActivityNavigator:current"

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 126
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 128
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    const-string v4, "android-support-navigation:ActivityNavigator:source"

    .line 130
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    :cond_7
    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator$Destination;->getId()I

    move-result v1

    .line 135
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Landroidx/navigation/ActivityNavigator;->context:Landroid/content/Context;

    .line 136
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "ActivityNavigator"

    const-string v4, "animator"

    if-eqz p3, :cond_b

    .line 138
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopEnterAnim()I

    move-result v5

    .line 139
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopExitAnim()I

    move-result v6

    if-lez v5, :cond_8

    .line 141
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_8
    if-lez v6, :cond_a

    .line 142
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 146
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Activity destinations do not support Animator resource. Ignoring popEnter resource "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    .line 146
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " and popExit resource "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 148
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 146
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " when launching "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    const-string v7, "android-support-navigation:ActivityNavigator:popEnterAnim"

    .line 153
    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "android-support-navigation:ActivityNavigator:popExitAnim"

    .line 154
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_b
    :goto_2
    if-eqz p2, :cond_d

    .line 158
    check-cast p4, Landroidx/navigation/ActivityNavigator$Extras;

    invoke-virtual {p4}, Landroidx/navigation/ActivityNavigator$Extras;->getActivityOptions()Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p2

    if-eqz p2, :cond_c

    iget-object p4, p0, Landroidx/navigation/ActivityNavigator;->context:Landroid/content/Context;

    .line 160
    invoke-virtual {p2}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p4, v0, p2}, Landroidx/core/app/ActivityCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_c
    iget-object p2, p0, Landroidx/navigation/ActivityNavigator;->context:Landroid/content/Context;

    .line 162
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_d
    iget-object p2, p0, Landroidx/navigation/ActivityNavigator;->context:Landroid/content/Context;

    .line 165
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_3
    if-eqz p3, :cond_12

    iget-object p2, p0, Landroidx/navigation/ActivityNavigator;->hostActivity:Landroid/app/Activity;

    if-eqz p2, :cond_12

    .line 168
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getEnterAnim()I

    move-result p2

    .line 169
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getExitAnim()I

    move-result p3

    if-lez p2, :cond_e

    .line 171
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_f

    :cond_e
    if-lez p3, :cond_10

    .line 172
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_10

    .line 176
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p4, "Activity destinations do not support Animator resource. Ignoring enter resource "

    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    .line 176
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " and exit resource "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 178
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    .line 176
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "when launching "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_10
    if-gez p2, :cond_11

    if-ltz p3, :cond_12

    .line 182
    :cond_11
    invoke-static {p2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 183
    invoke-static {p3, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    iget-object p0, p0, Landroidx/navigation/ActivityNavigator;->hostActivity:Landroid/app/Activity;

    .line 184
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_12
    :goto_4
    const/4 p0, 0x0

    return-object p0

    .line 89
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Destination "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator$Destination;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " does not have an Intent set."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 88
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;
    .locals 0

    .line 37
    check-cast p1, Landroidx/navigation/ActivityNavigator$Destination;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/navigation/ActivityNavigator;->navigate(Landroidx/navigation/ActivityNavigator$Destination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method public popBackStack()Z
    .locals 0

    iget-object p0, p0, Landroidx/navigation/ActivityNavigator;->hostActivity:Landroid/app/Activity;

    if-eqz p0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
