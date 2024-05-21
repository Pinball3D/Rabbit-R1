.class public final Landroidx/window/embedding/MatcherUtils;
.super Ljava/lang/Object;
.source "MatcherUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0000\u00a2\u0006\u0002\u0008\u000cJ\u001f\u0010\r\u001a\u00020\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\u000bH\u0000\u00a2\u0006\u0002\u0008\u000fJ\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/window/embedding/MatcherUtils;",
        "",
        "()V",
        "sDebugMatchers",
        "",
        "sMatchersTag",
        "",
        "areActivityOrIntentComponentsMatching",
        "activity",
        "Landroid/app/Activity;",
        "ruleComponent",
        "Landroid/content/ComponentName;",
        "areActivityOrIntentComponentsMatching$window_release",
        "areComponentsMatching",
        "activityComponent",
        "areComponentsMatching$window_release",
        "wildcardMatch",
        "name",
        "pattern",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/window/embedding/MatcherUtils;

.field public static final sDebugMatchers:Z = false

.field public static final sMatchersTag:Ljava/lang/String; = "SplitRuleResolution"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/embedding/MatcherUtils;

    invoke-direct {v0}, Landroidx/window/embedding/MatcherUtils;-><init>()V

    sput-object v0, Landroidx/window/embedding/MatcherUtils;->INSTANCE:Landroidx/window/embedding/MatcherUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    .line 79
    move-object p0, p2

    check-cast p0, Ljava/lang/CharSequence;

    const-string v6, "*"

    move-object v0, v6

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {p0, v0, v7, v8, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v7

    .line 82
    :cond_0
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_1

    return v10

    :cond_1
    const-string v1, "*"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    .line 87
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v11

    const-string v1, "*"

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    if-ne v11, p0, :cond_2

    .line 88
    invoke-static {p2, v6, v7, v8, v9}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 91
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v10

    invoke-virtual {p2, v7, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0, v7, v8, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    return p0

    .line 85
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Name pattern with a wildcard must only contain a single wildcard in the end"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final areActivityOrIntentComponentsMatching$window_release(Landroid/app/Activity;Landroid/content/ComponentName;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ruleComponent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/window/embedding/MatcherUtils;->areComponentsMatching$window_release(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Landroidx/window/embedding/MatcherUtils;->INSTANCE:Landroidx/window/embedding/MatcherUtils;

    .line 70
    invoke-virtual {p1, p0, p2}, Landroidx/window/embedding/MatcherUtils;->areComponentsMatching$window_release(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public final areComponentsMatching$window_release(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 6

    const-string v0, "ruleComponent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "*"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 34
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "activityComponent.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v0, v2, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 40
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 41
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "activityComponent.packageName"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ruleComponent.packageName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Landroidx/window/embedding/MatcherUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    .line 42
    :goto_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 43
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "activityComponent.className"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v3, "ruleComponent.className"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/MatcherUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move p0, v2

    goto :goto_4

    :cond_5
    :goto_3
    move p0, v1

    :goto_4
    if-eqz v0, :cond_6

    if-eqz p0, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    return v1

    .line 36
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wildcard can only be part of the rule."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
