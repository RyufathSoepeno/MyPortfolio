.class public interface abstract Landroidx/window/layout/WindowBackend;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract registerLayoutChangeCallback(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/a<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregisterLayoutChangeCallback(Landroidx/core/util/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/a<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation
.end method
