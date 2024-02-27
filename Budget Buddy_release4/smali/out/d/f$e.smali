.class Ld/f$e;
.super Landroidx/core/view/k1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/f;->G0(Lh/b$a;)Lh/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/f;


# direct methods
.method constructor <init>(Ld/f;)V
    .registers 2

    iput-object p1, p0, Ld/f$e;->a:Ld/f;

    invoke-direct {p0}, Landroidx/core/view/k1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Ld/f$e;->a:Ld/f;

    iget-object p1, p1, Ld/f;->t:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Ld/f$e;->a:Ld/f;

    iget-object p1, p1, Ld/f;->w:Landroidx/core/view/i1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/i1;->h(Landroidx/core/view/j1;)Landroidx/core/view/i1;

    iget-object p1, p0, Ld/f$e;->a:Ld/f;

    iput-object v0, p1, Ld/f;->w:Landroidx/core/view/i1;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Ld/f$e;->a:Ld/f;

    iget-object p1, p1, Ld/f;->t:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Ld/f$e;->a:Ld/f;

    iget-object p1, p1, Ld/f;->t:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object p1, p0, Ld/f$e;->a:Ld/f;

    iget-object p1, p1, Ld/f;->t:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_2a

    iget-object p1, p0, Ld/f$e;->a:Ld/f;

    iget-object p1, p1, Ld/f;->t:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/h0;->E(Landroid/view/View;)V

    :cond_2a
    return-void
.end method
