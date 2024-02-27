.class public final Landroidx/lifecycle/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly/c$c;


# instance fields
.field private final a:Ly/c;

.field private b:Z

.field private c:Landroid/os/Bundle;

.field private final d:La1/e;


# direct methods
.method public constructor <init>(Ly/c;Landroidx/lifecycle/e0;)V
    .registers 4

    const-string v0, "savedStateRegistry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelStoreOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/v;->a:Ly/c;

    new-instance p1, Landroidx/lifecycle/v$a;

    invoke-direct {p1, p2}, Landroidx/lifecycle/v$a;-><init>(Landroidx/lifecycle/e0;)V

    invoke-static {p1}, La1/f;->a(Lj1/a;)La1/e;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/v;->d:La1/e;

    return-void
.end method

.method private final c()Landroidx/lifecycle/w;
    .registers 2

    iget-object v0, p0, Landroidx/lifecycle/v;->d:La1/e;

    invoke-interface {v0}, La1/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/w;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/lifecycle/v;->c:Landroid/os/Bundle;

    if-eqz v1, :cond_c

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_c
    invoke-direct {p0}, Landroidx/lifecycle/v;->c()Landroidx/lifecycle/w;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/w;->f()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/t;

    invoke-virtual {v2}, Landroidx/lifecycle/t;->d()Ly/c$c;

    move-result-object v2

    invoke-interface {v2}, Ly/c$c;->a()Landroid/os/Bundle;

    move-result-object v2

    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1c

    :cond_48
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/lifecycle/v;->b:Z

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/lifecycle/v;->d()V

    iget-object v0, p0, Landroidx/lifecycle/v;->c:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    :goto_13
    iget-object v2, p0, Landroidx/lifecycle/v;->c:Landroid/os/Bundle;

    if-eqz v2, :cond_1a

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1a
    iget-object p1, p0, Landroidx/lifecycle/v;->c:Landroid/os/Bundle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p1

    if-ne p1, v2, :cond_27

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    if-eqz v2, :cond_2c

    iput-object v1, p0, Landroidx/lifecycle/v;->c:Landroid/os/Bundle;

    :cond_2c
    return-object v0
.end method

.method public final d()V
    .registers 3

    iget-boolean v0, p0, Landroidx/lifecycle/v;->b:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Landroidx/lifecycle/v;->a:Ly/c;

    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v0, v1}, Ly/c;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/v;->c:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/v;->b:Z

    invoke-direct {p0}, Landroidx/lifecycle/v;->c()Landroidx/lifecycle/w;

    :cond_14
    return-void
.end method
