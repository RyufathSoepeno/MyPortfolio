.class public Ln0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lk0/c;)Landroidx/lifecycle/f;
    .registers 1

    invoke-interface {p0}, Lk0/c;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;

    invoke-virtual {p0}, Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;->getLifecycle()Landroidx/lifecycle/f;

    move-result-object p0

    return-object p0
.end method
