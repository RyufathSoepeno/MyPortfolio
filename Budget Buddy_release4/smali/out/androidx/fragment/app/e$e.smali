.class Landroidx/fragment/app/e$e;
.super Landroidx/fragment/app/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/e;->B()Landroidx/fragment/app/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/fragment/app/l;

.field final synthetic f:Landroidx/fragment/app/e;


# direct methods
.method constructor <init>(Landroidx/fragment/app/e;Landroidx/fragment/app/l;)V
    .registers 3

    iput-object p1, p0, Landroidx/fragment/app/e$e;->f:Landroidx/fragment/app/e;

    iput-object p2, p0, Landroidx/fragment/app/e$e;->e:Landroidx/fragment/app/l;

    invoke-direct {p0}, Landroidx/fragment/app/l;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/e$e;->e:Landroidx/fragment/app/l;

    invoke-virtual {v0}, Landroidx/fragment/app/l;->e()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroidx/fragment/app/e$e;->e:Landroidx/fragment/app/l;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/l;->d(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_f
    iget-object v0, p0, Landroidx/fragment/app/e$e;->f:Landroidx/fragment/app/e;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/e;->j2(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/e$e;->e:Landroidx/fragment/app/l;

    invoke-virtual {v0}, Landroidx/fragment/app/l;->e()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroidx/fragment/app/e$e;->f:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->k2()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method
