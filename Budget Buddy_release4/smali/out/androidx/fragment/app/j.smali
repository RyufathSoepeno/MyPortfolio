.class public Landroidx/fragment/app/j;
.super Landroidx/activity/ComponentActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/b$d;
.implements Landroidx/core/app/b$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/j$a;
    }
.end annotation


# instance fields
.field final v:Landroidx/fragment/app/n;

.field final w:Landroidx/lifecycle/j;

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    new-instance v0, Landroidx/fragment/app/j$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/j$a;-><init>(Landroidx/fragment/app/j;)V

    invoke-static {v0}, Landroidx/fragment/app/n;->b(Landroidx/fragment/app/p;)Landroidx/fragment/app/n;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    new-instance v0, Landroidx/lifecycle/j;

    invoke-direct {v0, p0}, Landroidx/lifecycle/j;-><init>(Landroidx/lifecycle/i;)V

    iput-object v0, p0, Landroidx/fragment/app/j;->w:Landroidx/lifecycle/j;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/j;->z:Z

    invoke-direct {p0}, Landroidx/fragment/app/j;->q0()V

    return-void
.end method

.method public static synthetic k0(Landroidx/fragment/app/j;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/fragment/app/j;->t0(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic l0(Landroidx/fragment/app/j;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/fragment/app/j;->s0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic m0(Landroidx/fragment/app/j;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/fragment/app/j;->u0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic n0(Landroidx/fragment/app/j;)Landroid/os/Bundle;
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/j;->r0()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private q0()V
    .registers 4

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->o()Ly/c;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/f;

    invoke-direct {v1, p0}, Landroidx/fragment/app/f;-><init>(Landroidx/fragment/app/j;)V

    const-string v2, "android:support:lifecycle"

    invoke-virtual {v0, v2, v1}, Ly/c;->h(Ljava/lang/String;Ly/c$c;)V

    new-instance v0, Landroidx/fragment/app/g;

    invoke-direct {v0, p0}, Landroidx/fragment/app/g;-><init>(Landroidx/fragment/app/j;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->A(Landroidx/core/util/a;)V

    new-instance v0, Landroidx/fragment/app/h;

    invoke-direct {v0, p0}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/j;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->d0(Landroidx/core/util/a;)V

    new-instance v0, Landroidx/fragment/app/i;

    invoke-direct {v0, p0}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/j;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->c0(La/b;)V

    return-void
.end method

.method private synthetic r0()Landroid/os/Bundle;
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/j;->v0()V

    iget-object v0, p0, Landroidx/fragment/app/j;->w:Landroidx/lifecycle/j;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->h(Landroidx/lifecycle/f$b;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method private synthetic s0(Landroid/content/res/Configuration;)V
    .registers 2

    iget-object p1, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->m()V

    return-void
.end method

.method private synthetic t0(Landroid/content/Intent;)V
    .registers 2

    iget-object p1, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->m()V

    return-void
.end method

.method private synthetic u0(Landroid/content/Context;)V
    .registers 3

    iget-object p1, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/n;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private static w0(Landroidx/fragment/app/x;Landroidx/lifecycle/f$c;)Z
    .registers 7

    invoke-virtual {p0}, Landroidx/fragment/app/x;->u0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_18

    goto :goto_9

    :cond_18
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->b0()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->Q()Landroidx/fragment/app/x;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/fragment/app/j;->w0(Landroidx/fragment/app/x;Landroidx/lifecycle/f$c;)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_27
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->X:Landroidx/fragment/app/k0;

    const/4 v3, 0x1

    if-eqz v2, :cond_42

    invoke-virtual {v2}, Landroidx/fragment/app/k0;->a()Landroidx/lifecycle/f;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;

    move-result-object v2

    sget-object v4, Landroidx/lifecycle/f$c;->h:Landroidx/lifecycle/f$c;

    invoke-virtual {v2, v4}, Landroidx/lifecycle/f$c;->a(Landroidx/lifecycle/f$c;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->X:Landroidx/fragment/app/k0;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/k0;->g(Landroidx/lifecycle/f$c;)V

    const/4 v0, 0x1

    :cond_42
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->W:Landroidx/lifecycle/j;

    invoke-virtual {v2}, Landroidx/lifecycle/j;->b()Landroidx/lifecycle/f$c;

    move-result-object v2

    sget-object v4, Landroidx/lifecycle/f$c;->h:Landroidx/lifecycle/f$c;

    invoke-virtual {v2, v4}, Landroidx/lifecycle/f$c;->a(Landroidx/lifecycle/f$c;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->W:Landroidx/lifecycle/j;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/j;->o(Landroidx/lifecycle/f$c;)V

    const/4 v0, 0x1

    goto :goto_9

    :cond_57
    return v0
.end method


# virtual methods
.method public final b(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Landroidx/core/app/l;->X([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/j;->x:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/j;->y:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/j;->z:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_61

    invoke-static {p0}, Landroidx/loader/app/a;->b(Landroidx/lifecycle/i;)Landroidx/loader/app/a;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Landroidx/loader/app/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_61
    iget-object v0, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/x;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/x;->X(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method final o0(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/n;->n(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->m()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/j;->w:Landroidx/lifecycle/j;

    sget-object v0, Landroidx/lifecycle/f$b;->ON_CREATE:Landroidx/lifecycle/f$b;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/j;->h(Landroidx/lifecycle/f$b;)V

    iget-object p1, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->e()V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/j;->o0(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_b
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/j;->o0(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_c
    return-object v0
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->f()V

    iget-object v0, p0, Landroidx/fragment/app/j;->w:Landroidx/lifecycle/j;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->h(Landroidx/lifecycle/f$b;)V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 v0, 0x6

    if-ne p1, v0, :cond_12

    iget-object p1, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/n;->d(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/j;->y:Z

    iget-object v0, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->g()V

    iget-object v0, p0, Landroidx/fragment/app/j;->w:Landroidx/lifecycle/j;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_PAUSE:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->h(Landroidx/lifecycle/f$b;)V

    return-void
.end method

.method protected onPostResume()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/j;->y0()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    iget-object v0, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->m()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->m()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/j;->y:Z

    iget-object v0, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->k()Z

    return-void
.end method

.method protected onStart()V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->m()V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/j;->z:Z

    iget-boolean v0, p0, Landroidx/fragment/app/j;->x:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/j;->x:Z

    iget-object v0, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->c()V

    :cond_17
    iget-object v0, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->k()Z

    iget-object v0, p0, Landroidx/fragment/app/j;->w:Landroidx/lifecycle/j;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->h(Landroidx/lifecycle/f$b;)V

    iget-object v0, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->i()V

    return-void
.end method

.method public onStateNotSaved()V
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->m()V

    return-void
.end method

.method protected onStop()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/j;->z:Z

    invoke-virtual {p0}, Landroidx/fragment/app/j;->v0()V

    iget-object v0, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->j()V

    iget-object v0, p0, Landroidx/fragment/app/j;->w:Landroidx/lifecycle/j;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->h(Landroidx/lifecycle/f$b;)V

    return-void
.end method

.method public p0()Landroidx/fragment/app/x;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/x;

    move-result-object v0

    return-object v0
.end method

.method v0()V
    .registers 3

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/j;->p0()Landroidx/fragment/app/x;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/f$c;->g:Landroidx/lifecycle/f$c;

    invoke-static {v0, v1}, Landroidx/fragment/app/j;->w0(Landroidx/fragment/app/x;Landroidx/lifecycle/f$c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public x0(Landroidx/fragment/app/Fragment;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected y0()V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/j;->w:Landroidx/lifecycle/j;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_RESUME:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->h(Landroidx/lifecycle/f$b;)V

    iget-object v0, p0, Landroidx/fragment/app/j;->v:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->h()V

    return-void
.end method
