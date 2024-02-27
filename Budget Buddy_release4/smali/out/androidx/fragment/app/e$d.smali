.class Landroidx/fragment/app/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/o<",
        "Landroidx/lifecycle/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/e;


# direct methods
.method constructor <init>(Landroidx/fragment/app/e;)V
    .registers 2

    iput-object p1, p0, Landroidx/fragment/app/e$d;->a:Landroidx/fragment/app/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroidx/lifecycle/i;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/e$d;->b(Landroidx/lifecycle/i;)V

    return-void
.end method

.method public b(Landroidx/lifecycle/i;)V
    .registers 4

    if-eqz p1, :cond_5b

    iget-object p1, p0, Landroidx/fragment/app/e$d;->a:Landroidx/fragment/app/e;

    invoke-static {p1}, Landroidx/fragment/app/e;->e2(Landroidx/fragment/app/e;)Z

    move-result p1

    if-eqz p1, :cond_5b

    iget-object p1, p0, Landroidx/fragment/app/e$d;->a:Landroidx/fragment/app/e;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->O1()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_53

    iget-object v0, p0, Landroidx/fragment/app/e$d;->a:Landroidx/fragment/app/e;

    invoke-static {v0}, Landroidx/fragment/app/e;->c2(Landroidx/fragment/app/e;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5b

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialogFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " setting the content view on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/e$d;->a:Landroidx/fragment/app/e;

    invoke-static {v1}, Landroidx/fragment/app/e;->c2(Landroidx/fragment/app/e;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    iget-object v0, p0, Landroidx/fragment/app/e$d;->a:Landroidx/fragment/app/e;

    invoke-static {v0}, Landroidx/fragment/app/e;->c2(Landroidx/fragment/app/e;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_5b

    :cond_53
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5b
    :goto_5b
    return-void
.end method
