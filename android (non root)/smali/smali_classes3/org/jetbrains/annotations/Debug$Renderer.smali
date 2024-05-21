.class public interface abstract annotation Lorg/jetbrains/annotations/Debug$Renderer;
.super Ljava/lang/Object;
.source "Debug.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/jetbrains/annotations/Debug$Renderer;
        childrenArray = ""
        hasChildren = ""
        text = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jetbrains/annotations/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Renderer"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract childrenArray()Ljava/lang/String;
.end method

.method public abstract hasChildren()Ljava/lang/String;
.end method

.method public abstract text()Ljava/lang/String;
.end method
