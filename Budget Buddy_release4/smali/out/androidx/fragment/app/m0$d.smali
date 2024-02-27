.class Landroidx/fragment/app/m0$d;
.super Landroidx/fragment/app/m0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final h:Landroidx/fragment/app/e0;


# direct methods
.method constructor <init>(Landroidx/fragment/app/m0$e$c;Landroidx/fragment/app/m0$e$b;Landroidx/fragment/app/e0;Landroidx/core/os/e;)V
    .registers 6

    invoke-virtual {p3}, Landroidx/fragment/app/e0;->k()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Landroidx/fragment/app/m0$e;-><init>(Landroidx/fragment/app/m0$e$c;Landroidx/fragment/app/m0$e$b;Landroidx/fragment/app/Fragment;Landroidx/core/os/e;)V

    iput-object p3, p0, Landroidx/fragment/app/m0$d;->h:Landroidx/fragment/app/e0;

    return-void
.end method


# virtual methods
.method public c()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/m0$e;->c()V

    iget-object v0, p0, Landroidx/fragment/app/m0$d;->h:Landroidx/fragment/app/e0;

    invoke-virtual {v0}, Landroidx/fragment/app/e0;->m()V

    return-void
.end method

.method l()V
    .registers 7

    invoke-virtual {p0}, Landroidx/fragment/app/m0$e;->g()Landroidx/fragment/app/m0$e$b;

    move-result-object v0

    sget-object v1, Landroidx/fragment/app/m0$e$b;->f:Landroidx/fragment/app/m0$e$b;

    const-string v2, " for Fragment "

    const-string v3, "FragmentManager"

    const/4 v4, 0x2

    if-ne v0, v1, :cond_6f

    iget-object v0, p0, Landroidx/fragment/app/m0$d;->h:Landroidx/fragment/app/e0;

    invoke-virtual {v0}, Landroidx/fragment/app/e0;->k()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->U1(Landroid/view/View;)V

    invoke-static {v4}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v4

    if-eqz v4, :cond_3e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestFocus: Saved focused view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    invoke-virtual {p0}, Landroidx/fragment/app/m0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->O1()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_55

    iget-object v2, p0, Landroidx/fragment/app/m0$d;->h:Landroidx/fragment/app/e0;

    invoke-virtual {v2}, Landroidx/fragment/app/e0;->b()V

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_55
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_67

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_67

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_67
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->k0()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_b0

    :cond_6f
    invoke-virtual {p0}, Landroidx/fragment/app/m0$e;->g()Landroidx/fragment/app/m0$e$b;

    move-result-object v0

    sget-object v1, Landroidx/fragment/app/m0$e$b;->g:Landroidx/fragment/app/m0$e$b;

    if-ne v0, v1, :cond_b0

    iget-object v0, p0, Landroidx/fragment/app/m0$d;->h:Landroidx/fragment/app/e0;

    invoke-virtual {v0}, Landroidx/fragment/app/e0;->k()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->O1()Landroid/view/View;

    move-result-object v1

    invoke-static {v4}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v4

    if-eqz v4, :cond_ad

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing focus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " on view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    :cond_b0
    :goto_b0
    return-void
.end method
