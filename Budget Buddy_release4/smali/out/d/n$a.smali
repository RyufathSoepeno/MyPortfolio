.class Ld/n$a;
.super Landroidx/core/view/k1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/n;


# direct methods
.method constructor <init>(Ld/n;)V
    .registers 2

    iput-object p1, p0, Ld/n$a;->a:Ld/n;

    invoke-direct {p0}, Landroidx/core/view/k1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Ld/n$a;->a:Ld/n;

    iget-boolean v0, p1, Ld/n;->t:Z

    if-eqz v0, :cond_15

    iget-object p1, p1, Ld/n;->h:Landroid/view/View;

    if-eqz p1, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Ld/n$a;->a:Ld/n;

    iget-object p1, p1, Ld/n;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_15
    iget-object p1, p0, Ld/n$a;->a:Ld/n;

    iget-object p1, p1, Ld/n;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object p1, p0, Ld/n$a;->a:Ld/n;

    iget-object p1, p1, Ld/n;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object p1, p0, Ld/n$a;->a:Ld/n;

    const/4 v0, 0x0

    iput-object v0, p1, Ld/n;->y:Lh/h;

    invoke-virtual {p1}, Ld/n;->x()V

    iget-object p1, p0, Ld/n$a;->a:Ld/n;

    iget-object p1, p1, Ld/n;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_37

    invoke-static {p1}, Landroidx/core/view/h0;->E(Landroid/view/View;)V

    :cond_37
    return-void
.end method
