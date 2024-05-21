.class public final Landroidx/work/WorkQuery;
.super Ljava/lang/Object;
.source "WorkQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/WorkQuery$Builder;
    }
.end annotation


# instance fields
.field private final mIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private final mStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo$State;",
            ">;"
        }
    .end annotation
.end field

.field private final mTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUniqueWorkNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/work/WorkQuery$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iget-object v0, p1, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/util/List;

    iput-object v0, p0, Landroidx/work/WorkQuery;->mIds:Ljava/util/List;

    .line 53
    iget-object v0, p1, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/util/List;

    iput-object v0, p0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/util/List;

    .line 54
    iget-object v0, p1, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/util/List;

    iput-object v0, p0, Landroidx/work/WorkQuery;->mTags:Ljava/util/List;

    .line 55
    iget-object p1, p1, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/util/List;

    iput-object p1, p0, Landroidx/work/WorkQuery;->mStates:Ljava/util/List;

    return-void
.end method

.method public static fromIds(Ljava/util/List;)Landroidx/work/WorkQuery;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;)",
            "Landroidx/work/WorkQuery;"
        }
    .end annotation

    .line 98
    invoke-static {p0}, Landroidx/work/WorkQuery$Builder;->fromIds(Ljava/util/List;)Landroidx/work/WorkQuery$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/work/WorkQuery$Builder;->build()Landroidx/work/WorkQuery;

    move-result-object p0

    return-object p0
.end method

.method public static varargs fromIds([Ljava/util/UUID;)Landroidx/work/WorkQuery;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ids"
        }
    .end annotation

    .line 109
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/WorkQuery;->fromIds(Ljava/util/List;)Landroidx/work/WorkQuery;

    move-result-object p0

    return-object p0
.end method

.method public static fromStates(Ljava/util/List;)Landroidx/work/WorkQuery;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo$State;",
            ">;)",
            "Landroidx/work/WorkQuery;"
        }
    .end annotation

    .line 164
    invoke-static {p0}, Landroidx/work/WorkQuery$Builder;->fromStates(Ljava/util/List;)Landroidx/work/WorkQuery$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/work/WorkQuery$Builder;->build()Landroidx/work/WorkQuery;

    move-result-object p0

    return-object p0
.end method

.method public static varargs fromStates([Landroidx/work/WorkInfo$State;)Landroidx/work/WorkQuery;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    .line 175
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/WorkQuery$Builder;->fromStates(Ljava/util/List;)Landroidx/work/WorkQuery$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/work/WorkQuery$Builder;->build()Landroidx/work/WorkQuery;

    move-result-object p0

    return-object p0
.end method

.method public static fromTags(Ljava/util/List;)Landroidx/work/WorkQuery;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/work/WorkQuery;"
        }
    .end annotation

    .line 120
    invoke-static {p0}, Landroidx/work/WorkQuery$Builder;->fromTags(Ljava/util/List;)Landroidx/work/WorkQuery$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/work/WorkQuery$Builder;->build()Landroidx/work/WorkQuery;

    move-result-object p0

    return-object p0
.end method

.method public static varargs fromTags([Ljava/lang/String;)Landroidx/work/WorkQuery;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tags"
        }
    .end annotation

    .line 131
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/WorkQuery;->fromTags(Ljava/util/List;)Landroidx/work/WorkQuery;

    move-result-object p0

    return-object p0
.end method

.method public static fromUniqueWorkNames(Ljava/util/List;)Landroidx/work/WorkQuery;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uniqueWorkNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/work/WorkQuery;"
        }
    .end annotation

    .line 153
    invoke-static {p0}, Landroidx/work/WorkQuery$Builder;->fromUniqueWorkNames(Ljava/util/List;)Landroidx/work/WorkQuery$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/work/WorkQuery$Builder;->build()Landroidx/work/WorkQuery;

    move-result-object p0

    return-object p0
.end method

.method public static varargs fromUniqueWorkNames([Ljava/lang/String;)Landroidx/work/WorkQuery;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uniqueWorkNames"
        }
    .end annotation

    .line 142
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/WorkQuery$Builder;->fromUniqueWorkNames(Ljava/util/List;)Landroidx/work/WorkQuery$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/work/WorkQuery$Builder;->build()Landroidx/work/WorkQuery;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/WorkQuery;->mIds:Ljava/util/List;

    return-object p0
.end method

.method public getStates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo$State;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/WorkQuery;->mStates:Ljava/util/List;

    return-object p0
.end method

.method public getTags()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/WorkQuery;->mTags:Ljava/util/List;

    return-object p0
.end method

.method public getUniqueWorkNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/util/List;

    return-object p0
.end method
