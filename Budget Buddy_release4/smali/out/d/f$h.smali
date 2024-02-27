.class Ld/f$h;
.super Lh/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic f:Ld/f;


# direct methods
.method constructor <init>(Ld/f;Landroid/view/Window$Callback;)V
    .registers 3

    iput-object p1, p0, Ld/f$h;->f:Ld/f;

    invoke-direct {p0, p2}, Lh/m;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method final b(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    new-instance v0, Lh/f$a;

    iget-object v1, p0, Ld/f$h;->f:Ld/f;

    iget-object v1, v1, Ld/f;->i:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lh/f$a;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    iget-object p1, p0, Ld/f$h;->f:Ld/f;

    invoke-virtual {p1, v0}, Ld/f;->F0(Lh/b$a;)Lh/b;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {v0, p1}, Lh/f$a;->e(Lh/b;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Ld/f$h;->f:Ld/f;

    invoke-virtual {v0, p1}, Ld/f;->T(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0, p1}, Lh/m;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1}, Lh/m;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Ld/f$h;->f:Ld/f;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ld/f;->r0(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method public onContentChanged()V
    .registers 1

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    if-nez p1, :cond_8

    instance-of v0, p2, Landroidx/appcompat/view/menu/e;

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-super {p0, p1, p2}, Lh/m;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lh/m;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p2, p0, Ld/f$h;->f:Ld/f;

    invoke-virtual {p2, p1}, Ld/f;->u0(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lh/m;->onPanelClosed(ILandroid/view/Menu;)V

    iget-object p2, p0, Ld/f$h;->f:Ld/f;

    invoke-virtual {p2, p1}, Ld/f;->v0(I)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 7

    instance-of v0, p3, Landroidx/appcompat/view/menu/e;

    if-eqz v0, :cond_8

    move-object v0, p3

    check-cast v0, Landroidx/appcompat/view/menu/e;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x0

    if-nez p1, :cond_f

    if-nez v0, :cond_f

    return v1

    :cond_f
    if-eqz v0, :cond_15

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/e;->a0(Z)V

    :cond_15
    invoke-super {p0, p1, p2, p3}, Lh/m;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_1e

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/e;->a0(Z)V

    :cond_1e
    return p1
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Ld/f$h;->f:Ld/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ld/f;->d0(IZ)Ld/f$q;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, v0, Ld/f$q;->j:Landroidx/appcompat/view/menu/e;

    if-eqz v0, :cond_12

    invoke-super {p0, p1, v0, p3}, Lh/m;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_15

    :cond_12
    invoke-super {p0, p1, p2, p3}, Lh/m;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_15
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    iget-object v0, p0, Ld/f$h;->f:Ld/f;

    invoke-virtual {v0}, Ld/f;->m0()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0, p1}, Ld/f$h;->b(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_15
    invoke-super {p0, p1}, Lh/m;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4

    iget-object v0, p0, Ld/f$h;->f:Ld/f;

    invoke-virtual {v0}, Ld/f;->m0()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p2, :cond_b

    goto :goto_10

    :cond_b
    invoke-virtual {p0, p1}, Ld/f$h;->b(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_10
    :goto_10
    invoke-super {p0, p1, p2}, Lh/m;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
