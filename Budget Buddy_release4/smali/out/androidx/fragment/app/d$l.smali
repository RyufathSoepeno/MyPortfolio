.class Landroidx/fragment/app/d$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation


# instance fields
.field private final a:Landroidx/fragment/app/m0$e;

.field private final b:Landroidx/core/os/e;


# direct methods
.method constructor <init>(Landroidx/fragment/app/m0$e;Landroidx/core/os/e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/d$l;->a:Landroidx/fragment/app/m0$e;

    iput-object p2, p0, Landroidx/fragment/app/d$l;->b:Landroidx/core/os/e;

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/d$l;->a:Landroidx/fragment/app/m0$e;

    iget-object v1, p0, Landroidx/fragment/app/d$l;->b:Landroidx/core/os/e;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/m0$e;->d(Landroidx/core/os/e;)V

    return-void
.end method

.method b()Landroidx/fragment/app/m0$e;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/d$l;->a:Landroidx/fragment/app/m0$e;

    return-object v0
.end method

.method c()Landroidx/core/os/e;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/d$l;->b:Landroidx/core/os/e;

    return-object v0
.end method

.method d()Z
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/d$l;->a:Landroidx/fragment/app/m0$e;

    invoke-virtual {v0}, Landroidx/fragment/app/m0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    invoke-static {v0}, Landroidx/fragment/app/m0$e$c;->c(Landroid/view/View;)Landroidx/fragment/app/m0$e$c;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/d$l;->a:Landroidx/fragment/app/m0$e;

    invoke-virtual {v1}, Landroidx/fragment/app/m0$e;->e()Landroidx/fragment/app/m0$e$c;

    move-result-object v1

    if-eq v0, v1, :cond_1d

    sget-object v2, Landroidx/fragment/app/m0$e$c;->f:Landroidx/fragment/app/m0$e$c;

    if-eq v0, v2, :cond_1b

    if-eq v1, v2, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    return v0
.end method
