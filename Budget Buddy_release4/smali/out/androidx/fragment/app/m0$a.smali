.class Landroidx/fragment/app/m0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/m0;->a(Landroidx/fragment/app/m0$e$c;Landroidx/fragment/app/m0$e$b;Landroidx/fragment/app/e0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/fragment/app/m0$d;

.field final synthetic f:Landroidx/fragment/app/m0;


# direct methods
.method constructor <init>(Landroidx/fragment/app/m0;Landroidx/fragment/app/m0$d;)V
    .registers 3

    iput-object p1, p0, Landroidx/fragment/app/m0$a;->f:Landroidx/fragment/app/m0;

    iput-object p2, p0, Landroidx/fragment/app/m0$a;->e:Landroidx/fragment/app/m0$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/m0$a;->f:Landroidx/fragment/app/m0;

    iget-object v0, v0, Landroidx/fragment/app/m0;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/m0$a;->e:Landroidx/fragment/app/m0$d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroidx/fragment/app/m0$a;->e:Landroidx/fragment/app/m0$d;

    invoke-virtual {v0}, Landroidx/fragment/app/m0$e;->e()Landroidx/fragment/app/m0$e$c;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/m0$a;->e:Landroidx/fragment/app/m0$d;

    invoke-virtual {v1}, Landroidx/fragment/app/m0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/m0$e$c;->a(Landroid/view/View;)V

    :cond_1d
    return-void
.end method