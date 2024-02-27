.class Li/c$b;
.super Li/c$a;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private f:Landroidx/core/view/b$b;

.field final synthetic g:Li/c;


# direct methods
.method constructor <init>(Li/c;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .registers 4

    iput-object p1, p0, Li/c$b;->g:Li/c;

    invoke-direct {p0, p1, p2, p3}, Li/c$a;-><init>(Li/c;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 2

    iget-object v0, p0, Li/c$a;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public d(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Li/c$a;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public g()Z
    .registers 2

    iget-object v0, p0, Li/c$a;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public j(Landroidx/core/view/b$b;)V
    .registers 3

    iput-object p1, p0, Li/c$b;->f:Landroidx/core/view/b$b;

    iget-object v0, p0, Li/c$a;->d:Landroid/view/ActionProvider;

    if-eqz p1, :cond_8

    move-object p1, p0

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method

.method public onActionProviderVisibilityChanged(Z)V
    .registers 3

    iget-object v0, p0, Li/c$b;->f:Landroidx/core/view/b$b;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroidx/core/view/b$b;->onActionProviderVisibilityChanged(Z)V

    :cond_7
    return-void
.end method
