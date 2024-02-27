.class Landroidx/fragment/app/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/e;
.implements Ly/e;
.implements Landroidx/lifecycle/e0;


# instance fields
.field private final e:Landroidx/fragment/app/Fragment;

.field private final f:Landroidx/lifecycle/d0;

.field private g:Landroidx/lifecycle/a0$b;

.field private h:Landroidx/lifecycle/j;

.field private i:Ly/d;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/d0;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/k0;->h:Landroidx/lifecycle/j;

    iput-object v0, p0, Landroidx/fragment/app/k0;->i:Ly/d;

    iput-object p1, p0, Landroidx/fragment/app/k0;->e:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/k0;->f:Landroidx/lifecycle/d0;

    return-void
.end method


# virtual methods
.method public H()Landroidx/lifecycle/a0$b;
    .registers 5

    iget-object v0, p0, Landroidx/fragment/app/k0;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->H()Landroidx/lifecycle/a0$b;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/k0;->e:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->Z:Landroidx/lifecycle/a0$b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iput-object v0, p0, Landroidx/fragment/app/k0;->g:Landroidx/lifecycle/a0$b;

    return-object v0

    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/k0;->g:Landroidx/lifecycle/a0$b;

    if-nez v0, :cond_42

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/fragment/app/k0;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->N1()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_22
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_35

    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_2e

    move-object v0, v1

    check-cast v0, Landroid/app/Application;

    goto :goto_35

    :cond_2e
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_22

    :cond_35
    :goto_35
    new-instance v1, Landroidx/lifecycle/x;

    iget-object v2, p0, Landroidx/fragment/app/k0;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroidx/lifecycle/x;-><init>(Landroid/app/Application;Ly/e;Landroid/os/Bundle;)V

    iput-object v1, p0, Landroidx/fragment/app/k0;->g:Landroidx/lifecycle/a0$b;

    :cond_42
    iget-object v0, p0, Landroidx/fragment/app/k0;->g:Landroidx/lifecycle/a0$b;

    return-object v0
.end method

.method public I()Lw/a;
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/k0;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->N1()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_a
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1c

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_15

    check-cast v0, Landroid/app/Application;

    goto :goto_1d

    :cond_15
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_a

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    new-instance v1, Lw/d;

    invoke-direct {v1}, Lw/d;-><init>()V

    if-eqz v0, :cond_29

    sget-object v2, Landroidx/lifecycle/a0$a;->g:Lw/a$b;

    invoke-virtual {v1, v2, v0}, Lw/d;->c(Lw/a$b;Ljava/lang/Object;)V

    :cond_29
    sget-object v0, Landroidx/lifecycle/u;->a:Lw/a$b;

    iget-object v2, p0, Landroidx/fragment/app/k0;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0, v2}, Lw/d;->c(Lw/a$b;Ljava/lang/Object;)V

    sget-object v0, Landroidx/lifecycle/u;->b:Lw/a$b;

    invoke-virtual {v1, v0, p0}, Lw/d;->c(Lw/a$b;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/fragment/app/k0;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_48

    sget-object v0, Landroidx/lifecycle/u;->c:Lw/a$b;

    iget-object v2, p0, Landroidx/fragment/app/k0;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lw/d;->c(Lw/a$b;Ljava/lang/Object;)V

    :cond_48
    return-object v1
.end method

.method public R()Landroidx/lifecycle/d0;
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/k0;->c()V

    iget-object v0, p0, Landroidx/fragment/app/k0;->f:Landroidx/lifecycle/d0;

    return-object v0
.end method

.method public a()Landroidx/lifecycle/f;
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/k0;->c()V

    iget-object v0, p0, Landroidx/fragment/app/k0;->h:Landroidx/lifecycle/j;

    return-object v0
.end method

.method b(Landroidx/lifecycle/f$b;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/k0;->h:Landroidx/lifecycle/j;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/j;->h(Landroidx/lifecycle/f$b;)V

    return-void
.end method

.method c()V
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/k0;->h:Landroidx/lifecycle/j;

    if-nez v0, :cond_14

    new-instance v0, Landroidx/lifecycle/j;

    invoke-direct {v0, p0}, Landroidx/lifecycle/j;-><init>(Landroidx/lifecycle/i;)V

    iput-object v0, p0, Landroidx/fragment/app/k0;->h:Landroidx/lifecycle/j;

    invoke-static {p0}, Ly/d;->a(Ly/e;)Ly/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/k0;->i:Ly/d;

    invoke-virtual {v0}, Ly/d;->c()V

    :cond_14
    return-void
.end method

.method d()Z
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/k0;->h:Landroidx/lifecycle/j;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method e(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/k0;->i:Ly/d;

    invoke-virtual {v0, p1}, Ly/d;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method f(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/k0;->i:Ly/d;

    invoke-virtual {v0, p1}, Ly/d;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method g(Landroidx/lifecycle/f$c;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/k0;->h:Landroidx/lifecycle/j;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/j;->o(Landroidx/lifecycle/f$c;)V

    return-void
.end method

.method public o()Ly/c;
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/k0;->c()V

    iget-object v0, p0, Landroidx/fragment/app/k0;->i:Ly/d;

    invoke-virtual {v0}, Ly/d;->b()Ly/c;

    move-result-object v0

    return-object v0
.end method
