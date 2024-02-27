.class public Ld/b;
.super Landroidx/fragment/app/j;
.source "SourceFile"

# interfaces
.implements Ld/c;
.implements Landroidx/core/app/u$a;


# instance fields
.field private A:Ld/d;

.field private B:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/j;-><init>()V

    return-void
.end method

.method private G0(Landroid/view/KeyEvent;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_3e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3e

    const/4 p1, 0x1

    return p1

    :cond_3e
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public A0()Ld/a;
    .registers 2

    invoke-virtual {p0}, Ld/b;->z0()Ld/d;

    move-result-object v0

    invoke-virtual {v0}, Ld/d;->m()Ld/a;

    move-result-object v0

    return-object v0
.end method

.method public B(Lh/b$a;)Lh/b;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public B0(Landroidx/core/app/u;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroidx/core/app/u;->b(Landroid/app/Activity;)Landroidx/core/app/u;

    return-void
.end method

.method protected C0(I)V
    .registers 2

    return-void
.end method

.method public D0(Landroidx/core/app/u;)V
    .registers 2

    return-void
.end method

.method public E0()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public F0()Z
    .registers 3

    invoke-virtual {p0}, Ld/b;->P()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p0, v0}, Ld/b;->I0(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {p0}, Landroidx/core/app/u;->d(Landroid/content/Context;)Landroidx/core/app/u;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/b;->B0(Landroidx/core/app/u;)V

    invoke-virtual {p0, v0}, Ld/b;->D0(Landroidx/core/app/u;)V

    invoke-virtual {v0}, Landroidx/core/app/u;->e()V

    :try_start_19
    invoke-static {p0}, Landroidx/core/app/b;->i(Landroid/app/Activity;)V
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_24

    :catch_1d
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_24

    :cond_21
    invoke-virtual {p0, v0}, Ld/b;->H0(Landroid/content/Intent;)V

    :goto_24
    const/4 v0, 0x1

    return v0

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public H0(Landroid/content/Intent;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/app/n;->e(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public I0(Landroid/content/Intent;)Z
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/app/n;->f(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public P()Landroid/content/Intent;
    .registers 2

    invoke-static {p0}, Landroidx/core/app/n;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public Q(Lh/b;)V
    .registers 2

    return-void
.end method

.method public V(Lh/b;)V
    .registers 2

    return-void
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-virtual {p0}, Ld/b;->z0()Ld/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld/d;->d(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p0}, Ld/b;->z0()Ld/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/d;->f(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public closeOptionsMenu()V
    .registers 4

    invoke-virtual {p0}, Ld/b;->A0()Ld/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ld/a;->g()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_17
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_1a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0}, Ld/b;->A0()Ld/a;

    move-result-object v1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_16

    if-eqz v1, :cond_16

    invoke-virtual {v1, p1}, Ld/a;->p(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    invoke-super {p0, p1}, Landroidx/core/app/l;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ld/b;->z0()Ld/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/d;->i(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    invoke-virtual {p0}, Ld/b;->z0()Ld/d;

    move-result-object v0

    invoke-virtual {v0}, Ld/d;->l()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 3

    iget-object v0, p0, Ld/b;->B:Landroid/content/res/Resources;

    if-nez v0, :cond_15

    invoke-static {}, Landroidx/appcompat/widget/s1;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Landroidx/appcompat/widget/s1;

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/s1;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Ld/b;->B:Landroid/content/res/Resources;

    :cond_15
    iget-object v0, p0, Ld/b;->B:Landroid/content/res/Resources;

    if-nez v0, :cond_1d

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1d
    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    invoke-virtual {p0}, Ld/b;->z0()Ld/d;

    move-result-object v0

    invoke-virtual {v0}, Ld/d;->o()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Ld/b;->B:Landroid/content/res/Resources;

    if-eqz v0, :cond_14

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Ld/b;->B:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_14
    invoke-virtual {p0}, Ld/b;->z0()Ld/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/d;->p(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .registers 1

    invoke-virtual {p0}, Ld/b;->E0()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0}, Ld/b;->z0()Ld/d;

    move-result-object v0

    invoke-virtual {v0}, Ld/d;->n()V

    invoke-virtual {v0, p1}, Ld/d;->q(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/j;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/j;->onDestroy()V

    invoke-virtual {p0}, Ld/b;->z0()Ld/d;

    move-result-object v0

    invoke-virtual {v0}, Ld/d;->r()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p2}, Ld/b;->G0(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/j;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    invoke-virtual {p0}, Ld/b;->A0()Ld/a;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x102002c

    if-ne p2, v0, :cond_24

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ld/a;->j()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Ld/b;->F0()Z

    move-result p1

    return p1

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ld/b;->z0()Ld/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/d;->s(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/j;->onPostResume()V

    invoke-virtual {p0}, Ld/b;->z0()Ld/d;

    move-result-object v0

    invoke-virtual {v0}, Ld/d;->t()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ld/b;->z0()Ld/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/d;->u(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/j;->onStart()V

    invoke-virtual {p0}, Ld/b;->z0()Ld/d;

    move-result-object v0

    invoke-virtual {v0}, Ld/d;->v()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/j;->onStop()V

    invoke-virtual {p0}, Ld/b;->z0()Ld/d;

    move-result-object v0

    invoke-virtual {v0}, Ld/d;->w()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Ld/b;->z0()Ld/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Ld/d;->E(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public openOptionsMenu()V
    .registers 4

    invoke-virtual {p0}, Ld/b;->A0()Ld/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ld/a;->q()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_17
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_1a
    return-void
.end method

.method public setContentView(I)V
    .registers 3

    invoke-virtual {p0}, Ld/b;->z0()Ld/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/d;->A(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Ld/b;->z0()Ld/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/d;->B(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-virtual {p0}, Ld/b;->z0()Ld/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld/d;->C(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTheme(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    invoke-virtual {p0}, Ld/b;->z0()Ld/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/d;->D(I)V

    return-void
.end method

.method public z0()Ld/d;
    .registers 2

    iget-object v0, p0, Ld/b;->A:Ld/d;

    if-nez v0, :cond_a

    invoke-static {p0, p0}, Ld/d;->g(Landroid/app/Activity;Ld/c;)Ld/d;

    move-result-object v0

    iput-object v0, p0, Ld/b;->A:Ld/d;

    :cond_a
    iget-object v0, p0, Ld/b;->A:Ld/d;

    return-object v0
.end method
