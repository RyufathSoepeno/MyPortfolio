.class Li/c$a;
.super Landroidx/core/view/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final d:Landroid/view/ActionProvider;

.field final synthetic e:Li/c;


# direct methods
.method constructor <init>(Li/c;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .registers 4

    iput-object p1, p0, Li/c$a;->e:Li/c;

    invoke-direct {p0, p2}, Landroidx/core/view/b;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Li/c$a;->d:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Li/c$a;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public c()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Li/c$a;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Li/c$a;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    return v0
.end method

.method public f(Landroid/view/SubMenu;)V
    .registers 4

    iget-object v0, p0, Li/c$a;->d:Landroid/view/ActionProvider;

    iget-object v1, p0, Li/c$a;->e:Li/c;

    invoke-virtual {v1, p1}, Li/b;->d(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    return-void
.end method