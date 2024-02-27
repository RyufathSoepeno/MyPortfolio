.class public final Landroidx/lifecycle/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw/a$b<",
            "Ly/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lw/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw/a$b<",
            "Landroidx/lifecycle/e0;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lw/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw/a$b<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/lifecycle/u$b;

    invoke-direct {v0}, Landroidx/lifecycle/u$b;-><init>()V

    sput-object v0, Landroidx/lifecycle/u;->a:Lw/a$b;

    new-instance v0, Landroidx/lifecycle/u$c;

    invoke-direct {v0}, Landroidx/lifecycle/u$c;-><init>()V

    sput-object v0, Landroidx/lifecycle/u;->b:Lw/a$b;

    new-instance v0, Landroidx/lifecycle/u$a;

    invoke-direct {v0}, Landroidx/lifecycle/u$a;-><init>()V

    sput-object v0, Landroidx/lifecycle/u;->c:Lw/a$b;

    return-void
.end method

.method public static final a(Lw/a;)Landroidx/lifecycle/t;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/lifecycle/u;->a:Lw/a$b;

    invoke-virtual {p0, v0}, Lw/a;->a(Lw/a$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly/e;

    if-eqz v0, :cond_40

    sget-object v1, Landroidx/lifecycle/u;->b:Lw/a$b;

    invoke-virtual {p0, v1}, Lw/a;->a(Lw/a$b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/e0;

    if-eqz v1, :cond_38

    sget-object v2, Landroidx/lifecycle/u;->c:Lw/a$b;

    invoke-virtual {p0, v2}, Lw/a;->a(Lw/a$b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    sget-object v3, Landroidx/lifecycle/a0$c;->c:Lw/a$b;

    invoke-virtual {p0, v3}, Lw/a;->a(Lw/a$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_30

    invoke-static {v0, v1, p0, v2}, Landroidx/lifecycle/u;->b(Ly/e;Landroidx/lifecycle/e0;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/t;

    move-result-object p0

    return-object p0

    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final b(Ly/e;Landroidx/lifecycle/e0;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/t;
    .registers 5

    invoke-static {p0}, Landroidx/lifecycle/u;->d(Ly/e;)Landroidx/lifecycle/v;

    move-result-object p0

    invoke-static {p1}, Landroidx/lifecycle/u;->e(Landroidx/lifecycle/e0;)Landroidx/lifecycle/w;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/w;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/t;

    if-nez v0, :cond_25

    sget-object v0, Landroidx/lifecycle/t;->f:Landroidx/lifecycle/t$a;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/v;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0, p3}, Landroidx/lifecycle/t$a;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/t;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/lifecycle/w;->f()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    return-object v0
.end method

.method public static final c(Ly/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ly/e;",
            ":",
            "Landroidx/lifecycle/e0;",
            ">(TT;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroidx/lifecycle/i;->a()Landroidx/lifecycle/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;

    move-result-object v0

    const-string v1, "lifecycle.currentState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Landroidx/lifecycle/f$c;->f:Landroidx/lifecycle/f$c;

    if-eq v0, v1, :cond_1d

    sget-object v1, Landroidx/lifecycle/f$c;->g:Landroidx/lifecycle/f$c;

    if-ne v0, v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    if-eqz v0, :cond_4c

    invoke-interface {p0}, Ly/e;->o()Ly/c;

    move-result-object v0

    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v0, v1}, Ly/c;->c(Ljava/lang/String;)Ly/c$c;

    move-result-object v0

    if-nez v0, :cond_4b

    new-instance v0, Landroidx/lifecycle/v;

    invoke-interface {p0}, Ly/e;->o()Ly/c;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroidx/lifecycle/e0;

    invoke-direct {v0, v2, v3}, Landroidx/lifecycle/v;-><init>(Ly/c;Landroidx/lifecycle/e0;)V

    invoke-interface {p0}, Ly/e;->o()Ly/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ly/c;->h(Ljava/lang/String;Ly/c$c;)V

    invoke-interface {p0}, Landroidx/lifecycle/i;->a()Landroidx/lifecycle/f;

    move-result-object p0

    new-instance v1, Landroidx/lifecycle/SavedStateHandleAttacher;

    invoke-direct {v1, v0}, Landroidx/lifecycle/SavedStateHandleAttacher;-><init>(Landroidx/lifecycle/v;)V

    invoke-virtual {p0, v1}, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/h;)V

    :cond_4b
    return-void

    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(Ly/e;)Landroidx/lifecycle/v;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ly/e;->o()Ly/c;

    move-result-object p0

    const-string v0, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {p0, v0}, Ly/c;->c(Ljava/lang/String;)Ly/c$c;

    move-result-object p0

    instance-of v0, p0, Landroidx/lifecycle/v;

    if-eqz v0, :cond_16

    check-cast p0, Landroidx/lifecycle/v;

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    if-eqz p0, :cond_1a

    return-object p0

    :cond_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final e(Landroidx/lifecycle/e0;)Landroidx/lifecycle/w;
    .registers 5

    const-class v0, Landroidx/lifecycle/w;

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lw/c;

    invoke-direct {v1}, Lw/c;-><init>()V

    sget-object v2, Landroidx/lifecycle/u$d;->e:Landroidx/lifecycle/u$d;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Class;)Ln1/c;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lw/c;->a(Ln1/c;Lj1/l;)V

    invoke-virtual {v1}, Lw/c;->b()Landroidx/lifecycle/a0$b;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/a0;

    invoke-direct {v2, p0, v1}, Landroidx/lifecycle/a0;-><init>(Landroidx/lifecycle/e0;Landroidx/lifecycle/a0$b;)V

    const-string p0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    invoke-virtual {v2, p0, v0}, Landroidx/lifecycle/a0;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/z;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/w;

    return-object p0
.end method
