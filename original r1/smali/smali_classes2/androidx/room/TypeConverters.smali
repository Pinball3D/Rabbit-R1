.class public interface abstract annotation Landroidx/room/TypeConverters;
.super Ljava/lang/Object;
.source "TypeConverters.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroidx/room/TypeConverters;
        builtInTypeConverters = .subannotation Landroidx/room/BuiltInTypeConverters;
        .end subannotation
        value = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0002\u0018\u00002\u00020\u0001B(\u0012\u001c\u0008\u0002\u0010\u0002\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00040\u0003\"\u0006\u0012\u0002\u0008\u00030\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006R\u000f\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0007R\u001b\u0010\u0002\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00040\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/room/TypeConverters;",
        "",
        "value",
        "",
        "Lkotlin/reflect/KClass;",
        "builtInTypeConverters",
        "Landroidx/room/BuiltInTypeConverters;",
        "()Landroidx/room/BuiltInTypeConverters;",
        "()[Ljava/lang/Class;",
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
        .enum Lkotlin/annotation/AnnotationTarget;->FUNCTION:Lkotlin/annotation/AnnotationTarget;,
        .enum Lkotlin/annotation/AnnotationTarget;->VALUE_PARAMETER:Lkotlin/annotation/AnnotationTarget;,
        .enum Lkotlin/annotation/AnnotationTarget;->FIELD:Lkotlin/annotation/AnnotationTarget;,
        .enum Lkotlin/annotation/AnnotationTarget;->CLASS:Lkotlin/annotation/AnnotationTarget;
    }
.end annotation


# virtual methods
.method public abstract builtInTypeConverters()Landroidx/room/BuiltInTypeConverters;
.end method

.method public abstract value()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method
