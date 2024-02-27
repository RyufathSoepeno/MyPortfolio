.class public abstract Landroidx/fragment/app/p;
.super Landroidx/fragment/app/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/l;"
    }
.end annotation


# instance fields
.field private final e:Landroid/app/Activity;

.field private final f:Landroid/content/Context;

.field private final g:Landroid/os/Handler;

.field private final h:I

.field final i:Landroidx/fragment/app/x;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 6

    invoke-direct {p0}, Landroidx/fragment/app/l;-><init>()V

    new-instance v0, Landroidx/fragment/app/y;

    invoke-direct {v0}, Landroidx/fragment/app/y;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/p;->i:Landroidx/fragment/app/x;

    iput-object p1, p0, Landroidx/fragment/app/p;->e:Landroid/app/Activity;

    const-string p1, "context == null"

    invoke-static {p2, p1}, Landroidx/core/util/d;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroidx/fragment/app/p;->f:Landroid/content/Context;

    const-string p1, "handler == null"

    invoke-static {p3, p1}, Landroidx/core/util/d;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Landroidx/fragment/app/p;->g:Landroid/os/Handler;

    iput p4, p0, Landroidx/fragment/app/p;->h:I

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/j;)V
    .registers 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroidx/fragment/app/p;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method public d(I)Landroid/view/View;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method f()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/p;->e:Landroid/app/Activity;

    return-object v0
.end method

.method g()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/p;->f:Landroid/content/Context;

    return-object v0
.end method

.method public h()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/p;->g:Landroid/os/Handler;

    return-object v0
.end method

.method public i(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public abstract k()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public l()Landroid/view/LayoutInflater;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/p;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public m(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5

    const/4 p1, -0x1

    if-ne p3, p1, :cond_9

    iget-object p1, p0, Landroidx/fragment/app/p;->f:Landroid/content/Context;

    invoke-static {p1, p2, p4}, Landroidx/core/content/a;->g(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p()V
    .registers 1

    return-void
.end method
