.class public Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final lifecycle:Landroidx/lifecycle/f;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;->lifecycle:Landroidx/lifecycle/f;

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/f;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;->lifecycle:Landroidx/lifecycle/f;

    return-object v0
.end method
