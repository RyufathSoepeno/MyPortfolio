.class Ld/f$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field private a:Lh/b$a;

.field final synthetic b:Ld/f;


# direct methods
.method public constructor <init>(Ld/f;Lh/b$a;)V
    .registers 3

    iput-object p1, p0, Ld/f$g;->b:Ld/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld/f$g;->a:Lh/b$a;

    return-void
.end method


# virtual methods
.method public a(Lh/b;Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Ld/f$g;->a:Lh/b$a;

    invoke-interface {v0, p1, p2}, Lh/b$a;->a(Lh/b;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(Lh/b;Landroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Ld/f$g;->a:Lh/b$a;

    invoke-interface {v0, p1, p2}, Lh/b$a;->b(Lh/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public c(Lh/b;Landroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Ld/f$g;->b:Ld/f;

    iget-object v0, v0, Ld/f;->z:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/h0;->E(Landroid/view/View;)V

    iget-object v0, p0, Ld/f$g;->a:Lh/b$a;

    invoke-interface {v0, p1, p2}, Lh/b$a;->c(Lh/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public d(Lh/b;)V
    .registers 4

    iget-object v0, p0, Ld/f$g;->a:Lh/b$a;

    invoke-interface {v0, p1}, Lh/b$a;->d(Lh/b;)V

    iget-object p1, p0, Ld/f$g;->b:Ld/f;

    iget-object v0, p1, Ld/f;->u:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_18

    iget-object p1, p1, Ld/f;->j:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ld/f$g;->b:Ld/f;

    iget-object v0, v0, Ld/f;->v:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_18
    iget-object p1, p0, Ld/f$g;->b:Ld/f;

    iget-object v0, p1, Ld/f;->t:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Ld/f;->V()V

    iget-object p1, p0, Ld/f$g;->b:Ld/f;

    iget-object v0, p1, Ld/f;->t:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Landroidx/core/view/h0;->b(Landroid/view/View;)Landroidx/core/view/i1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/i1;->b(F)Landroidx/core/view/i1;

    move-result-object v0

    iput-object v0, p1, Ld/f;->w:Landroidx/core/view/i1;

    iget-object p1, p0, Ld/f$g;->b:Ld/f;

    iget-object p1, p1, Ld/f;->w:Landroidx/core/view/i1;

    new-instance v0, Ld/f$g$a;

    invoke-direct {v0, p0}, Ld/f$g$a;-><init>(Ld/f$g;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/i1;->h(Landroidx/core/view/j1;)Landroidx/core/view/i1;

    :cond_3c
    iget-object p1, p0, Ld/f$g;->b:Ld/f;

    iget-object v0, p1, Ld/f;->l:Ld/c;

    if-eqz v0, :cond_47

    iget-object p1, p1, Ld/f;->s:Lh/b;

    invoke-interface {v0, p1}, Ld/c;->V(Lh/b;)V

    :cond_47
    iget-object p1, p0, Ld/f$g;->b:Ld/f;

    const/4 v0, 0x0

    iput-object v0, p1, Ld/f;->s:Lh/b;

    iget-object p1, p1, Ld/f;->z:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/h0;->E(Landroid/view/View;)V

    return-void
.end method
