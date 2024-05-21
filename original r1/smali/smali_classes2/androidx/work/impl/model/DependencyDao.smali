.class public interface abstract Landroidx/work/impl/model/DependencyDao;
.super Ljava/lang/Object;
.source "DependencyDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0004H\'J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0004H\'J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0004H\'J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0004H\'J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\'\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000e\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/work/impl/model/DependencyDao;",
        "",
        "getDependentWorkIds",
        "",
        "",
        "id",
        "getPrerequisites",
        "hasCompletedAllPrerequisites",
        "",
        "hasDependents",
        "insertDependency",
        "",
        "dependency",
        "Landroidx/work/impl/model/Dependency;",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrerequisites(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasCompletedAllPrerequisites(Ljava/lang/String;)Z
.end method

.method public abstract hasDependents(Ljava/lang/String;)Z
.end method

.method public abstract insertDependency(Landroidx/work/impl/model/Dependency;)V
.end method
