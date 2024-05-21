.class public interface abstract annotation Landroidx/room/Fts4;
.super Ljava/lang/Object;
.source "Fts4.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroidx/room/Fts4;
        contentEntity = Ljava/lang/Object;
        languageId = ""
        matchInfo = .enum Landroidx/room/FtsOptions$MatchInfo;->FTS4:Landroidx/room/FtsOptions$MatchInfo;
        notIndexed = {}
        order = .enum Landroidx/room/FtsOptions$Order;->ASC:Landroidx/room/FtsOptions$Order;
        prefix = {}
        tokenizer = "simple"
        tokenizerArgs = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0087\u0002\u0018\u00002\u00020\u0001B`\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u000c\u0008\u0002\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fR\u0013\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0007\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0010R\u000f\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0011R\u000f\u0010\t\u001a\u00020\n\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0012R\u0015\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0013R\u000f\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0014R\u000f\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0015R\u000f\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0011R\u0015\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/room/Fts4;",
        "",
        "tokenizer",
        "",
        "tokenizerArgs",
        "",
        "contentEntity",
        "Lkotlin/reflect/KClass;",
        "languageId",
        "matchInfo",
        "Landroidx/room/FtsOptions$MatchInfo;",
        "notIndexed",
        "prefix",
        "",
        "order",
        "Landroidx/room/FtsOptions$Order;",
        "()Ljava/lang/Class;",
        "()Ljava/lang/String;",
        "()Landroidx/room/FtsOptions$MatchInfo;",
        "()[Ljava/lang/String;",
        "()Landroidx/room/FtsOptions$Order;",
        "()[I",
        "room-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->BINARY:Lkotlin/annotation/AnnotationRetention;
.end annotation

.annotation runtime Lkotlin/annotation/Target;
    allowedTargets = {
        .enum Lkotlin/annotation/AnnotationTarget;->CLASS:Lkotlin/annotation/AnnotationTarget;
    }
.end annotation


# virtual methods
.method public abstract contentEntity()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract languageId()Ljava/lang/String;
.end method

.method public abstract matchInfo()Landroidx/room/FtsOptions$MatchInfo;
.end method

.method public abstract notIndexed()[Ljava/lang/String;
.end method

.method public abstract order()Landroidx/room/FtsOptions$Order;
.end method

.method public abstract prefix()[I
.end method

.method public abstract tokenizer()Ljava/lang/String;
.end method

.method public abstract tokenizerArgs()[Ljava/lang/String;
.end method
