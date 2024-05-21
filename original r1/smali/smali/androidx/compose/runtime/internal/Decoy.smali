.class public interface abstract annotation Landroidx/compose/runtime/internal/Decoy;
.super Ljava/lang/Object;
.source "Decoy.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0008\u0087\u0002\u0018\u00002\u00020\u0001B\u001c\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0005\"\u00020\u0003R\u0017\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0006R\u000f\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/compose/runtime/internal/Decoy;",
        "",
        "targetName",
        "",
        "signature",
        "",
        "()[Ljava/lang/String;",
        "()Ljava/lang/String;",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/annotation/Target;
    allowedTargets = {
        .enum Lkotlin/annotation/AnnotationTarget;->FUNCTION:Lkotlin/annotation/AnnotationTarget;,
        .enum Lkotlin/annotation/AnnotationTarget;->CONSTRUCTOR:Lkotlin/annotation/AnnotationTarget;
    }
.end annotation


# virtual methods
.method public abstract signature()[Ljava/lang/String;
.end method

.method public abstract targetName()Ljava/lang/String;
.end method
