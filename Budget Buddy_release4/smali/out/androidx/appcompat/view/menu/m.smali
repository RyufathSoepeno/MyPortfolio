.class public Landroidx/appcompat/view/menu/m;
.super Landroidx/appcompat/view/menu/e;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private B:Landroidx/appcompat/view/menu/e;

.field private C:Landroidx/appcompat/view/menu/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/e;Landroidx/appcompat/view/menu/g;)V
    .registers 4

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/e;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/m;->B:Landroidx/appcompat/view/menu/e;

    iput-object p3, p0, Landroidx/appcompat/view/menu/m;->C:Landroidx/appcompat/view/menu/g;

    return-void
.end method


# virtual methods
.method public D()Landroidx/appcompat/view/menu/e;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->B:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->D()Landroidx/appcompat/view/menu/e;

    move-result-object v0

    return-object v0
.end method

.method public F()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->B:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->F()Z

    move-result v0

    return v0
.end method

.method public G()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->B:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->G()Z

    move-result v0

    return v0
.end method

.method public H()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->B:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->H()Z

    move-result v0

    return v0
.end method

.method public R(Landroidx/appcompat/view/menu/e$a;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->B:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/e;->R(Landroidx/appcompat/view/menu/e$a;)V

    return-void
.end method

.method public e0()Landroid/view/Menu;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->B:Landroidx/appcompat/view/menu/e;

    return-object v0
.end method

.method public f(Landroidx/appcompat/view/menu/g;)Z
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->B:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/e;->f(Landroidx/appcompat/view/menu/g;)Z

    move-result p1

    return p1
.end method

.method public getItem()Landroid/view/MenuItem;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->C:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method

.method h(Landroidx/appcompat/view/menu/e;Landroid/view/MenuItem;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/e;->h(Landroidx/appcompat/view/menu/e;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->B:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/e;->h(Landroidx/appcompat/view/menu/e;Landroid/view/MenuItem;)Z

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

.method public k(Landroidx/appcompat/view/menu/g;)Z
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->B:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/e;->k(Landroidx/appcompat/view/menu/g;)Z

    move-result p1

    return p1
.end method

.method public setGroupDividerEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->B:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/e;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .registers 2

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/e;->U(I)Landroidx/appcompat/view/menu/e;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 2

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/e;->V(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/view/menu/e;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .registers 2

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/e;->X(I)Landroidx/appcompat/view/menu/e;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 2

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/e;->Y(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/e;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .registers 2

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/e;->Z(Landroid/view/View;)Landroidx/appcompat/view/menu/e;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->C:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->C:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->B:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/e;->setQwertyMode(Z)V

    return-void
.end method

.method public t()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->C:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->getItemId()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroidx/appcompat/view/menu/e;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
