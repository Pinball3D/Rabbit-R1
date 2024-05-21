.class public final Landroidx/window/embedding/SplitPairFilter;
.super Ljava/lang/Object;
.source "SplitPairFilter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0016\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0014J\u0008\u0010\u0019\u001a\u00020\u0006H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/window/embedding/SplitPairFilter;",
        "",
        "primaryActivityName",
        "Landroid/content/ComponentName;",
        "secondaryActivityName",
        "secondaryActivityIntentAction",
        "",
        "(Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;)V",
        "getPrimaryActivityName",
        "()Landroid/content/ComponentName;",
        "getSecondaryActivityIntentAction",
        "()Ljava/lang/String;",
        "getSecondaryActivityName",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "matchesActivityIntentPair",
        "primaryActivity",
        "Landroid/app/Activity;",
        "secondaryActivityIntent",
        "Landroid/content/Intent;",
        "matchesActivityPair",
        "secondaryActivity",
        "toString",
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


# instance fields
.field private final primaryActivityName:Landroid/content/ComponentName;

.field private final secondaryActivityIntentAction:Ljava/lang/String;

.field private final secondaryActivityName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "primaryActivityName"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "secondaryActivityName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/window/embedding/SplitPairFilter;->primaryActivityName:Landroid/content/ComponentName;

    iput-object v2, v0, Landroidx/window/embedding/SplitPairFilter;->secondaryActivityName:Landroid/content/ComponentName;

    move-object/from16 v3, p3

    iput-object v3, v0, Landroidx/window/embedding/SplitPairFilter;->secondaryActivityIntentAction:Ljava/lang/String;

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "primaryActivityName.packageName"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "primaryActivityName.className"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "secondaryActivityName.packageName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "secondaryActivityName.className"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v4, :cond_9

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v4, :cond_9

    .line 112
    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_8

    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_8

    const-string v12, "*"

    .line 116
    move-object v6, v12

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-static {v5, v6, v13, v14, v15}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    const-string v16, "Wildcard in package name is only allowed at the end."

    if-eqz v6, :cond_1

    const-string v6, "*"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    .line 117
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v5, v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    :goto_0
    move-object v0, v12

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v4, v0, v13, v14, v15}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    const-string v5, "Wildcard in class name is only allowed at the end."

    if-eqz v0, :cond_3

    const-string v7, "*"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, v4

    .line 123
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 120
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_3
    :goto_1
    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    move-object v0, v12

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v6, v0, v13, v14, v15}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v7, "*"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    .line 129
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    goto :goto_2

    .line 126
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_5
    :goto_2
    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v6, v12, v13, v14, v15}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v7, "*"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    .line 135
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_6

    goto :goto_3

    .line 132
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    return-void

    .line 111
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity class name must not be empty."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package name must not be empty"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 142
    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/SplitPairFilter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/window/embedding/SplitPairFilter;->primaryActivityName:Landroid/content/ComponentName;

    .line 144
    check-cast p1, Landroidx/window/embedding/SplitPairFilter;

    iget-object v3, p1, Landroidx/window/embedding/SplitPairFilter;->primaryActivityName:Landroid/content/ComponentName;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/window/embedding/SplitPairFilter;->secondaryActivityName:Landroid/content/ComponentName;

    .line 145
    iget-object v3, p1, Landroidx/window/embedding/SplitPairFilter;->secondaryActivityName:Landroid/content/ComponentName;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Landroidx/window/embedding/SplitPairFilter;->secondaryActivityIntentAction:Ljava/lang/String;

    .line 146
    iget-object p1, p1, Landroidx/window/embedding/SplitPairFilter;->secondaryActivityIntentAction:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getPrimaryActivityName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroidx/window/embedding/SplitPairFilter;->primaryActivityName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getSecondaryActivityIntentAction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/window/embedding/SplitPairFilter;->secondaryActivityIntentAction:Ljava/lang/String;

    return-object p0
.end method

.method public final getSecondaryActivityName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroidx/window/embedding/SplitPairFilter;->secondaryActivityName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/window/embedding/SplitPairFilter;->primaryActivityName:Landroid/content/ComponentName;

    .line 152
    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/window/embedding/SplitPairFilter;->secondaryActivityName:Landroid/content/ComponentName;

    .line 153
    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/window/embedding/SplitPairFilter;->secondaryActivityIntentAction:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final matchesActivityIntentPair(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "primaryActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondaryActivityIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    .line 81
    sget-object v0, Landroidx/window/embedding/MatcherUtils;->INSTANCE:Landroidx/window/embedding/MatcherUtils;

    iget-object v1, p0, Landroidx/window/embedding/SplitPairFilter;->primaryActivityName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, v1}, Landroidx/window/embedding/MatcherUtils;->areComponentsMatching$window_release(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    sget-object p1, Landroidx/window/embedding/MatcherUtils;->INSTANCE:Landroidx/window/embedding/MatcherUtils;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Landroidx/window/embedding/SplitPairFilter;->secondaryActivityName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v2}, Landroidx/window/embedding/MatcherUtils;->areComponentsMatching$window_release(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/window/embedding/SplitPairFilter;->secondaryActivityIntentAction:Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method public final matchesActivityPair(Landroid/app/Activity;Landroid/app/Activity;)Z
    .locals 5

    const-string v0, "primaryActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondaryActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Landroidx/window/embedding/MatcherUtils;->INSTANCE:Landroidx/window/embedding/MatcherUtils;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Landroidx/window/embedding/SplitPairFilter;->primaryActivityName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroidx/window/embedding/MatcherUtils;->areComponentsMatching$window_release(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Landroidx/window/embedding/MatcherUtils;->INSTANCE:Landroidx/window/embedding/MatcherUtils;

    invoke-virtual {p2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Landroidx/window/embedding/SplitPairFilter;->secondaryActivityName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3, v4}, Landroidx/window/embedding/MatcherUtils;->areComponentsMatching$window_release(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 60
    :goto_0
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "secondaryActivity.intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroidx/window/embedding/SplitPairFilter;->matchesActivityIntentPair(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v0, v1

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SplitPairFilter{primaryActivityName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/window/embedding/SplitPairFilter;->primaryActivityName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondaryActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/embedding/SplitPairFilter;->secondaryActivityName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondaryActivityAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/window/embedding/SplitPairFilter;->secondaryActivityIntentAction:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
