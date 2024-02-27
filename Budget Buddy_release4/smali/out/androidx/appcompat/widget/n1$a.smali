.class Landroidx/appcompat/widget/n1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/n1;-><init>(Landroidx/appcompat/widget/Toolbar;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final e:Li/a;

.field final synthetic f:Landroidx/appcompat/widget/n1;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/n1;)V
    .registers 10

    iput-object p1, p0, Landroidx/appcompat/widget/n1$a;->f:Landroidx/appcompat/widget/n1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Li/a;

    iget-object v0, p1, Landroidx/appcompat/widget/n1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p1, Landroidx/appcompat/widget/n1;->i:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x102002c

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Li/a;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Landroidx/appcompat/widget/n1$a;->e:Li/a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Landroidx/appcompat/widget/n1$a;->f:Landroidx/appcompat/widget/n1;

    iget-object v0, p1, Landroidx/appcompat/widget/n1;->l:Landroid/view/Window$Callback;

    if-eqz v0, :cond_10

    iget-boolean p1, p1, Landroidx/appcompat/widget/n1;->m:Z

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    iget-object v1, p0, Landroidx/appcompat/widget/n1$a;->e:Li/a;

    invoke-interface {v0, p1, v1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_10
    return-void
.end method
