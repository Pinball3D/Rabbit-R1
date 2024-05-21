.class public interface abstract annotation Landroidx/room/BuiltInTypeConverters;
.super Ljava/lang/Object;
.source "BuiltInTypeConverters.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroidx/room/BuiltInTypeConverters;
        enums = .enum Landroidx/room/BuiltInTypeConverters$State;->INHERITED:Landroidx/room/BuiltInTypeConverters$State;
        uuid = .enum Landroidx/room/BuiltInTypeConverters$State;->INHERITED:Landroidx/room/BuiltInTypeConverters$State;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/BuiltInTypeConverters$State;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {}
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0002\u0018\u00002\u00020\u0001:\u0001\u0006B\u0014\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003R\u000f\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0005R\u000f\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/room/BuiltInTypeConverters;",
        "",
        "enums",
        "Landroidx/room/BuiltInTypeConverters$State;",
        "uuid",
        "()Landroidx/room/BuiltInTypeConverters$State;",
        "State",
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
    allowedTargets = {}
.end annotation


# virtual methods
.method public abstract enums()Landroidx/room/BuiltInTypeConverters$State;
.end method

.method public abstract uuid()Landroidx/room/BuiltInTypeConverters$State;
.end method
