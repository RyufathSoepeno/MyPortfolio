.class Landroidx/fragment/app/Fragment$b;
.super Landroidx/fragment/app/Fragment$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 2

    iput-object p1, p0, Landroidx/fragment/app/Fragment$b;->a:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment$i;-><init>(Landroidx/fragment/app/Fragment$a;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment$b;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->a0:Ly/d;

    invoke-virtual {v0}, Ly/d;->c()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment$b;->a:Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/lifecycle/u;->c(Ly/e;)V

    return-void
.end method
