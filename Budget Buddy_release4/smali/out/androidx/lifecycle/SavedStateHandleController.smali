.class final Landroidx/lifecycle/SavedStateHandleController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/g;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private final c:Landroidx/lifecycle/t;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/lifecycle/t;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandleController;->c:Landroidx/lifecycle/t;

    return-void
.end method


# virtual methods
.method public d(Landroidx/lifecycle/i;Landroidx/lifecycle/f$b;)V
    .registers 4

    sget-object v0, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;

    if-ne p2, v0, :cond_e

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    invoke-interface {p1}, Landroidx/lifecycle/i;->a()Landroidx/lifecycle/f;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/f;->c(Landroidx/lifecycle/h;)V

    :cond_e
    return-void
.end method

.method h(Ly/c;Landroidx/lifecycle/f;)V
    .registers 4

    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    invoke-virtual {p2, p0}, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/h;)V

    iget-object p2, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Ljava/lang/String;

    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandleController;->c:Landroidx/lifecycle/t;

    invoke-virtual {v0}, Landroidx/lifecycle/t;->d()Ly/c$c;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ly/c;->h(Ljava/lang/String;Ly/c$c;)V

    return-void

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached to lifecycleOwner"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method i()Landroidx/lifecycle/t;
    .registers 2

    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandleController;->c:Landroidx/lifecycle/t;

    return-object v0
.end method

.method j()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    return v0
.end method
