.class Landroidx/appcompat/widget/Toolbar$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field e:Landroidx/appcompat/view/menu/e;

.field f:Landroidx/appcompat/view/menu/g;

.field final synthetic g:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->g:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/appcompat/view/menu/e;Z)V
    .registers 3

    return-void
.end method

.method public d(Landroid/content/Context;Landroidx/appcompat/view/menu/e;)V
    .registers 4

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->e:Landroidx/appcompat/view/menu/e;

    if-eqz p1, :cond_b

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$d;->f:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_b

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/e;->f(Landroidx/appcompat/view/menu/g;)Z

    :cond_b
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar$d;->e:Landroidx/appcompat/view/menu/e;

    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/m;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public f(Z)V
    .registers 6

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->f:Landroidx/appcompat/view/menu/g;

    if-eqz p1, :cond_28

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->e:Landroidx/appcompat/view/menu/e;

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, p1, :cond_1f

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar$d;->e:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/e;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/widget/Toolbar$d;->f:Landroidx/appcompat/view/menu/g;

    if-ne v2, v3, :cond_1c

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1f
    :goto_1f
    if-nez v0, :cond_28

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->e:Landroidx/appcompat/view/menu/e;

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$d;->f:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/Toolbar$d;->i(Landroidx/appcompat/view/menu/e;Landroidx/appcompat/view/menu/g;)Z

    :cond_28
    return-void
.end method

.method public h()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public i(Landroidx/appcompat/view/menu/e;Landroidx/appcompat/view/menu/g;)Z
    .registers 4

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->g:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->m:Landroid/view/View;

    instance-of v0, p1, Lh/c;

    if-eqz v0, :cond_d

    check-cast p1, Lh/c;

    invoke-interface {p1}, Lh/c;->onActionViewCollapsed()V

    :cond_d
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->g:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->m:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->g:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->l:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->g:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/widget/Toolbar;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->a()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar$d;->f:Landroidx/appcompat/view/menu/g;

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->g:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/g;->r(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public j(Landroidx/appcompat/view/menu/e;Landroidx/appcompat/view/menu/g;)Z
    .registers 6

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->g:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->g()V

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->g:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->l:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$d;->g:Landroidx/appcompat/widget/Toolbar;

    if-eq p1, v0, :cond_23

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1c

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1c
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->g:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->l:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_23
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->g:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/g;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroidx/appcompat/widget/Toolbar;->m:Landroid/view/View;

    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar$d;->f:Landroidx/appcompat/view/menu/g;

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->g:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$d;->g:Landroidx/appcompat/widget/Toolbar;

    if-eq p1, v0, :cond_65

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_44

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->m:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_44
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->g:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->m()Landroidx/appcompat/widget/Toolbar$e;

    move-result-object p1

    const v0, 0x800003

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar$d;->g:Landroidx/appcompat/widget/Toolbar;

    iget v2, v1, Landroidx/appcompat/widget/Toolbar;->r:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v0, v2

    iput v0, p1, Ld/a$a;->a:I

    const/4 v0, 0x2

    iput v0, p1, Landroidx/appcompat/widget/Toolbar$e;->b:I

    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar;->m:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->g:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->m:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_65
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->g:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->G()V

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->g:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/g;->r(Z)V

    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar$d;->g:Landroidx/appcompat/widget/Toolbar;

    iget-object p2, p2, Landroidx/appcompat/widget/Toolbar;->m:Landroid/view/View;

    instance-of v0, p2, Lh/c;

    if-eqz v0, :cond_80

    check-cast p2, Lh/c;

    invoke-interface {p2}, Lh/c;->onActionViewExpanded()V

    :cond_80
    return p1
.end method
