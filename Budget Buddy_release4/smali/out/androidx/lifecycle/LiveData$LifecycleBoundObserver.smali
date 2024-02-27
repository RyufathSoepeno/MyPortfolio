.class Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$c;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>.c;",
        "Landroidx/lifecycle/g;"
    }
.end annotation


# instance fields
.field final e:Landroidx/lifecycle/i;

.field final synthetic f:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/i;Landroidx/lifecycle/o;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/i;",
            "Landroidx/lifecycle/o<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/LiveData;

    invoke-direct {p0, p1, p3}, Landroidx/lifecycle/LiveData$c;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/o;)V

    iput-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/i;

    return-void
.end method


# virtual methods
.method public d(Landroidx/lifecycle/i;Landroidx/lifecycle/f$b;)V
    .registers 4

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/i;

    invoke-interface {p1}, Landroidx/lifecycle/i;->a()Landroidx/lifecycle/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;

    move-result-object p1

    sget-object p2, Landroidx/lifecycle/f$c;->e:Landroidx/lifecycle/f$c;

    if-ne p1, p2, :cond_16

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Landroidx/lifecycle/LiveData$c;->a:Landroidx/lifecycle/o;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/o;)V

    return-void

    :cond_16
    const/4 p2, 0x0

    :goto_17
    if-eq p2, p1, :cond_2e

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->k()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/lifecycle/LiveData$c;->h(Z)V

    iget-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/i;

    invoke-interface {p2}, Landroidx/lifecycle/i;->a()Landroidx/lifecycle/f;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;

    move-result-object p2

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    goto :goto_17

    :cond_2e
    return-void
.end method

.method i()V
    .registers 2

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/i;

    invoke-interface {v0}, Landroidx/lifecycle/i;->a()Landroidx/lifecycle/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/f;->c(Landroidx/lifecycle/h;)V

    return-void
.end method

.method j(Landroidx/lifecycle/i;)Z
    .registers 3

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/i;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method k()Z
    .registers 3

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/i;

    invoke-interface {v0}, Landroidx/lifecycle/i;->a()Landroidx/lifecycle/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/f$c;->h:Landroidx/lifecycle/f$c;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/f$c;->a(Landroidx/lifecycle/f$c;)Z

    move-result v0

    return v0
.end method
